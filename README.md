# swype decompiling notes.

## Using Swype for OPPO `03ef5b79205fc4ced5ac43a3021f6cd6`
- Used charles proxy to monitor Swype Language traffic for Swype for OPPO
- Used Jadx GUI & APKTOOL to read through the decompiled app.
- Found URL being connected to is https://cdn-languages-az.swypeconnect.com/62314/9.10//1415911799-English.zip
- The OEM String is 62314 found here:

```java
package com.nuance.swypeconnect.p004ac;

/* renamed from: com.nuance.swypeconnect.ac.ACBuildConfigRuntime */
/* loaded from: classes.dex */
final class ACBuildConfigRuntime {
    public static final boolean ANONYMOUS_BUILD = false;
    public static final String APPKEY_STARTS = "SWYPE";
    public static final String BUILD_EXPIRATION = "";
    public static final String BUILD_PROPERTIES_FILTER_BLOCK = "";
    public static final String BUILD_PROPERTIES_FILTER_PRE_TOS = "";
    public static final String BUILD_TIMESTAMP = "20150130.081647";
    public static final boolean COLLECT_USER_PROPERTIES = true;
    public static final int DEFAULT_DELAY = 300;
    public static final String DEFAULT_LOG_LEVEL = "6";
    public static final String DEVELOPER_LOG_ENABLED = "false";
    public static final String LANGUAGE_DOWNLOAD_CLASS = "com.nuance.swypeconnect.ac.oem_62314.ACLanguageDownloadServiceNuance";
    public static final String LEGAL_DOCUMENTS_CLASS = "com.nuance.swypeconnect.ac.oem_62314.ACLegalDocumentsNuance";
    public static final int LIVING_LANGUAGE_MAX_EVENTS = 10000;
    public static final int LOCATION_DELAY = 1800000;
    public static final int LOCATION_DISTANCE = 1610;
    public static final String LOCATION_LEVEL = "2";
    public static final int MINUMUM_REFRESH_INTERVAL = 3600;
    public static final String OEM_ID = "62314";
    public static final boolean PACKAGE_UPDATE_ENABLED = true;
    public static final String REPORTING_HELPER_CLASS = "com.nuance.swypeconnect.ac.oem_62314.ACReportingLogHelperNuance";
    public static final String URL = "https://api-swype.swypeconnect.com/";
    public static final String VERSION = "3.3.0.33933";

    ACBuildConfigRuntime() {
    }
}
```

- 9.10 seems to be the ~~`CORE_VERSION` found at `com.nuance.swype.connect.Connect` Class:  
`private static final String CORE_VERSION = "9.10";`~~ XT9 version seen in Swype Help page

- `1415911799-English.zip` 1415911799 would probably be epoch time for `Thu Nov 13 20:49:59 UTC 2014`

