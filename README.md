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
