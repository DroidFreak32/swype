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

.field private static final USAGEDATA_KEY_FLURRY_DEBUG_QA:Ljava/lang/String; = "J49PC559NF5CP4K2JRJQ"

.field private static final USAGEDATA_KEY_FLURRY_PROD:Ljava/lang/String; = "XDSKSFTWH34NTWT3RWG8"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final accountNotificationInDays:I

.field private final appkey:Ljava/lang/String;

.field private final buildDate:Landroid/text/format/Time;

.field private final buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

.field private final buildVersion:Ljava/lang/String;

.field private final connectStatus:I

.field private final coreLibName:Ljava/lang/String;

.field private final downloadableThemesEnabled:Z

.field private final firstUseTimeInMilliseconds:J

.field private final googlePlayPublicKey:Ljava/lang/String;

.field private final handwritingType:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

.field private hasExpired:Z

.field private final isChineseCoreEnabled:Z

.field private final isJapaneseCoreEnabled:Z

.field private final isKoreanCoreEnabled:Z

.field private isUdbBuild:Z

.field private final maxCellularConnections:I

.field private final maxWifiConnections:I

.field private final refreshInterval:I

.field private final robWorkspace:Ljava/lang/String;

.field private final statisticsLevel:I

.field private final swib:Ljava/lang/String;

.field private final trialPeriod:J

.field private final twitterAPIKey:Ljava/lang/String;

.field private final twitterAPISecret:Ljava/lang/String;

.field private final usageDataProvider:I

