A dart app to incremenent the build number of a version line in a specified file.<br/>
Works only for Flutter/Dart version number pattern: major.minor.patch+build<br/>
Only increments the build, the rest is under manual control;<br/>
ie, mod your pubspec when you are doing a release.

Runs as a shell scripted git pre-commit hook.

**Example**
1. Create a bin directory in your project containing the versioneer.dart file from this project. **
2. Create a .git/hooks/pre-commit script file with the code below and *tbd: make it executable (chmod).*
3. Commit something and let me know how it goes.
```
#!/bin/sh
#^^^^^^^^ Ignored by Windows
version_file=pubspec.yaml
echo Running Versioneer with version file: $version_file
dart run bin/versioneer.dart $version_file
git add $version_file
```
Note: /hooks is a hidden, no-stage git directory
*(so, I'm not checking in the above example script)*

** Alternatively, feel free to clone this project and play around.

**To Dos**
- Versioneer has only been tested to update it's own pubspec.
- Versioneer has not been tested on iOS, yet.
- Add comments *( but only if someone really needs them :)*

**Disclaimers**
- This work comes with no warranties, express or implied...
- Constructive comments are welcome; but corrections, additions...<br/>
  are at the sole discretion of me and those willing to contribute.
- I am old, cranky and new to Git, Dart, iOS, VS Code; so EMIA.


Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).
