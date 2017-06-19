# Installer files for *Cherish* software

## Requirements

* Windows platform.
* Qt Installer Framework (can be installed through Qt Maintenance Tool).

## Installer generation

First, make sure the `packages` contains the latest archive of the software distribution. Use `archivegen` to create and place the `*.7z` file, e.g.:

```
archivegen.exe cheris.7z cherish_directory
```

The archive file has to be placed in `\packages\...\data` folder.

Second, once the *cherish* software is updated and places in the `*.7z` file, use Windows command line (considering the Qt Installer Framework's `\bin` folder is in the `PATH`) and type:

```
binarycreator.exe -c config\config.xml -p packages CherishInstaller.exe
```

Third, the generated `CherishInstaller.exe` can be now delivered to the end user. 

## Runngin the installer

If you are using anti-virus like Avast, it will likely not allow to run the installer since the program does not have a recognized certificate. You may chose to disable it for the installation time.

