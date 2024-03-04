.class public Lcom/nuance/swype/input/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/BuildInfo$HandwritingType;,
        Lcom/nuance/swype/input/BuildInfo$BuildType;
    }
.end annotation


# static fields
.field public static final BUILD_SAVE_AUDIOBUF_ONSDCARD:Z = false

.field public static final DEFAULT_SWIB:Ljava/lang/String; = "00000000-0000-0000-0000-000000000000"

.field public static final DRAGON_SPEECH_VERSION:Ljava/lang/String; = "2.0"

.field private static final FIRST_USE_TIME_DEFAULT_MILLISECONDS:J = 0x0L

.field private static final FIRST_USE_TIME_IN_MILLISECONDS:Ljava/lang/String; = "buildinfo_first_use_time_in_milliseconds"

.field public static final INDIVIDUAL_LOGGING_DEFAULT:I = -0x63

.field public static final INDIVIDUAL_LOGGING_NONE:I = 0x0

.field public static final INDIVIDUAL_LOGGING_RND:I = 0x1

.field private static final SWYPE_PREFERENCE_APP_DEV_KEY_LOCALYTICS:Ljava/lang/String; = "231fa2de58b3ffe5f1dd9b1-ca47ceb8-ed0f-11e3-9bc0-005cf8cbabd8"

.field private static final SWYPE_PREFERENCE_APP_PRODUCTION_KEY_LOCALYTICS:Ljava/lang/String; = "198f5ec9266636878419f84-fc58033c-ed0f-11e3-9bc0-005cf8cbabd8"


# instance fields
.field private final accountNotificationInDays:I

.field private final appkey:Ljava/lang/String;

.field private final buildDate:Landroid/text/format/Time;

.field private final buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

.field private final buildVersion:Ljava/lang/String;

.field private final connectStatus:I

.field private final firstUseTimeInMilliseconds:J

.field private final handwritingType:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

.field private hasExpired:Z

.field private final isChineseCoreEnabled:Z

.field private final isJapaneseCoreEnabled:Z

.field private final isKoreanCoreEnabled:Z

.field private isProductionAppKeyForLocalytics:Z

.field private isUdbBuild:Z

.field private final locationLevel:I

.field private final maxCellularConnections:I

.field private final maxWifiConnections:I

.field private final refreshInterval:I

.field private final statisticsLevel:I

.field private final swib:Ljava/lang/String;

.field private final trialPeriod:J