.field private final usageLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "BuildInfo"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/BuildInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 201
    .local v4, "res":Landroid/content/res/Resources;
    sget v9, Lcom/nuance/swype/input/R$string;->build_version:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->buildVersion:Ljava/lang/String;

    .line 203
    sget v9, Lcom/nuance/swype/input/R$string;->build_type:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/BuildInfo$BuildType;->parseFromConfig(Ljava/lang/String;)Lcom/nuance/swype/input/BuildInfo$BuildType;

    move-result-object v1

    .line 204
    .local v1, "myBuildType":Lcom/nuance/swype/input/BuildInfo$BuildType;
    sget v9, Lcom/nuance/swype/input/R$integer;->handwriting_type:I

    .line 205
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 204
    invoke-static {v9}, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->parseFromConfig(I)Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->handwritingType:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    .line 206
    sget v9, Lcom/nuance/swype/input/R$integer;->trial_period:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, p0, Lcom/nuance/swype/input/BuildInfo;->trialPeriod:J

    .line 207
    sget v9, Lcom/nuance/swype/input/R$integer;->connect_status:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->connectStatus:I

    .line 208
    sget v9, Lcom/nuance/swype/input/R$integer;->analytics_level:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->statisticsLevel:I

    .line 209
    sget v9, Lcom/nuance/swype/input/R$integer;->rnd_level:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->usageLevel:I

    .line 210
    sget v9, Lcom/nuance/swype/input/R$integer;->usage_data_provider:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->usageDataProvider:I

    .line 211
    sget v9, Lcom/nuance/swype/input/R$bool;->udb_anonymous_upload:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/BuildInfo;->isUdbBuild:Z

    .line 212
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->buildDate:Landroid/text/format/Time;

    .line 213
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lcom/nuance/swype/input/R$string;->appkey:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo$BuildType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->appkey:Ljava/lang/String;

    .line 215
    sget v9, Lcom/nuance/swype/input/R$string;->play_store_app_key:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->googlePlayPublicKey:Ljava/lang/String;

    .line 217
    sget v9, Lcom/nuance/swype/input/R$string;->api_key_twitter:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->twitterAPIKey:Ljava/lang/String;

    .line 218
    sget v9, Lcom/nuance/swype/input/R$string;->api_secret_twitter:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->twitterAPISecret:Ljava/lang/String;

    .line 221
    sget v9, Lcom/nuance/swype/input/R$bool;->chinese_core_enabled:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/BuildInfo;->isChineseCoreEnabled:Z

    .line 222
    sget v9, Lcom/nuance/swype/input/R$bool;->korean_core_enabled:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/BuildInfo;->isKoreanCoreEnabled:Z

    .line 223
    sget v9, Lcom/nuance/swype/input/R$bool;->japanese_core_enabled:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/BuildInfo;->isJapaneseCoreEnabled:Z

    .line 225
    sget v9, Lcom/nuance/swype/input/R$integer;->refresh_interval:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->refreshInterval:I

    .line 226
    sget v9, Lcom/nuance/swype/input/R$integer;->max_wifi_connections:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->maxWifiConnections:I

    .line 227
    sget v9, Lcom/nuance/swype/input/R$integer;->max_cellular_connections:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->maxCellularConnections:I

    .line 228
    sget v9, Lcom/nuance/swype/input/R$integer;->account_notifications_days:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/BuildInfo;->accountNotificationInDays:I

    .line 233
    sget v9, Lcom/nuance/swype/input/R$string;->build_timestamp:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, "timestamp":Ljava/lang/String;
    const-string/jumbo v9, "yyyymmdd.hhmmss"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 235
    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->DEVELOPMENT:Lcom/nuance/swype/input/BuildInfo$BuildType;

    .line 245
    :goto_0
    iput-object v1, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    .line 246
    const-string/jumbo v7, "00000000-0000-0000-0000-000000000000"

    .line 247
    .local v7, "swib":Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swype/input/BuildSettings;->getBuildSettings(Landroid/content/Context;)Lcom/nuance/swype/input/BuildSettings;

    move-result-object v6

    .line 248
    .local v6, "settings":Lcom/nuance/swype/input/BuildSettings;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/nuance/swype/input/BuildSettings;->getSWIB()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 249
    invoke-virtual {v6}, Lcom/nuance/swype/input/BuildSettings;->getSWIB()Ljava/lang/String;

    move-result-object v7

    .line 251
    :cond_0
    iput-object v7, p0, Lcom/nuance/swype/input/BuildInfo;->swib:Ljava/lang/String;

    .line 253
    if-nez p2, :cond_3

    const-wide/16 v2, 0x0

    .line 254
    .local v2, "firstUse":J
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-nez v9, :cond_1

    .line 255
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 256
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 257
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 258
    if-eqz p2, :cond_1

    .line 259
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string/jumbo v10, "buildinfo_first_use_time_in_milliseconds"

    invoke-interface {v9, v10, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 262
    .end local v0    # "currentTime":Landroid/text/format/Time;
    :cond_1
    iput-wide v2, p0, Lcom/nuance/swype/input/BuildInfo;->firstUseTimeInMilliseconds:J

    .line 264
    sget v9, Lcom/nuance/swype/input/R$string;->corelib_name:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->coreLibName:Ljava/lang/String;

    .line 266
    sget v9, Lcom/nuance/swype/input/R$bool;->enable_downloadable_themes:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/BuildInfo;->downloadableThemesEnabled:Z

    .line 268
    sget v9, Lcom/nuance/swype/input/R$string;->rob_workspace:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->robWorkspace:Ljava/lang/String;

    .line 269
    return-void

    .line 237
    .end local v2    # "firstUse":J
    .end local v6    # "settings":Lcom/nuance/swype/input/BuildSettings;
    .end local v7    # "swib":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "."

    const-string/jumbo v10, "T"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "rfc2445Format":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/nuance/swype/input/BuildInfo;->buildDate:Landroid/text/format/Time;

    invoke-virtual {v9, v5}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v9

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->DEVELOPMENT:Lcom/nuance/swype/input/BuildInfo$BuildType;

    goto :goto_0

    .line 253
    .end local v5    # "rfc2445Format":Ljava/lang/String;
    .restart local v6    # "settings":Lcom/nuance/swype/input/BuildSettings;
    .restart local v7    # "swib":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "buildinfo_first_use_time_in_milliseconds"

    const-wide/16 v10, 0x0

    invoke-interface {p2, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_1
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
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
    .line 452
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->accountNotificationInDays:I

    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildDate()J
    .locals 2

    .prologue
    .line 297
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
    .line 301
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildDate:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildDate:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getBuildType()Lcom/nuance/swype/input/BuildInfo$BuildType;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    return-object v0
.end method

.method public getBuildVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectStatus()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->connectStatus:I

    return v0
.end method

.method public getCoreLibName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->coreLibName:Ljava/lang/String;

    return-object v0
.end method

.method public getGooglePlayPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->googlePlayPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHandwritingType()Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->handwritingType:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    return-object v0
.end method

.method public getMaxConnectionsCellular()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->maxCellularConnections:I

    return v0
.end method

.method public getMaxConnectionsWifi()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->maxWifiConnections:I

    return v0
.end method

.method public getPaidVersionUrl()I
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne v0, v1, :cond_0

    .line 394
    sget v0, Lcom/nuance/swype/input/R$string;->url_swype_amazon_store_paid_version:I

    .line 396
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/nuance/swype/input/R$string;->url_android_market_dtc_details:I

    goto :goto_0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->refreshInterval:I

    return v0
.end method

.method public getRobWorkspace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->robWorkspace:Ljava/lang/String;

    return-object v0
.end method

.method public getStatisticsLevel()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->statisticsLevel:I

    return v0
.end method

.method public getSwib()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->swib:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterAPIKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->twitterAPIKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterAPISecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->twitterAPISecret:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageDataFlurryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    const-string/jumbo v0, "XDSKSFTWH34NTWT3RWG8"

    return-object v0
.end method

.method public getUsageDataProvider()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/nuance/swype/input/BuildInfo;->usageDataProvider:I

    return v0
.end method

.method public isAmazonBuild()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isAmazonBuild()Z

    move-result v0

    return v0
.end method

.method public isChineseCoreEnabled()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/nuance/swype/input/BuildInfo;->isChineseCoreEnabled:Z

    return v0
.end method

.method public isConnectEnabled()Z
    .locals 1

    .prologue
    .line 412
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
    .line 385
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isDTCbuild()Z

    move-result v0

    return v0
.end method

.method public isDevBuild()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isDevBuild()Z

    move-result v0

    return v0
.end method

.method public isDistributedOnGooglePlay()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isDistributedOnGooglePlay()Z

    move-result v0

    return v0
.end method

.method public isDownloadableThemesEnabled()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/nuance/swype/input/BuildInfo;->downloadableThemesEnabled:Z

    return v0
.end method

.method public isExpireDialogRequired()Z
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/nuance/swype/input/BuildInfo;->isTrialBuild()Z

    move-result v0

    return v0
.end method

.method public isGooglePlayChina()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isGooglePlayChina()Z

    move-result v0

    return v0
.end method

.method public isGoogleTrialBuild()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isGoogleTrialBuild()Z

    move-result v0

    return v0
.end method

.method public isJapaneseCoreEnabled()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/nuance/swype/input/BuildInfo;->isJapaneseCoreEnabled:Z

    return v0
.end method

.method public isKoreanCoreEnabled()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/nuance/swype/input/BuildInfo;->isKoreanCoreEnabled:Z

    return v0
.end method

.method public isLicensingOn()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isLicensingOn()Z

    move-result v0

    return v0
.end method

.method public isShowEulaOn()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isShowEulaOn()Z

    move-result v0

    return v0
.end method

.method public isTrialBuild()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo$BuildType;->isTrialBuild()Z

    move-result v0

    return v0
.end method

.method public isTrialPeriodExpired()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/nuance/swype/input/BuildInfo;->hasExpired:Z

    return v0
.end method

.method public isUsageLogging()Z
    .locals 1

    .prologue
    .line 420
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
    .line 416
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
    .locals 12

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/nuance/swype/input/BuildInfo;->isTrialBuild()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 275
    .local v2, "currentTime":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 276
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    .line 277
    .local v4, "currentTimeInSeconds":J
    iget-object v3, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    sget-object v8, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-eq v3, v8, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    sget-object v8, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-eq v3, v8, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/BuildInfo;->buildType:Lcom/nuance/swype/input/BuildInfo$BuildType;

    sget-object v8, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY_CHINA:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne v3, v8, :cond_2

    :cond_0
    iget-wide v8, p0, Lcom/nuance/swype/input/BuildInfo;->firstUseTimeInMilliseconds:J

    .line 280
    :goto_0
    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 283
    .local v0, "comparisonTimeInSeconds":J
    iget-wide v8, p0, Lcom/nuance/swype/input/BuildInfo;->trialPeriod:J

    const-wide/16 v10, 0x18

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    mul-long v6, v8, v10

    .line 284
    .local v6, "trialDayInSeconds":J
    cmp-long v3, v4, v0

    if-ltz v3, :cond_1

    sub-long v8, v4, v0

    cmp-long v3, v8, v6

    if-lez v3, :cond_3

    :cond_1
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/nuance/swype/input/BuildInfo;->hasExpired:Z

    .line 287
    sget-object v3, Lcom/nuance/swype/input/BuildInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "currentTimeInSeconds: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v3, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 288
    sget-object v3, Lcom/nuance/swype/input/BuildInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "comparisonTimeInSeconds: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v3, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 289
    sget-object v3, Lcom/nuance/swype/input/BuildInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "currentTimeInSeconds - comparisonTimeInSeconds: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sub-long v10, v4, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v3, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 290
    sget-object v3, Lcom/nuance/swype/input/BuildInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "trialDayInSeconds: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v3, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 294
    .end local v0    # "comparisonTimeInSeconds":J
    .end local v2    # "currentTime":Landroid/text/format/Time;
    .end local v4    # "currentTimeInSeconds":J
    .end local v6    # "trialDayInSeconds":J
    :goto_2
    return-void

    .line 277
    .restart local v2    # "currentTime":Landroid/text/format/Time;
    .restart local v4    # "currentTimeInSeconds":J
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/BuildInfo;->buildDate:Landroid/text/format/Time;

    const/4 v8, 0x0

    .line 280
    invoke-virtual {v3, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    goto :goto_0

    .line 284
    .restart local v0    # "comparisonTimeInSeconds":J
    .restart local v6    # "trialDayInSeconds":J
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 292
    .end local v0    # "comparisonTimeInSeconds":J
    .end local v2    # "currentTime":Landroid/text/format/Time;
    .end local v4    # "currentTimeInSeconds":J
    .end local v6    # "trialDayInSeconds":J
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nuance/swype/input/BuildInfo;->hasExpired:Z

    goto :goto_2
.end method
