import 'package:objd/core.dart';
import 'dart:cli';
import 'dart:io' as dart show File;

main(List<String> args) {
  @Wdg
  Widget helloWorld() => Log('Hello World!');

  List<File> import_project(name) {
    final String load = waitFor(
        dart.File('./data/${name}/functions/load.mcfunction').readAsString());
    final String tick = waitFor(
        dart.File('./data/${name}/functions/tick.mcfunction').readAsString());

    return [
      File('load', child: For.of([CommandList.str(load)])),
      File('tick', child: For.of([CommandList.str(tick)]))
    ];
  }

  @Wdg
  Widget helloName(String name, {String lastname = '', Context context}) =>
      For.of([
        Comment(
            'This was generated by HelloName on version ${context.version}'),
        Log('Hello $name $lastname!'),
      ]);

  @Func()
  final Widget load = helloWorld();

  @Func(
    name: 'main',
    path: 'folder',
    execute: false,
    create: true,
  )
  final Widget main_widget = Comment('main file');

  @Pck(name: 'centural', main: 'tick', load: 'load')
  final List<File> myPack = import_project("core");

  @Pck(name: 'centural', main: 'tick', load: 'load')
  final List<File> myPack2 = import_project("elevator");

  @Prj(
    name: 'My awesome Datapack',
    target: './datapacks/',
    version: 17,
    description: 'A simple dp for demonstrating annotations',
  )
  final myProject = Project(name: "centural", target: "./");

  return myProject;
}