- Assets folder have languagelist XMLs , not sure if they are referred to show up in the downloads page:
```xml
~/tmp/apktool/SwypeOppo
❯ bat assets/languagelist_supported.xml
───────┬─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
       │ File: assets/languagelist_supported.xml   <UTF-16BE>
───────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   1   │ <?xml version="1.0" encoding="utf-16"?>
   2   │ <InputMethods defaultLanguage="English" >
   3   │   <!-- This table is generated by build script. Do not modify -->
   4   │   <Language language='English'  enabled='true'/>
   5   │   <Language language='Afrikaans'  enabled='true'/>
   6   │   <Language language='Albanian'  enabled='true'/>
   7   │   <Language language='Arabic'  enabled='true'/>
   8   │   <Language language='Armenian'  enabled='true'/>
   9   │   <Language language='Azerbaijani'  enabled='true'/>
  10   │   <Language language='Basque'  enabled='true'/>
  11   │   <Language language='Bosnian'  enabled='true'/>
  12   │   <Language language='Bulgarian'  enabled='true'/>
  13   │   <Language language='Catalan'  enabled='true'/>
  14   │   <Language language='Chinese_CN'  enabled='true'/>
  15   │   <Language language='Chinese_HK'  enabled='true'/>
  16   │   <Language language='Chinese_TW'  enabled='true'/>
  17   │   <Language language='Croatian'  enabled='true'/>
  18   │   <Language language='Czech'  enabled='true'/>
  19   │   <Language language='Danish'  enabled='true'/>
  20   │   <Language language='Dutch'  enabled='true'/>
  21   │   <Language language='Dutch_BE'  enabled='true'/>
  22   │   <Language language='English_UK'  enabled='true'/>
  23   │   <Language language='Estonian'  enabled='true'/>
  24   │   <Language language='Farsi'  enabled='true'/>
  25   │   <Language language='Finnish'  enabled='true'/>
  26   │   <Language language='French'  enabled='true'/>
  27   │   <Language language='French_CA'  enabled='true'/>
  28   │   <Language language='French_CH'  enabled='true'/>
  29   │   <Language language='Galician'  enabled='true'/>
  30   │   <Language language='Georgian'  enabled='true'/>
  31   │   <Language language='German'  enabled='true'/>
  32   │   <Language language='Greek'  enabled='true'/>
  33   │   <Language language='Gujarati'  enabled='true'/>
  34   │   <Language language='Hebrew'  enabled='true'/>
  35   │   <Language language='Hindi'  enabled='true'/>
  36   │   <Language language='Hinglish'  enabled='true'/>
  37   │   <Language language='Hungarian'  enabled='true'/>
  38   │   <Language language='Icelandic'  enabled='true'/>
  39   │   <Language language='Indonesian'  enabled='true'/>
  40   │   <Language language='Irish'  enabled='true'/>
  41   │   <Language language='Italian'  enabled='true'/>
  42   │   <Language language='Japanese'  enabled='true'/>
  43   │   <Language language='Javanese'  enabled='true'/>
  44   │   <Language language='Kazakh'  enabled='true'/>
  45   │   <Language language='Korean'  enabled='true'/>
  46   │   <Language language='Latvian'  enabled='true'/>
  47   │   <Language language='Lithuanian'  enabled='true'/>
  48   │   <Language language='Malay'  enabled='true'/>
  49   │   <Language language='Malayalam'  enabled='true'/>
  50   │   <Language language='Marathi'  enabled='true'/>
  51   │   <Language language='Norwegian'  enabled='true'/>
  52   │   <Language language='Polish'  enabled='true'/>
  53   │   <Language language='Portuguese'  enabled='true'/>
  54   │   <Language language='Portuguese_PT'  enabled='true'/>
  55   │   <Language language='Romanian'  enabled='true'/>
  56   │   <Language language='Russian'  enabled='true'/>
  57   │   <Language language='Serbian'  enabled='true'/>
  58   │   <Language language='Sesotho'  enabled='true'/>
  59   │   <Language language='Slovak'  enabled='true'/>
  60   │   <Language language='Slovenian'  enabled='true'/>
  61   │   <Language language='Spanish'  enabled='true'/>
  62   │   <Language language='Sundanese'  enabled='true'/>
  63   │   <Language language='Swahili'  enabled='true'/>
  64   │   <Language language='Swedish'  enabled='true'/>
  65   │   <Language language='Tagalog'  enabled='true'/>
  66   │   <Language language='Tamil'  enabled='true'/>
  67   │   <Language language='Telugu'  enabled='true'/>
  68   │   <Language language='Thai'  enabled='true'/>
  69   │   <Language language='Turkish'  enabled='true'/>
  70   │   <Language language='Ukrainian'  enabled='true'/>
  71   │   <Language language='Urdu'  enabled='true'/>
  72   │   <Language language='Vietnamese'  enabled='true'/>
  73   │   <Language language='Xhosa'  enabled='true'/>
  74   │   <Language language='Zulu'  enabled='true'/>
  75   │   <Language language='Bengali'  enabled='true'/>
  76   │   <Language language='Khmer'  enabled='true'/>
  77   │   <Language language='Burmese_Zawgyi'  enabled='true'/>
  78   │   <Language language='Sinhala'  enabled='true'/>
  79   │   <Language language='Burmese'  enabled='true'/>
  80   │ </InputMethods>
───────┴─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

~/tmp/apktool/SwypeOppo
❯ bat assets/languagelist.xml
───────┬─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
       │ File: assets/languagelist.xml   <UTF-16LE>
───────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   1   │ <?xml version="1.0" encoding="utf-16"?>
   2   │ <InputMethods defaultLanguage="English" >
   3   │   <!-- This table is generated by build script. Do not modify -->
   4   │   <Language language='English'  enabled='true'/>
   5   │   <Language language='Vietnamese'  enabled='true'/>
   6   │   <Language language='Urdu'  enabled='true'/>
   7   │   <Language language='Turkish'  enabled='true'/>
   8   │   <Language language='Thai'  enabled='true'/>
   9   │   <Language language='Telugu'  enabled='true'/>
  10   │   <Language language='Tamil'  enabled='true'/>
  11   │   <Language language='Tagalog'  enabled='true'/>
  12   │   <Language language='Swahili'  enabled='true'/>
  13   │   <Language language='Sinhala'  enabled='true'/>
  14   │   <Language language='Malay'  enabled='true'/>
  15   │   <Language language='Indonesian'  enabled='true'/>
  16   │   <Language language='Hindi'  enabled='true'/>
  17   │   <Language language='Farsi'  enabled='true'/>
  18   │   <Language language='French'  enabled='true'/>
  19   │   <Language language='Arabic'  enabled='true'/>
  20   │   <Language language='Bengali'  enabled='true'/>
  21   │   <Language language='Chinese_CN'  enabled='true'/>
  22   │   <Language language='Chinese_TW'  enabled='true'/>
  23   │   <Language language='Burmese_Zawgyi'  enabled='true'/>
  24   │   <Language language='Spanish'  enabled='true'/>
  25   │ </InputMethods>
───────┴───────────────────
```
---

