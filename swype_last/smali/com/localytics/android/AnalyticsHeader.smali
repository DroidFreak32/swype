.class Lcom/localytics/android/AnalyticsHeader;
.super Ljava/lang/Object;
.source "AnalyticsHeader.java"


# instance fields
.field private mCustomerID:Ljava/lang/String;

.field final mHeaderBlob:Lorg/json/JSONObject;

.field private mIdentifiers:Lorg/json/JSONObject;

.field private mLastSessionStart:J

.field private mOpenSessionUUID:Ljava/lang/String;

.field private mSessionSequenceNumber:I

.field private mUserType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "handler"    # Lcom/localytics/android/AnalyticsHandler;
    .param p2, "provider"    # Lcom/localytics/android/BaseProvider;
    .param p3, "appContext"    # Landroid/content/Context;
    .param p4, "installationId"    # Ljava/lang/String;
    .param p5, "apiKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/localytics/android/AnalyticsHeader;->setupHeader(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private _buildHeaderAttributes(Lcom/localytics/android/AnalyticsHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 27
    .param p1, "handler"    # Lcom/localytics/android/AnalyticsHandler;
    .param p2, "appContext"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "playAttribution"    # Ljava/lang/String;
    .param p5, "installationId"    # Ljava/lang/String;
    .param p6, "apiKey"    # Ljava/lang/String;
    .param p7, "fbAttribution"    # Ljava/lang/String;
    .param p8, "registrationId"    # Ljava/lang/String;
    .param p9, "firstAndroidId"    # Ljava/lang/String;
    .param p10, "notificationsEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 136
    .local v5, "headerAttributes":Lorg/json/JSONObject;
    const-string/jumbo v11, "dt"

    const-string/jumbo v12, "a"

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string/jumbo v11, "au"

    move-object/from16 v0, p6

    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    invoke-static/range {p2 .. p2}, Lcom/localytics/android/DatapointHelper;->getAndroidIdHashOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "deviceID":Ljava/lang/String;
    if-eqz v4, :cond_22

    .line 141
    const-string/jumbo v11, "du"

    invoke-virtual {v5, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :cond_22
    const-string/jumbo v11, "phone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 146
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v11, "lv"

    sget-object v12, Lcom/localytics/android/Constants;->LOCALYTICS_CLIENT_LIBRARY_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v11, "av"

    invoke-static/range {p2 .. p2}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v11, "dp"

    const-string/jumbo v12, "Android"

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v11, "dll"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v11, "dlc"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string/jumbo v11, "nc"

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string/jumbo v11, "dc"

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string/jumbo v11, "dma"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v11, "dmo"

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v11, "dov"

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string/jumbo v11, "nca"

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string/jumbo v11, "dac"

    move-object/from16 v0, p2

    invoke-static {v7, v0}, Lcom/localytics/android/DatapointHelper;->getNetworkType(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string/jumbo v11, "iu"

    move-object/from16 v0, p5

    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string/jumbo v12, "push"

    if-nez p8, :cond_17a

    const-string/jumbo v11, ""

    :goto_b8
    invoke-virtual {v5, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string/jumbo v12, "ne"

    if-eqz p10, :cond_17e

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_17e

    const/4 v11, 0x1

    :goto_c7
    invoke-virtual {v5, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 165
    if-eqz p7, :cond_d4

    .line 167
    const-string/jumbo v11, "fbat"

    move-object/from16 v0, p7

    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_d4
    if-eqz p9, :cond_de

    .line 172
    const-string/jumbo v11, "aid"

    move-object/from16 v0, p9

    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    :cond_de
    invoke-static/range {p2 .. p2}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "androidID":Ljava/lang/String;
    const-string/jumbo v11, "caid"

    if-nez v3, :cond_e9

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .end local v3    # "androidID":Ljava/lang/String;
    :cond_e9
    invoke-virtual {v5, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-static/range {p2 .. p2}, Lcom/localytics/android/DatapointHelper;->getAdvertisingInfo(Landroid/content/Context;)Lcom/localytics/android/DatapointHelper$AdvertisingInfo;

    move-result-object v2

    .line 179
    .local v2, "advertisingInfo":Lcom/localytics/android/DatapointHelper$AdvertisingInfo;
    if-eqz v2, :cond_106

    iget-object v11, v2, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->id:Ljava/lang/String;

    if-eqz v11, :cond_106

    .line 181
    const-string/jumbo v11, "gadid"

    iget-object v12, v2, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string/jumbo v11, "gcadid"

    iget-object v12, v2, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :cond_106
    if-eqz p3, :cond_110

    .line 186
    const-string/jumbo v11, "pkg"

    move-object/from16 v0, p3

    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    :cond_110
    if-eqz p4, :cond_11a

    .line 190
    const-string/jumbo v11, "aurl"

    move-object/from16 v0, p4

    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    :cond_11a
    const-string/jumbo v12, "lad"

    if-eqz v2, :cond_181

    iget-boolean v11, v2, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->limitAdTracking:Z

    if-eqz v11, :cond_181

    const/4 v11, 0x1

    :goto_124
    invoke-virtual {v5, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 194
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    .line 195
    .local v10, "tz":Ljava/util/TimeZone;
    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 196
    .local v8, "time":Ljava/util/Date;
    invoke-virtual {v10, v8}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_183

    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v11

    invoke-virtual {v10}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v12

    add-int v9, v11, v12

    .line 197
    .local v9, "timezone":I
    :goto_143
    const-string/jumbo v11, "tz"

    int-to-long v12, v9

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v5, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getSerialNumberHashOrNull()Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, "serialNumberHash":Ljava/lang/String;
    const-string/jumbo v11, "dms"

    if-nez v6, :cond_158

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .end local v6    # "serialNumberHash":Ljava/lang/String;
    :cond_158
    invoke-virtual {v5, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string/jumbo v11, "dsdk"

    sget v12, Lcom/localytics/android/Constants;->CURRENT_API_LEVEL:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string/jumbo v11, "lpg"

    invoke-static/range {p2 .. p2}, Lcom/localytics/android/DatapointHelper;->isLocationPermissionGranted(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5, v2, v11}, Lcom/localytics/android/AnalyticsHandler;->_updateHeaderForTestModeAttribution(Ljava/lang/String;Lorg/json/JSONObject;Lcom/localytics/android/DatapointHelper$AdvertisingInfo;Z)V

    .line 205
    return-object v5

    .end local v2    # "advertisingInfo":Lcom/localytics/android/DatapointHelper$AdvertisingInfo;
    .end local v8    # "time":Ljava/util/Date;
    .end local v9    # "timezone":I
    .end local v10    # "tz":Ljava/util/TimeZone;
    :cond_17a
    move-object/from16 v11, p8

    .line 160
    goto/16 :goto_b8

    .line 162
    :cond_17e
    const/4 v11, 0x0

    goto/16 :goto_c7

    .line 192
    .restart local v2    # "advertisingInfo":Lcom/localytics/android/DatapointHelper$AdvertisingInfo;
    :cond_181
    const/4 v11, 0x0

    goto :goto_124

    .line 196
    .restart local v8    # "time":Ljava/util/Date;
    .restart local v10    # "tz":Ljava/util/TimeZone;
    :cond_183
    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    goto :goto_143
.end method

.method private _getIdentifiersObject(Lcom/localytics/android/BaseProvider;)Lorg/json/JSONObject;
    .registers 10
    .param p1, "provider"    # Lcom/localytics/android/BaseProvider;

    .prologue
    .line 216
    const/4 v6, 0x0

    .line 217
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 220
    .local v7, "result":Lorg/json/JSONObject;
    :try_start_6
    const-string/jumbo v1, "identifiers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 222
    :goto_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 224
    const-string/jumbo v0, "key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_31} :catch_32
    .catchall {:try_start_6 .. :try_end_31} :catchall_3f

    goto :goto_12

    .line 232
    :catch_32
    move-exception v0

    if-eqz v6, :cond_38

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_38
    :goto_38
    return-object v7

    .line 232
    :cond_39
    if-eqz v6, :cond_38

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .line 232
    :catchall_3f
    move-exception v0

    if-eqz v6, :cond_38

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_38
.end method

.method private setupHeader(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 26
    .param p1, "handler"    # Lcom/localytics/android/AnalyticsHandler;
    .param p2, "provider"    # Lcom/localytics/android/BaseProvider;
    .param p3, "appContext"    # Landroid/content/Context;
    .param p4, "installationId"    # Ljava/lang/String;
    .param p5, "apiKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v15, 0x0

    .line 74
    .local v15, "headerSeqNumber":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/localytics/android/AnalyticsHeader;->mSessionSequenceNumber:I

    .line 75
    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mOpenSessionUUID:Ljava/lang/String;

    .line 76
    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mCustomerID:Ljava/lang/String;

    .line 77
    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mUserType:Ljava/lang/String;

    .line 78
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/localytics/android/AnalyticsHeader;->mLastSessionStart:J

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    const-string/jumbo v3, "dt"

    const-string/jumbo v4, "h"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    const-string/jumbo v3, "u"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .local v14, "headerAttributes":Lorg/json/JSONObject;
    const/4 v13, 0x0

    .line 86
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_46
    const-string/jumbo v3, "info"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 88
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_133

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    const-string/jumbo v3, "pa"

    const-string/jumbo v4, "created_time"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v2, "next_session_number"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/localytics/android/AnalyticsHeader;->mSessionSequenceNumber:I

    .line 92
    const-string/jumbo v2, "customer_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mCustomerID:Ljava/lang/String;

    .line 93
    const-string/jumbo v2, "user_type"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mUserType:Ljava/lang/String;

    .line 94
    const-string/jumbo v2, "current_session_uuid"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mOpenSessionUUID:Ljava/lang/String;

    .line 95
    const-string/jumbo v2, "next_header_number"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    const-string/jumbo v3, "seq"

    invoke-virtual {v2, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v2, "last_session_open_time"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/localytics/android/AnalyticsHeader;->mLastSessionStart:J

    .line 100
    const-string/jumbo v2, "package_name"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "play_attribution"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "playAttribution":Ljava/lang/String;
    const-string/jumbo v2, "first_android_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, "firstAndroidId":Ljava/lang/String;
    const-string/jumbo v2, "registration_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, "registrationId":Ljava/lang/String;
    const-string/jumbo v2, "fb_attribution"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, "fbAttribution":Ljava/lang/String;
    const-string/jumbo v2, "push_disabled"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_16e

    const/4 v12, 0x1

    .local v12, "notificationsEnabled":Z
    :goto_125
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 107
    invoke-direct/range {v2 .. v12}, Lcom/localytics/android/AnalyticsHeader;->_buildHeaderAttributes(Lcom/localytics/android/AnalyticsHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_132
    .catchall {:try_start_46 .. :try_end_132} :catchall_170

    move-result-object v14

    .line 113
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "playAttribution":Ljava/lang/String;
    .end local v9    # "fbAttribution":Ljava/lang/String;
    .end local v10    # "registrationId":Ljava/lang/String;
    .end local v11    # "firstAndroidId":Ljava/lang/String;
    .end local v12    # "notificationsEnabled":Z
    :cond_133
    if-eqz v13, :cond_138

    .line 115
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_138
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/localytics/android/AnalyticsHeader;->updateNextHeaderNumber(Lcom/localytics/android/BaseProvider;I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    const-string/jumbo v3, "attrs"

    invoke-virtual {v2, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/localytics/android/AnalyticsHeader;->_getIdentifiersObject(Lcom/localytics/android/BaseProvider;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mIdentifiers:Lorg/json/JSONObject;

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mIdentifiers:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_16d

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    const-string/jumbo v3, "ids"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/localytics/android/AnalyticsHeader;->mIdentifiers:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_16d
    return-void

    .line 105
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "playAttribution":Ljava/lang/String;
    .restart local v9    # "fbAttribution":Ljava/lang/String;
    .restart local v10    # "registrationId":Ljava/lang/String;
    .restart local v11    # "firstAndroidId":Ljava/lang/String;
    :cond_16e
    const/4 v12, 0x0

    goto :goto_125

    .line 113
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "playAttribution":Ljava/lang/String;
    .end local v9    # "fbAttribution":Ljava/lang/String;
    .end local v10    # "registrationId":Ljava/lang/String;
    .end local v11    # "firstAndroidId":Ljava/lang/String;
    :catchall_170
    move-exception v2

    if-eqz v13, :cond_176

    .line 115
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_176
    throw v2
.end method

.method private updateNextHeaderNumber(Lcom/localytics/android/BaseProvider;I)V
    .registers 7
    .param p1, "provider"    # Lcom/localytics/android/BaseProvider;
    .param p2, "headerSeqNumber"    # I

    .prologue
    const/4 v3, 0x0

    .line 244
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v0, "infoValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "next_header_number"

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string/jumbo v1, "info"

    invoke-virtual {p1, v1, v0, v3, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 247
    return-void
.end method


# virtual methods
.method getCustomerID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mCustomerID:Ljava/lang/String;

    return-object v0
.end method

.method getHeaderBlob()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    return-object v0
.end method

.method getIdentifiersObject()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mIdentifiers:Lorg/json/JSONObject;

    return-object v0
.end method

.method getLastSessionStartTime()J
    .registers 3

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/localytics/android/AnalyticsHeader;->mLastSessionStart:J

    return-wide v0
.end method

.method getOpenSessionUUID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mOpenSessionUUID:Ljava/lang/String;

    return-object v0
.end method

.method getSessionSequenceNumber()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/localytics/android/AnalyticsHeader;->mSessionSequenceNumber:I

    return v0
.end method

.method getUserType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mUserType:Ljava/lang/String;

    return-object v0
.end method
