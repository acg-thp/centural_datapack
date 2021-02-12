import 'package:objd/core.dart';
import 'package:logger/logger.dart';
import 'dart:cli';
import 'dart:io' as dart show File;

main(List<String> args) {
  return createProject(
      Project(name: "centural", target: "./", generate: core()), args);
}

Pack import_project(arguments) {
  if (arguments["name"] != null) {
    final String load = waitFor(
        dart.File('./data/${arguments["name"]}/functions/load.mcfunction')
            .readAsString());
    final String tick = waitFor(
        dart.File('./data/${arguments["name"]}/functions/tick.mcfunction')
            .readAsString());

    if (arguments["files"] != null) {
      List<File> pack_list = [];
      for (var file_name in arguments["files"]) {
        print(file_name);
        String script_as_string = waitFor(dart.File(
                './data/${arguments["name"]}/functions/${file_name}.mcfunction')
            .readAsString());
        pack_list.add(File('${file_name}',
            child: For.of([CommandList.str(script_as_string)])));
      }
      print(arguments["name"]);
      return Pack(name: arguments["name"], files: pack_list);
    } else {
      return Pack(
          name: arguments["name"],
          load: File('load', child: For.of([CommandList.str(load)])),
          main: File('tick', child: For.of([CommandList.str(tick)])));
    }
  } else if (arguments["paths"] != null) {
    return Pack(
        name: "core",
        load: File('load', child: For.of([CommandList.str("")])),
        main: File('tick', child: For.of([CommandList.str("")])));
  } else {
    return Pack(
        name: "error",
        main: File('tick', child: For.of([CommandList.str("/say error")])));
  }
}

class core extends Widget {
  @override
  Widget generate(Context context) {
    return For.of([
      import_project({"name": "core"}),
      import_project({
        "name": "fairy",
        "files": ["load", "tick"]
      }),
      import_project({
        "name": "elevator",
        "files": ["load", "tick"]
      }),
      import_project({"name": "music", "tick": false, "load": false})
    ]);
  }
}
