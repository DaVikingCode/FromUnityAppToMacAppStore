#!/bin/sh
#!/usr/bin/env bash
#$ -N $2

DIR="$( cd "$( dirname "$0" )" && pwd )"

cp $DIR/Info.plist $DIR/"$1".app/Contents
cp $DIR/PlayerIcon.icns $DIR/"$1".app/Contents/Resources

chmod -R 777 $DIR/"$1".app/

codesign -f -v --deep -s "$2" --entitlements $DIR/entitlements.plist $DIR/"$1".app

codesign --display --entitlements - $DIR/"$1".app

productbuild --component $DIR/"$1".app /Applications --sign "$3" $DIR/"$1".pkg

codesign -v --verify $DIR/"$1".app

exit 0

#sh FromUnityAppToMacAppStore.sh "ABlindLegend" "3rd Party Mac Developer Application: DaVikingCode (XXXXXXXXX)" "3rd Party Mac Developer Installer: DaVikingCode (XXXXXXXXX)