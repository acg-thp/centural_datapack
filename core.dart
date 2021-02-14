import 'dart:io';

import 'package:objd/core.dart' hide Context;
import 'package:objd/core.dart' as objd show Context;
import 'package:logger/logger.dart';
import 'dart:cli';
import 'dart:io' as dart show File;
import 'package:path/path.dart';

main(List<String> args) {
  return createProject(
      Project(name: "centural", target: "./", generate: project_main()), args);
}

Pack core(String core_name, String core_load_name, String core_tick_name) {
  return Pack(
      name: core_name,
      load: core_load(core_load_name),
      main: core_tick(core_tick_name));
}

File core_load(String core_name) {
  return File('load',
      child: CommandList.str(waitFor(
          dart.File('./data/core/functions/load.mcfunction').readAsString())));
}

File core_tick(String core_name) {
  return File('tick',
      child: CommandList.str(waitFor(
          dart.File('./data/core/functions/tick.mcfunction').readAsString())));
}

bool project_map_validator(Map project_map) {
  return project_map.containsKey("core");
}

bool project_map_has_plugins(Map project_map) {
  return project_map.containsKey("plugins");
}

File load_file(String project_name, String file_name) {
  return File(file_name,
      child: CommandList.str(waitFor(
          dart.File('./data/${project_name}/functions/${file_name}.mcfunction')
              .readAsString())));
}

List<File> load_files(String project_name, Map files_map) {
  List<File> file_list = [];
  files_map.forEach((function_file, function_details) {
    file_list.add(load_file(project_name, function_file));
  });
  return file_list;
}

Pack load_plugin(String plugin_name, Map plugin_details) {
  return Pack(
      name: plugin_name,
      files: load_files(plugin_name, plugin_details["files"]));
}

bool is_full_load(Map plugin_details) {
  return plugin_details.containsKey("full");
}

Map get_files_map(String plugin_name) {}

Pack full_load(String plugin_name, Map plugin_details) {
  Map files_map = {};
  load_loop(String path) {
    //print(path);
    Directory dir = new Directory(path);
    List<FileSystemEntity> files = dir.listSync();
    for (FileSystemEntity file in files) {
      FileStat file_stat = file.statSync();
      if (file_stat.type.toString() == "directory") {
        load_loop(file.path);
      } else if (file_stat.type.toString() == "file") {
        files_map.addAll({
          "${file.path.substring(file.path.indexOf("/functions/") + 11, file.path.length).replaceAll("\\", "/").replaceAll(".mcfunction", "")}":
              {} //TODO this is ugly and doesnt follow standard of rest of project
        });
      }
    }
  }

  load_loop('./data/${plugin_name}/functions/');

  return Pack(name: plugin_name, files: load_files(plugin_name, files_map));
}

For load_plugins(Map plugin_map) {
  List<Pack> pack_list = [];

  plugin_map.forEach((plugin_name, plugin_details) {
    pack_list.add(is_full_load(plugin_details)
        ? full_load(plugin_name, plugin_details)
        : load_plugin(plugin_name, plugin_details));
  });

  return For.of(pack_list);
}

For generate_project_from_map(Map project_map) {
  return project_map_validator(project_map)
      ? For.of([
          core(project_map["core"], "load", "tick"),
          load_plugins(project_map["plugins"])
        ])
      : throw ("project_validator failed");
}

class project_main extends Widget {
  @override
  Widget generate(objd.Context context) {
    return generate_project_from_map({
      "core": "core",
      "plugins": {
        "core": {"full": {}},
        "fairy": {
          "files": {"load": {}, "tick": {}}
        },
        "elevator": {
          "files": {"load": {}, "tick": {}}
        },
        //"music": {"full": {}},
        "city": {"full": {}}
      }
    });
  }
}
