# Papara iOS


Built using up to date version of Xcode and Swift

 - **Using Dark Mode
 - **Localization
 - **Programmatically coding for UI
 - **Tests
 - **Support iOS 11.0>
 
### Describing dependencies

 - **Papara     - Main Project for application
 - **Pods       - Cocoapods managing
 - **Common     - Resources, constants and language managers
 - **UIComp     - UI extensions and some custom views
 - **Networking - All requests, models and network base
 - **Theme      - UIColor managing for application theme

### What we need to do before run the poject ?
 1. Make sure you have the lastes version of macOS and Xcode installed
 1. Clone this repo
 1. Open terminal and navigate to project folder (example: cd Desktop/Papara)
 1. Run `pod install` (make sure your have latest [Cocoapods](https://guides.cocoapods.org/using/getting-started.html#installation)  installed), pods will be installed and new Xcode workspace file will be created
 1. If you have any trouble with Apple Silicon(M1 processors) follow this two steps
  1. Run `sudo arch -x86_64 gem install ffi`
  1. Run `arch -x86_64 pod install`
 1. If you are working with Apple Silicon(M1 processors) right click Xcode and put a check mark on 'Open using Rosetta'
 1. Open `Papara.xcworkspace` and run the project on selected device or simulator

### Add unique Papara templates

 1. Open terminal and navigate to project folder (example: cd Desktop/Papara)
 1. Navigate to templates `cd Templates/Papara\ Template`
 1. Run `make install_templates`
 1. If you cannot see template files in templates close and open Xdode

### Fastlane installation

 1. Open terminal and navigate to project folder (example: cd Desktop/Papara)
 1. Run `sudo gem install fastlane` (If you have any trouble like ruby or etc. check [Fastlane](https://docs.fastlane.tools))
 1. After install run `sudo fastlane install_plugins`

### Releasing beta version to Firebase

 1. Open terminal and navigate to project folder (example: cd Desktop/Papara)
 1. Run `fastlane beta`
 
### Git standarts
 
 1. Name your branch 'feature/{task id} - your-branch-name
 1. Cannot merge the pull requests without task
 1. Readable and safe commits
 1. DRY coding
 
### Tips
 1. Shake and see all networking
 1. Download iOS 11 supported simulators to test small screen devices
 1. Check firebase in spots
 1. Do not forget developers are not only engineers, they are artists!
 
Papara, not a bank!
![Screenshot of Process Uploader](/Assets.xcassets/Logo/logo_splash.imageset/logo_splash.png)