- Update 26/Jun/2022 - Thanks to reddit, the URL for the latest language packs are:
![SWYPE_CDN](./image.png?raw=true "SWYPE_CDN")

- We don't really need to touch databases_le.dat after installing a language if using the same build:
```
OnePlus8T:/data/data # md5sum com.nuance.swype*/files/database_le.dat
fa966c4d08970bccdc220b306cd4a38f  com.nuance.swype.dtc.india/files/database_le.dat
fa966c4d08970bccdc220b306cd4a38f  com.nuance.swype.dtc/files/database_le.dat
108ee2f8c47172dbc903a83218d143b8  com.nuance.swype.oppo/files/database_le.dat
```

- However, databses.conf changes:
```
diff com.nuance.swype.dtc.india/files/databases.conf com.nuance.swype.dtc/files/databases.conf
--- com.nuance.swype.dtc.india/files/databases.conf	2022-06-26 17:12:05.005349152 +0530
+++ com.nuance.swype.dtc/files/databases.conf	2022-06-26 17:08:00.489349245 +0530
@@ -3,17 +3,9 @@
 511 database_le.dat

 [ldb]
+263 DEusUN_xt9_ALM3.ldb
 265 ENubUN_xt9_ALM3.ldb
-313 HIlsUN_xt9_ALM3.ldb
-377 SAlsUN_xt9_MLM.ldb
-415 BRXlsUN_xt9.ldb
-416 DOIlsUN_xt9.ldb
-418 MAIlsUN_xt9.ldb
-419 MNIlsUN_xt9.ldb
-9060 KSlsUNdevanagari_xt9_MLM.ldb
-9082 SDlsUNdevanagari_xt9.ldb
-9121 KOKlsUNdevanagari_xt9.ldb
-9124 SATlsUNdevanagari_xt9.ldb
+2057 ENubUNUK_xt9_ALM3.ldb

 [cdb]
```
- Format of databses.conf
```
OnePlus8T:/data/data # cat com.nuance.swype.dtc.india/files/databases.conf

[hwr_db_template]
511 database_le.dat

[ldb]
265 ENubUN_xt9_ALM3.ldb
313 HIlsUN_xt9_ALM3.ldb
377 SAlsUN_xt9_MLM.ldb
415 BRXlsUN_xt9.ldb
416 DOIlsUN_xt9.ldb
418 MAIlsUN_xt9.ldb
419 MNIlsUN_xt9.ldb
9060 KSlsUNdevanagari_xt9_MLM.ldb
9082 SDlsUNdevanagari_xt9.ldb
9121 KOKlsUNdevanagari_xt9.ldb
9124 SATlsUNdevanagari_xt9.ldb

[cdb]

```
-- Some of the ldb files are actually just Assets built in the APK.
```diff
Swype india vs global:
BRXlsUN_xt9.ldb.mp3                                           <
Chinese_CN.msdb.mp3                                             Chinese_CN.msdb.mp3
Chinese_HK.msdb.mp3                                             Chinese_HK.msdb.mp3
Chinese_TW.msdb.mp3                                             Chinese_TW.msdb.mp3
DOIlsUN_xt9.ldb.mp3                                           <
ENubUN_xt9_ALM3.ldb.mp3                                         ENubUN_xt9_ALM3.ldb.mp3
EULA                                            EULA
HIlsUN_xt9_ALM3.ldb.mp3                                       <
JP_STANDARDS_txt.dd.mp3                                         JP_STANDARDS_txt.dd.mp3
KOKlsUNdevanagari_xt9.ldb.mp3                                 <
KO_MARKET_txt.dd.mp3                                            KO_MARKET_txt.dd.mp3
KSlsUNdevanagari_xt9_MLM.ldb.mp3                              <
MAIlsUN_xt9.ldb.mp3                                           <
MNIlsUN_xt9.ldb.mp3                                           <
PRIVACY                                             PRIVACY
SATlsUNdevanagari_xt9.ldb.mp3                                 <
SAlsUN_xt9_MLM.ldb.mp3                                        <
SDlsUNdevanagari_xt9.ldb.mp3                                  <
TOS                                                 TOS
USAGE                                                       USAGE
ZH_GB2312.forSumsang.db.mp3                                     ZH_GB2312.forSumsang.db.mp3
ZH_TW.forSumsang.db.mp3                                         ZH_TW.forSumsang.db.mp3
buildsettings.dat                                               buildsettings.dat
config.properties                                               config.properties
crashlytics-build.properties                                    crashlytics-build.properties
database_le.dat.mp3                                             database_le.dat.mp3
helps                                                       helps
india                                                         <
languagelist.xml                                                languagelist.xml
languagelist_supported.xml                                      languagelist_supported.xml
^^^ This file needs to be edited to support the additional languages 
license.dat                                                     license.dat
```
