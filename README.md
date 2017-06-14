# Installer files for *Cherish* software

## Requirements

* Windows platform.
* Qt Installer Framework (can be installed through Qt Maintenance Tool).

## Installer generation

Using Windows command line, considering the Qt Installer Framework's `\bin` folder is in the `PATH`, type:

```
binarycreator.exe -c config\config.xml -p packages CherishInstaller.exe
```

The generated `CherishInstaller.exe` can be now delivered to the end user. 
