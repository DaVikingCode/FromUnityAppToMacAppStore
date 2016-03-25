FromUnityAppToMacAppStore
=========================

A quick script for going on the Mac App Store from your Unity Application.

Before running the script, be sure to add `<key>LSApplicationCategoryType</key>` in your *Info.plist* file, like we did (check the full list [here](https://developer.apple.com/library/ios/documentation/General/Reference/InfoPlistKeyReference/Articles/LaunchServicesKeys.html#//apple_ref/doc/uid/TP40009250-SW8).

You will also have to generate an *icns* file. Replace files inside *myicon.iconset* folder and run `iconutil -c icns -o Icon.icns myicon.iconset` to create your icon.

Now you can run the script:
`sh FromUnityToMacAppStore.sh "ABlindLegend" "3rd Party Mac Developer Application: DaVikingCode (XXXXXXXXX)" "3rd Party Mac Developer Installer: DaVikingCode (XXXXXXXXX)`
