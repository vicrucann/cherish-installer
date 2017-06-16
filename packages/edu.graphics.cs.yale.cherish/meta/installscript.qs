function Component()
{

}

// here we are creating the operation chain which will be processed at the real installation part later
Component.prototype.createOperations = function()
{
    // call default implementation to actually install README.txt!
    component.createOperations();

    if (systemInfo.productType === "windows") {
        component.addOperation("CreateShortcut", "@TargetDir@/README.txt", "@StartMenuDir@/README.lnk",
            "workingDirectory=@TargetDir@", "iconPath=%SystemRoot%/system32/SHELL32.dll",
            "iconId=70");
        component.addOperation("CreateShortcut", "@TargetDir@/cherish/cherish.exe", "@StartMenuDir@/Cherish.lnk",
            "workingDirectory=@TargetDir@", "iconPath=@TargetDir@/cherish/Icons.dll", 
            "iconId=0");
        component.addOperation("CreateShortcut", "@TargetDir@/maintenancetool.exe", "@StartMenuDir@/MaintenanceTool.lnk",
            "workingDirectory=@TargetDir@", "iconPath=%SystemRoot%/system32/SHELL32.dll", 
            "iconId=162");

        // osgt file association
        //var iconId = 1;
        //var cherishPath = "@TargetDir@/cherish/cherish.exe";
        //var cherishFile = "osgt";
        //component.addOperation("RegisterFileType", cherishFile, cherishPath,
        //                       "Cherish file type", "text/plain", cherishPath + "," + iconId,
        //                       "ProgId=QtProject.QtInstallerFramework." + cherishFile);
    }
}