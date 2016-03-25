FromUnityAppToMacAppStore
=========================

A quick script for going on the Mac App Store from your Unity Application.

Before releasing the *.app*, be sure in Unity you toggled `UseMacAppStoreValidation` in the **PlayerSettings**!

Then we need to generate an *icns* file. Replace files inside *myicon.iconset* folder and run `iconutil -c icns -o Icon.icns myicon.iconset` to create your icon.

Before running the script, be sure to add `<key>LSApplicationCategoryType</key>` in your *Info.plist* file, like we did (don't forget to change properties and check the full category list [here](https://developer.apple.com/library/ios/documentation/General/Reference/InfoPlistKeyReference/Articles/LaunchServicesKeys.html#//apple_ref/doc/uid/TP40009250-SW8).

Now you can run the script:
`sh FromUnityToMacAppStore.sh "ABlindLegend" "3rd Party Mac Developer Application: DaVikingCode (XXXXXXXXX)" "3rd Party Mac Developer Installer: DaVikingCode (XXXXXXXXX)`
