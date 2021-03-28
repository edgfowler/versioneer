A dart app to incremenent the version in a specified file.

Designed to be run as a git pre-commit hook shell script:

_Example_
1. Create a bin directory in your project containing the
   versioneer.dart file from this project. **
2. Add below content to .git/hooks/pre-commit
3. Commit something and let me know how it goes.
--------------------------------------------------------
#!/bin/sh
#^^^^^^^^ Ignored by Windows
version_file=pubspec.yaml
echo Running Versioneer with version file: $version_file
dart run bin/versioneer.dart $version_file
git add $version_file
--------------------------------------------------------
Note: /hooks is a hidden, no-stage git directory
*(so, I'm not checking in the above example script)*

** Alternatively, feel free to clone this project and play around.

_To Dos_
- Versioneer has only been tested to update it's own pubspec.
- Versioneer has not been tested on iOS, yet.
- Add comments (but only if someone really needs them :)

_Disclaimers_
- This work comes with no warranties, express or implied...
- Constructive comments are welcome; but corrections, additions...
  are at the sole discretion of me and those willing to contribute.
- I am old, cranky and new to Git, Dart, iOS, VS Code; so EMIA.


Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).
