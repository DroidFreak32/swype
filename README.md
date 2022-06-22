# swype decompiling notes.

## Using Swype for OPPO `03ef5b79205fc4ced5ac43a3021f6cd6`
- Used charles GUI to monitor Swype Language traffic for Swype for OPPO
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

- 9.10 seems to be the `CORE_VERSION` found at `com.nuance.swype.connect.Connect` Class:  
`private static final String CORE_VERSION = "9.10";`

- `1415911799-English.zip` 1415911799 would probably be epoch time for `Thu Nov 13 20:49:59 UTC 2014`
