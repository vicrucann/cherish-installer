# Installer files for *Cherish* software

## Requirements

* Windows platform.
* Qt Installer Framework (can be installed through Qt Maintenance Tool).

## Installer generation

First, make sure the `packages` contains the latest archive of the software distribution. Use `archivegen` to create and place the `*.7z` file, e.g.:

```
archivegen cherish.7z cherish_directory
```

Second, once the *cherish* software is updated and places in the `*.7z` file, use Windows command line (considering the Qt Installer Framework's `\bin` folder is in the `PATH`) and type:

```
binarycreator.exe -c config\config.xml -p packages CherishInstaller.exe
```

Third, the generated `CherishInstaller.exe` can be now delivered to the end user. 

