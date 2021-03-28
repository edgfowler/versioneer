import 'dart:io';

int main(var args) {
  try {
    var file = File(args[0]);
    var lines = file.readAsLinesSync();
    String oldVersionStr =
        lines.singleWhere((element) => element.startsWith('version:'));
    List<String> versionGrps = oldVersionStr.split('+');
    int oldBuildNbr = int.parse(versionGrps[1]);
    int newBuildNbr = oldBuildNbr + 1;
    String newVersionStr = versionGrps[0] + '+' + newBuildNbr.toString();
    var index = lines.indexOf(oldVersionStr);
    lines.removeAt(index);
    lines.insert(index, newVersionStr);
    String fileString = lines.join('\n');
    file.writeAsStringSync(fileString);
    return 0;
  } catch (e) {
    print(e);
    return 1;
  }
}
