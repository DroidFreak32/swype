# Swype 3.2.4.3020400.50699 Black Edition

### How to build this mod?

1. Install APKtool & Android SDK
2. Build unsigned APK using apktool:
```bash
apktool b swype_last -o Swype_blacked.apk
```
3. Zipalign Unsigned APK
4. apksign the zipaligned apk.  
4.1. (optional) Use android release keys [platform.pk8](https://github.com/LineageOS/android_build/blob/lineage-19.1/target/product/security/platform.pk8) and [platform.x509.pem](https://github.com/LineageOS/android_build/blob/lineage-19.1/target/product/security/platform.x509.pem)
  
Script I use for steps 3 and 4 `sign_apk.sh Swype-blacked.apk`:
```bash
#!/bin/sh

BUILD_TOOLS=~/Android/Sdk/build-tools/31.0.0/

if [ -z "$1" ]; then
        echo "usage: $0 your-app.apk"
        exit 1
fi

OUT="$1"
OUT_ALIGNED="aligned-$OUT"
OUT_SIGNED="signed-$OUT"

# Debug mode
set -x

"$BUILD_TOOLS"/zipalign -p -v 4 "$OUT" "$OUT_ALIGNED"

# Verify
"$BUILD_TOOLS"/zipalign -vc 4 "$OUT_ALIGNED"

# Sign
"$BUILD_TOOLS"/apksigner sign --key platform.pk8 --cert platform.x509.pem --out "$OUT_SIGNED" "$OUT_ALIGNED"
#"$BUILD_TOOLS"/apksigner sign -ks ~/my-release-key.keystore --out "$OUT_SIGNED" "$OUT_ALIGNED"

# Cleanup
rm -fv "$OUT_ALIGNED"

echo == Done: $OUT_ALIGNED
```

### Some commands for reference:
```bash

grep '; fully-qualified' emoji-test-5.0.txt | awk -F ';' '{print $1}' | sort
```

## Installing custom themes - **Needs ROOT**
Credit: [4PDA post](https://4pda.to/forum/index.php?showtopic=150358&view=findpost&p=77045845)

Enter adb shell as root / termux root shell

 - Find the UID and GID of the swype app and note it down:  
`ls -al /data/data/com.nuance.swype.dtc`
 - Extract all the files from the `com.nuance.swype.dtc_themes.txz` release into the above path
 - Set the correct ownership:
```
chown $UID:$GID -hR /data/data/com.nuance.swype.dtc/files /data/data/com.nuance.swype.dtc/shared_prefs
```
 - Open `/data/data/com.nuance.swype.dtc/shared_prefs/com.nuance.swype.dtc_preferences.xml`
 - Insert all the lines of `Inventory.txt` in this file before a line that looks like:
`<string name="downloaded.theme">current theme name</string> `
 - Edit `current theme name` with the **Name** of the theme, ex. `nuance.theme.sand`
 - Edit `<string name="swype.theme">/data/user/0/com.nuance.swype.dtc/files/themes/name of the theme folder/name of the apk file.apk</string>`
 - Kill and restart swype
