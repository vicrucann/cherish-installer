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

## File association

Once *Cherish* is installed, it is possible to associate `*.osgt` files with the program. To do this, click with right mouse button on any `*.osgt` *Cherish*-generated file, and chose "Open with..."; in the menu locate `Cherish.exe` (by default it will be located in `C:\Users\vr267\cherish\cherish\Cherish.exe`) and press "Open". While the file will be open in *Cherish*, it will also make the file association, and now any `*.osgt` file can be open by the double-click action.

