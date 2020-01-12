import 'dart:io';

main(List<String> args) async {
  print("# title");

  var dir = new Directory('./src');
  List contents = dir.listSync(recursive: true);
  for (var fileOrDir in contents) {
    if (fileOrDir is File) {
      String filePath = fileOrDir.path;
      print("## ${filePath}");
      print('');
      for (String line in await new File(filePath).readAsLines()) {
        print("    ${line}");
      }
      print('');
    }
  }
}