.field private final usageLevel:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 172
    .local v4, "res":Landroid/content/res/Resources;
    sget v9, Lcom/nuance/swype/input/R$string;->build_version:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->buildVersion:Ljava/lang/String;

    .line 174
    sget v9, Lcom/nuance/swype/input/R$string;->build_type:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/BuildInfo$BuildType;->parseFromConfig(Ljava/lang/String;)Lcom/nuance/swype/input/BuildInfo$BuildType;

    move-result-object v1

    .line 175
    .local v1, "myBuildType":Lcom/nuance/swype/input/BuildInfo$BuildType;
    sget v9, Lcom/nuance/swype/input/R$integer;->handwriting_type:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v9}, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->parseFromConfig(I)Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->handwritingType:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    .line 176
    sget v9, Lcom/nuance/swype/input/R$integer;->trial_period:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, p0, Lcom/nuance/swype/input/BuildInfo;->trialPeriod:J

    .line 177
    sget v9, Lcom/nuance/swype/input/R$integer;->connect_status:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->connectStatus:I

    .line 178
    sget v9, Lcom/nuance/swype/input/R$integer;->analytics_level:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->statisticsLevel:I

    .line 179
    sget v9, Lcom/nuance/swype/input/R$integer;->rnd_level:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->usageLevel:I

    .line 180
    sget v9, Lcom/nuance/swype/input/R$bool;->udb_anonymous_upload:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/BuildInfo;->isUdbBuild:Z

    .line 181
    sget v9, Lcom/nuance/swype/input/R$integer;->location_level:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->locationLevel:I

    .line 182
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->buildDate:Landroid/text/format/Time;

    .line 183
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lcom/nuance/swype/input/R$string;->appkey:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo$BuildType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->appkey:Ljava/lang/String;

    .line 185
    sget v9, Lcom/nuance/swype/input/R$bool;->chinese_core_enabled:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/BuildInfo;->isChineseCoreEnabled:Z

    .line 186
    sget v9, Lcom/nuance/swype/input/R$bool;->korean_core_enabled:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/BuildInfo;->isKoreanCoreEnabled:Z

    .line 187
    sget v9, Lcom/nuance/swype/input/R$bool;->japanese_core_enabled:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/BuildInfo;->isJapaneseCoreEnabled:Z

    .line 189
    sget v9, Lcom/nuance/swype/input/R$integer;->refresh_interval:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->refreshInterval:I

    .line 190
    sget v9, Lcom/nuance/swype/input/R$integer;->max_wifi_connections:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->maxWifiConnections:I

    .line 191
    sget v9, Lcom/nuance/swype/input/R$integer;->max_cellular_connections:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->maxCellularConnections:I

    .line 192
    sget v9, Lcom/nuance/swype/input/R$integer;->account_notifications_days:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->accountNotificationInDays:I

    .line 197
    sget v9, Lcom/nuance/swype/input/R$string;->build_timestamp:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "timestamp":Ljava/lang/String;
    const-string v9, "yyyymmdd.hhmmss"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 199
    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->DEVELOPMENT:Lcom/nuance/swype/input/BuildInfo$BuildType;

    .line 209
    :goto_0
    iput-object v1, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    .line 210
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nuance/swype/input/BuildInfo;->isProductionAppKeyForLocalytics:Z

    .line 211
    iget-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v9}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isGooglePlayBuild()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 212
    sget v9, Lcom/nuance/swype/input/R$bool;->enable_swype_official_production_key_for_localytics:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/BuildInfo;->isProductionAppKeyForLocalytics:Z

    .line 214
    :cond_0
    const-string v7, "00000000-0000-0000-0000-000000000000"

    .line 215
    .local v7, "swib":Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swype/input/BuildSettings;->getBuildSettings(Landroid/content/Context;)Lcom/nuance/swype/input/BuildSettings;

    move-result-object v6

    .line 216
    .local v6, "settings":Lcom/nuance/swype/input/BuildSettings;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/nuance/swype/input/BuildSettings;->getSWIB()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 217
    invoke-virtual {v6}, Lcom/nuance/swype/input/BuildSettings;->getSWIB()Ljava/lang/String;

    move-result-object v7

    .line 219
    :cond_1
    iput-object v7, p0, Lcom/nuance/swype/input/BuildInfo;->swib:Ljava/lang/String;

    .line 221
    const-string v9, "buildinfo_first_use_time_in_milliseconds"

    const-wide/16 v10, 0x0

    invoke-interface {p2, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 222
    .local v2, "firstUse":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-nez v9, :cond_2

    .line 223
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 224
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 225
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 226
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "buildinfo_first_use_time_in_milliseconds"

    invoke-interface {v9, v10, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 228
    .end local v0    # "currentTime":Landroid/text/format/Time;
    :cond_2
    iput-wide v2, p0, Lcom/nuance/swype/input/BuildInfo;->firstUseTimeInMilliseconds:J

    .line 229
    return-void

    .line 201
    .end local v2    # "firstUse":J
    .end local v6    # "settings":Lcom/nuance/swype/input/BuildSettings;
    .end local v7    # "swib":Ljava/lang/String;
    :cond_3
    const-string v9, "."

    const-string v10, "T"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "rfc2445Format":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->buildDate:Landroid/text/format/Time;

    invoke-virtual {v9, v5}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v9

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->DEVELOPMENT:Lcom/nuance/swype/input/BuildInfo$BuildType;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountNotificationInDays()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->accountNotificationInDays:I

    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildDate()J
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildDate:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildDate:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getBuildDateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildDate:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildDate:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getBuildType()Lcom/nuance/swype/input/BuildInfo$BuildType;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    return-object v0
.end method

.method public getBuildVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectStatus()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->connectStatus:I

    return v0
.end method

.method public getHandwritingType()Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->handwritingType:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    return-object v0
.end method

.method public getLocationLevel()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->locationLevel:I

    return v0
.end method

.method public getMaxConnectionsCellular()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->maxCellularConnections:I

    return v0
.end method

.method public getMaxConnectionsWifi()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->maxWifiConnections:I

    return v0
.end method

.method public getPaidVersionUrl()I
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne v0, v1, :cond_0

    .line 329
    sget v0, Lcom/nuance/swype/input/R$string;->url_swype_amazon_store_paid_version:I

    .line 331
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/nuance/swype/input/R$string;->url_android_market_dtc_details:I

    goto :goto_0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->refreshInterval:I

    return v0
.end method

.method public getStatisticsLevel()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->statisticsLevel:I

    return v0
.end method

.method public getSwib()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->swib:Ljava/lang/String;

    return-object v0
.end method

.method public getSwypePreferenceAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/nuance/swype/input/BuildInfo;->isProductionAppKeyForLocalytics:Z

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "198f5ec9266636878419f84-fc58033c-ed0f-11e3-9bc0-005cf8cbabd8"

    .line 307
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "231fa2de58b3ffe5f1dd9b1-ca47ceb8-ed0f-11e3-9bc0-005cf8cbabd8"

    goto :goto_0
.end method

.method public isAmazonBuild()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isAmazonBuild()Z

    move-result v0

    return v0
.end method

.method public isChineseCoreEnabled()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/nuance/swype/input/BuildInfo;->isChineseCoreEnabled:Z

    return v0
.end method

.method public isConnectEnabled()Z
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/nuance/swype/input/BuildInfo;->getConnectStatus()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDTCbuild()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isDTCbuild()Z

    move-result v0

    return v0
.end method

.method public isDevBuild()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isDevBuild()Z

    move-result v0

    return v0
.end method

.method public isExpireDialogRequired()Z
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/nuance/swype/input/BuildInfo;->isGooglePlayBuild()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGooglePlayBuild()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isGooglePlayBuild()Z

    move-result v0

    return v0
.end method

.method public isGoogleTrialBuild()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isGoogleTrialBuild()Z

    move-result v0

    return v0
.end method

.method public isJapaneseCoreEnabled()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/nuance/swype/input/BuildInfo;->isJapaneseCoreEnabled:Z

    return v0
.end method

.method public isKoreanCoreEnabled()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/nuance/swype/input/BuildInfo;->isKoreanCoreEnabled:Z

    return v0
.end method

.method public isLicensingOn()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isLicensingOn()Z

    move-result v0

    return v0
.end method

.method public isLocalyticsOfficialAppKeyForGoogleProductionBuild()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/nuance/swype/input/BuildInfo;->isProductionAppKeyForLocalytics:Z

    return v0
.end method

.method public isShowEulaOn()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isShowEulaOn()Z

    move-result v0

    return v0
.end method

.method public isTrialBuild()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isTrialBuild()Z

    move-result v0

    return v0
.end method

.method public isTrialPeriodExpired()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/nuance/swype/input/BuildInfo;->hasExpired:Z

    return v0
.end method

.method public isUsageLogging()Z
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->usageLevel:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsageTrackingBuild()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/nuance/swype/input/BuildInfo;->isUdbBuild:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->statisticsLevel:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->usageLevel:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateExpirationPeriod()V
    .locals 14

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v12, 0x3c

    const/4 v3, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/nuance/swype/input/BuildInfo;->isTrialBuild()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 234
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 235
    .local v2, "currentTime":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 236
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    div-long v4, v8, v10

    .line 237
    .local v4, "currentTimeInSeconds":J
    iget-object v8, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    sget-object v9, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    sget-object v9, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne v8, v9, :cond_3

    :cond_0
    iget-wide v8, p0, Lcom/nuance/swype/input/BuildInfo;->firstUseTimeInMilliseconds:J

    :goto_0
    div-long v0, v8, v10

    .line 242
    .local v0, "comparisonTimeInSeconds":J
    iget-wide v8, p0, Lcom/nuance/swype/input/BuildInfo;->trialPeriod:J

    const-wide/16 v10, 0x18

    mul-long/2addr v8, v10

    mul-long/2addr v8, v12

    mul-long v6, v8, v12

    .line 243
    .local v6, "trialDayInSeconds":J
    cmp-long v8, v4, v0

    if-lez v8, :cond_1

    sub-long v8, v4, v0

    cmp-long v8, v8, v6

    if-ltz v8, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Lcom/nuance/swype/input/BuildInfo;->hasExpired:Z

    .line 248
    .end local v0    # "comparisonTimeInSeconds":J
    .end local v2    # "currentTime":Landroid/text/format/Time;
    .end local v4    # "currentTimeInSeconds":J
    .end local v6    # "trialDayInSeconds":J
    :goto_1
    return-void

    .line 237
    .restart local v2    # "currentTime":Landroid/text/format/Time;
    .restart local v4    # "currentTimeInSeconds":J
    :cond_3
    iget-object v8, p0, Lcom/nuance/swype/input/BuildInfo;->buildDate:Landroid/text/format/Time;

    invoke-virtual {v8, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    goto :goto_0

    .line 246
    .end local v2    # "currentTime":Landroid/text/format/Time;
    .end local v4    # "currentTimeInSeconds":J
    :cond_4
    iput-boolean v3, p0, Lcom/nuance/swype/input/BuildInfo;->hasExpired:Z

    goto :goto_1
.end method
