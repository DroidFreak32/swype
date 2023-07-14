.class public final Lcom/nuance/swype/usagedata/UsageData;
.super Ljava/lang/Object;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;,
        Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;,
        Lcom/nuance/swype/usagedata/UsageData$AdResult;,
        Lcom/nuance/swype/usagedata/UsageData$EventAttribute;,
        Lcom/nuance/swype/usagedata/UsageData$EventTag;,
        Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;,
        Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;,
        Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;,
        Lcom/nuance/swype/usagedata/UsageData$PurchaseType;,
        Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;,
        Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedAttribute;,
        Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;,
        Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;,
        Lcom/nuance/swype/usagedata/UsageData$Permission;,
        Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;,
        Lcom/nuance/swype/usagedata/UsageData$DownloadResult;,
        Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;,
        Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;,
        Lcom/nuance/swype/usagedata/UsageData$Event;,
        Lcom/nuance/swype/usagedata/UsageData$Screen;
    }
.end annotation


# static fields
.field private static activeScreen:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field private static browseStartTimeThemes:J

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

.field private static mContext:Landroid/content/Context;

.field private static mIsAllowed:Z

.field private static sPermissionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/usagedata/UsageData$Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "UsageData"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 45
    new-instance v0, Lcom/nuance/swype/usagedata/AnalyticsNull;

    invoke-direct {v0}, Lcom/nuance/swype/usagedata/AnalyticsNull;-><init>()V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData;->sPermissionMap:Ljava/util/Map;

    return-void
.end method

.method public static endSession(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 579
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "endSession: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 580
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    invoke-interface {v0, p0}, Lcom/nuance/swype/usagedata/Analytics;->endSession(Landroid/content/Context;)V

    .line 581
    return-void
.end method

.method private static eventError(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "err"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1126
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->EVENT_ERR:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1128
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->EVENT_ERR:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p0, :cond_1

    const-string/jumbo p0, "error string not provided!"

    .end local p0    # "err":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    return-void
.end method

.method public static exitedSettings()V
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->recordThemesUsageData(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 902
    return-void
.end method

.method public static getActiveScreen()Lcom/nuance/swype/usagedata/UsageData$Screen;
    .locals 1

    .prologue
    .line 911
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->activeScreen:Lcom/nuance/swype/usagedata/UsageData$Screen;

    return-object v0
.end method

.method private static getBrowseTime(J)Ljava/lang/String;
    .locals 14
    .param p0, "t"    # J

    .prologue
    const-wide/16 v12, 0x12c

    const-wide/16 v10, 0x78

    const-wide/16 v8, 0x3c

    const-wide/16 v6, 0x1e

    const-wide/16 v4, 0x5

    .line 1132
    const-wide/16 v2, 0x3e8

    div-long v0, p0, v2

    .line 1133
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 1134
    const-string/jumbo v2, "0-5s"

    .line 1146
    :goto_0
    return-object v2

    .line 1135
    :cond_0
    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    cmp-long v2, v0, v6

    if-gtz v2, :cond_1

    .line 1136
    const-string/jumbo v2, "5-30s"

    goto :goto_0

    .line 1137
    :cond_1
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    cmp-long v2, v0, v8

    if-gtz v2, :cond_2

    .line 1138
    const-string/jumbo v2, "30-1m"

    goto :goto_0

    .line 1139
    :cond_2
    cmp-long v2, v0, v8

    if-lez v2, :cond_3

    cmp-long v2, v0, v10

    if-gtz v2, :cond_3

    .line 1140
    const-string/jumbo v2, "1m-2m"

    goto :goto_0

    .line 1141
    :cond_3
    cmp-long v2, v0, v10

    if-lez v2, :cond_4

    cmp-long v2, v0, v12

    if-gtz v2, :cond_4

    .line 1142
    const-string/jumbo v2, "2m-5m"

    goto :goto_0

    .line 1143
    :cond_4
    cmp-long v2, v0, v12

    if-lez v2, :cond_5

    .line 1144
    const-string/jumbo v2, "5m +"

    goto :goto_0

    .line 1146
    :cond_5
    const-string/jumbo v2, "0-5s"

    goto :goto_0
.end method

.method private static init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 500
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init: mContext: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/nuance/swype/usagedata/UsageData;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 502
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mContext:Landroid/content/Context;

    .line 2150
    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->isDataUsageOptAccepted()Z

    move-result v0

    .line 2152
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isContributionAllowed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 505
    .local v0, "isAllowed":Z
    sget-boolean v1, Lcom/nuance/swype/usagedata/UsageData;->mIsAllowed:Z

    if-eq v1, v0, :cond_0

    .line 507
    sput-boolean v0, Lcom/nuance/swype/usagedata/UsageData;->mIsAllowed:Z

    if-eqz v0, :cond_2

    .line 2521
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getUsageDataProvider()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2540
    new-instance v1, Lcom/nuance/swype/usagedata/AnalyticsNull;

    invoke-direct {v1}, Lcom/nuance/swype/usagedata/AnalyticsNull;-><init>()V

    .line 508
    :goto_0
    sput-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    .line 514
    :cond_0
    :goto_1
    return-void

    .line 2523
    :pswitch_0
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "init: creating AnalyticsNull"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2524
    new-instance v1, Lcom/nuance/swype/usagedata/AnalyticsNull;

    invoke-direct {v1}, Lcom/nuance/swype/usagedata/AnalyticsNull;-><init>()V

    goto :goto_0

    .line 2526
    :pswitch_1
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "init: creating AnalyticsFlurry"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2527
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init: context: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/nuance/swype/usagedata/UsageData;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nuance/swype/usagedata/UsageData;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/BuildInfo;->getUsageDataFlurryKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2528
    new-instance v1, Lcom/nuance/swype/usagedata/AnalyticsFlurry;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/nuance/swype/usagedata/UsageData;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->getUsageDataFlurryKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nuance/swype/usagedata/AnalyticsFlurry;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2530
    :pswitch_2
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "init: creating AnalyticsFirebase"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2531
    new-instance v1, Lcom/nuance/swype/usagedata/AnalyticsFirebase;

    invoke-direct {v1}, Lcom/nuance/swype/usagedata/AnalyticsFirebase;-><init>()V

    goto :goto_0

    .line 2533
    :pswitch_3
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->isLocalyticsEnabledForThisDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2534
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "init: creating AnalyticsLocalytics"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2535
    new-instance v1, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;

    invoke-direct {v3, v5}, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;-><init>(B)V

    invoke-direct {v1, v2, v3}, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;-><init>(Landroid/content/Context;Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;)V

    goto/16 :goto_0

    .line 2537
    :cond_1
    new-instance v1, Lcom/nuance/swype/usagedata/AnalyticsNull;

    invoke-direct {v1}, Lcom/nuance/swype/usagedata/AnalyticsNull;-><init>()V

    goto/16 :goto_0

    .line 511
    :cond_2
    new-instance v1, Lcom/nuance/swype/usagedata/AnalyticsNull;

    invoke-direct {v1}, Lcom/nuance/swype/usagedata/AnalyticsNull;-><init>()V

    sput-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    goto/16 :goto_1

    .line 2521
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 483
    if-nez p0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    sput-object p0, Lcom/nuance/swype/usagedata/UsageData;->mContext:Landroid/content/Context;

    .line 490
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->sPermissionMap:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Permission;->READ_CONTACTS_CALL_LOGS:Lcom/nuance/swype/usagedata/UsageData$Permission;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->sPermissionMap:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.READ_SMS"

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Permission;->READ_SMS_CALL_LOGS:Lcom/nuance/swype/usagedata/UsageData$Permission;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->sPermissionMap:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Permission;->READ_CALL_LOG_CALL_LOGS:Lcom/nuance/swype/usagedata/UsageData$Permission;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-static {}, Lcom/nuance/swype/usagedata/UsageData;->init()V

    .line 496
    return-void
.end method

.method private static isEnabled(Z)Ljava/lang/String;
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 1158
    if-eqz p0, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method public static recordAdResult$7e29e9d3(Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;J)V
    .locals 17
    .param p0, "adLoadStatus"    # Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;
    .param p1, "loadTimeMs"    # J

    .prologue
    .line 845
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 849
    .local v3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/swype/usagedata/UsageData$1;->$SwitchMap$com$nuance$swype$input$ads$AdProvider$AD_LOAD_STATUS:[I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 869
    sget-object v5, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unknown AD_LOAD_STATUS: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 870
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_UNMAPPED:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 874
    .local v2, "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    :goto_0
    sget-object v5, Lcom/nuance/swype/usagedata/UsageData$AdResult;->SUCCESS:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    if-ne v2, v5, :cond_2

    .line 875
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$EventTag;->AD_LOADED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 876
    .local v4, "eventTag":Lcom/nuance/swype/usagedata/UsageData$EventTag;
    sget-object v5, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LOAD_TIME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v5}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3079
    move-wide/from16 v0, p1

    long-to-double v6, v0

    const-wide v10, 0x407f400000000000L    # 500.0

    div-double/2addr v6, v10

    .line 3082
    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    cmpl-double v5, v6, v10

    if-ltz v5, :cond_0

    .line 3083
    const-string/jumbo v5, "10s+"

    .line 876
    :goto_1
    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    :goto_2
    sget-object v5, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    invoke-virtual {v4}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 884
    return-void

    .line 851
    .end local v2    # "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    .end local v4    # "eventTag":Lcom/nuance/swype/usagedata/UsageData$EventTag;
    :pswitch_0
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$AdResult;->SUCCESS:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 852
    .restart local v2    # "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    goto :goto_0

    .line 854
    .end local v2    # "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    :pswitch_1
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_NO_FILL:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 855
    .restart local v2    # "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    goto :goto_0

    .line 857
    .end local v2    # "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    :pswitch_2
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_INVALID_REQUEST:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 858
    .restart local v2    # "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    goto :goto_0

    .line 860
    .end local v2    # "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    :pswitch_3
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_INTERNAL_ERROR:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 861
    .restart local v2    # "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    goto :goto_0

    .line 863
    .end local v2    # "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    :pswitch_4
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_NETWORK_ERROR:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 864
    .restart local v2    # "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    goto :goto_0

    .line 866
    .end local v2    # "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    :pswitch_5
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_UNKNOWN:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 867
    .restart local v2    # "adResult":Lcom/nuance/swype/usagedata/UsageData$AdResult;
    goto :goto_0

    .line 3088
    .restart local v4    # "eventTag":Lcom/nuance/swype/usagedata/UsageData$EventTag;
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 3089
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    .line 3093
    cmpl-double v5, v10, v6

    if-nez v5, :cond_1

    .line 3094
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v12

    .line 3097
    :cond_1
    const-string/jumbo v5, "%1.1f-%1.1fs"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v12

    const/4 v10, 0x1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 879
    .end local v4    # "eventTag":Lcom/nuance/swype/usagedata/UsageData$EventTag;
    :cond_2
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$EventTag;->AD_FAILURE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 880
    .restart local v4    # "eventTag":Lcom/nuance/swype/usagedata/UsageData$EventTag;
    sget-object v5, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->TYPE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v5}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$AdResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 849
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static recordBTKbUsage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1009
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "BTlocalytics recordBTKbUsage:"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1010
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "BT keyboard is in use, tag the usage"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1011
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventTag;->BLUETOOTH_KB_USAGE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1012
    return-void
.end method

.method public static recordBillboardClose$faab20d()V
    .locals 3

    .prologue
    .line 892
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventTag;->AD_BILLBOARD_CLOSE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 893
    return-void
.end method

.method public static recordCategoryBrowse(Ljava/lang/String;J)V
    .locals 3
    .param p0, "categoryName"    # Ljava/lang/String;
    .param p1, "browseTime"    # J

    .prologue
    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 638
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 639
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :goto_0
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->BROWSE_TIME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/nuance/swype/usagedata/UsageData;->getBrowseTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->CATEGORY_PAGE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 648
    return-void

    .line 642
    :cond_0
    const-string/jumbo v1, "NAME not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static recordDLMWipe$627721fe(Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;ZLjava/lang/String;)V
    .locals 3
    .param p0, "requestType"    # Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;
    .param p1, "isSyncOn"    # Z
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 975
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 977
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 978
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DLM_REQUEST_TYPE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    :goto_0
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->BACKUP_SYNC_STATUS:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v1, "true"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    if-eqz p2, :cond_2

    .line 988
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :goto_2
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->DLM_WIPE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1003
    return-void

    .line 981
    :cond_0
    const-string/jumbo v1, "DLM_REQUEST_TYPE not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 985
    :cond_1
    const-string/jumbo v1, "false"

    goto :goto_1

    .line 991
    :cond_2
    const-string/jumbo v1, "LANGUAGE not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method

.method public static recordDownloadEvent(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V
    .locals 3
    .param p0, "themeName"    # Ljava/lang/String;
    .param p1, "location"    # Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;
    .param p2, "result"    # Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    .prologue
    .line 657
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 659
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 660
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :goto_0
    if-eqz p1, :cond_1

    .line 667
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LOCATION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :goto_1
    if-eqz p2, :cond_2

    .line 674
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->RESULT:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :goto_2
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->DOWNLOAD:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 681
    return-void

    .line 663
    :cond_0
    const-string/jumbo v1, "NAME not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 670
    :cond_1
    const-string/jumbo v1, "LOCATION not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 677
    :cond_2
    const-string/jumbo v1, "RESULT not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method

.method public static recordEmojiSelected(Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;)V
    .locals 5
    .param p0, "source"    # Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    .prologue
    .line 1257
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "recordEmojiSelected: Recording Emoji from "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1259
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedAttribute;->SOURCE:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->EMOJI_SELECTED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1261
    return-void
.end method

.method public static recordEvent(Lcom/nuance/swype/usagedata/UsageData$Event;Ljava/util/Map;)V
    .locals 1
    .param p0, "event"    # Lcom/nuance/swype/usagedata/UsageData$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/usagedata/UsageData$Event;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/usagedata/UsageData$Event;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nuance/swype/usagedata/UsageData;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 600
    return-void
.end method

.method static recordEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    invoke-interface {v0, p0, p1}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 610
    return-void
.end method

.method public static recordKeyboardOpen(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 817
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    const-string/jumbo v2, "usagedata_keyboard_opens"

    invoke-virtual {v1, v2, v5}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 819
    .local v0, "keyboardOpens":I
    add-int/lit8 v0, v0, 0x1

    .line 821
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "recordKeyboardOpen: keyboardOpens:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 825
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 826
    const/4 v0, 0x0

    .line 827
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->KEYBOARD_OPEN_X10:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 830
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    const-string/jumbo v2, "usagedata_keyboard_opens"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    .line 831
    return-void
.end method

.method public static recordLanguageDownloadRequest(Ljava/lang/String;)V
    .locals 5
    .param p0, "englishName"    # Ljava/lang/String;

    .prologue
    .line 1264
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "recordLanguageDownloadRequest: Recording download request for: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1266
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DOWNLOAD_LANGUAGE_NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->LANGUAGE_DOWNLOAD_REQUEST:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1268
    return-void
.end method

.method public static recordMyWordsSettings(Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;ZZ)V
    .locals 3
    .param p0, "status"    # Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    .param p1, "livingLanguageEnabled"    # Z
    .param p2, "askBeforeAdd"    # Z

    .prologue
    .line 585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 586
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->BACKUP_SYNC_STATUS:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LIVING_LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/nuance/swype/usagedata/UsageData;->isEnabled(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DICTIONARY_BEHAVIOR:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->EXPLICIT:Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    .line 589
    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->MY_WORDS:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 591
    return-void

    .line 589
    :cond_0
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->IMPLICIT:Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static recordPermissionGrantResult(Ljava/lang/String;ILandroid/app/Activity;)V
    .locals 7
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "grantResult"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 701
    sget-object v3, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "recordPermissionGrantResult: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2713
    if-nez p1, :cond_0

    .line 2714
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->ALLOWED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .line 703
    .local v0, "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    :goto_0
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->sPermissionMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/usagedata/UsageData$Permission;

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->recordPermissionRequest(Lcom/nuance/swype/usagedata/UsageData$Permission;Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;)V

    .line 704
    return-void

    .line 2716
    .end local v0    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    :cond_0
    invoke-static {p2, p0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2717
    :goto_1
    if-eqz v1, :cond_2

    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->NEVER_SHOW_AGAIN:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2716
    goto :goto_1

    .line 2717
    :cond_2
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->DENIED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    goto :goto_0
.end method

.method public static recordPermissionRequest(Lcom/nuance/swype/usagedata/UsageData$Permission;Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;)V
    .locals 3
    .param p0, "permission"    # Lcom/nuance/swype/usagedata/UsageData$Permission;
    .param p1, "userAction"    # Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .prologue
    .line 689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 690
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;->USER_ACTION:Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    invoke-virtual {p0}, Lcom/nuance/swype/usagedata/UsageData$Permission;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 692
    return-void
.end method

.method public static recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V
    .locals 6
    .param p0, "newScreen"    # Lcom/nuance/swype/usagedata/UsageData$Screen;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 618
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recordScreenVisited: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 620
    if-nez p0, :cond_0

    .line 621
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "recordScreenVisited: newScreen null! ignoring"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 628
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/usagedata/UsageData;->recordThemesUsageData(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 627
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    invoke-virtual {p0}, Lcom/nuance/swype/usagedata/UsageData$Screen;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/usagedata/Analytics;->tagScreen(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static recordSettingsSummary(ZZZ)V
    .locals 3
    .param p0, "numberRowEnabled"    # Z
    .param p1, "showSecondaries"    # Z
    .param p2, "celluarDataEnabled"    # Z

    .prologue
    .line 957
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 958
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->NUMBER_ROW:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/nuance/swype/usagedata/UsageData;->isEnabled(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->SECONDARY_CHARACTERS:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/nuance/swype/usagedata/UsageData;->isEnabled(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->CELLULAR_DATA:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/nuance/swype/usagedata/UsageData;->isEnabled(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->SETTINGS_SUMMARY:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 962
    return-void
.end method

.method public static recordStoreTransactionComplete(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$PurchaseType;Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;)V
    .locals 3
    .param p0, "themeSku"    # Ljava/lang/String;
    .param p1, "price"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nuance/swype/usagedata/UsageData$PurchaseType;
    .param p3, "pp"    # Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

    .prologue
    .line 728
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 730
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 731
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :goto_0
    if-eqz p1, :cond_1

    .line 738
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->PRICE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    :goto_1
    if-eqz p2, :cond_2

    .line 745
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->TYPE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    :goto_2
    if-eqz p3, :cond_3

    .line 752
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->PAYMENT_PROVIDER:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :goto_3
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_TRANSACTION_COMPLETED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 759
    return-void

    .line 734
    :cond_0
    const-string/jumbo v1, "NAME not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 741
    :cond_1
    const-string/jumbo v1, "PRICE not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 748
    :cond_2
    const-string/jumbo v1, "TYPE not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 755
    :cond_3
    const-string/jumbo v1, "PAYMENT_PROVIDER not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3
.end method

.method public static recordStoreTransactionFailed(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;Ljava/lang/String;I)V
    .locals 3
    .param p0, "themeSku"    # Ljava/lang/String;
    .param p1, "pp"    # Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;
    .param p2, "errorDesc"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 771
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 772
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    :goto_0
    if-eqz p1, :cond_1

    .line 779
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->PAYMENT_PROVIDER:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    :goto_1
    if-eqz p2, :cond_2

    .line 786
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->ERROR_DESCRIPTION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :goto_2
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->ERROR_CODE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_TRANSACTION_FAILED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 795
    return-void

    .line 775
    :cond_0
    const-string/jumbo v1, "NAME not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 782
    :cond_1
    const-string/jumbo v1, "PAYMENT_PROVIDER not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 789
    :cond_2
    const-string/jumbo v1, "ERROR_DESCRIPTION not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method

.method public static recordThemeUpsell(Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "userAction"    # Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;
    .param p1, "themeName"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 923
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 925
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 926
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->USER_ACTION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    :goto_0
    if-eqz p1, :cond_1

    .line 933
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->THEME_NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    :goto_1
    if-eqz p2, :cond_2

    .line 940
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->TAB_PREVIEWED_FROM:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    :goto_2
    if-eqz p3, :cond_3

    .line 947
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->CATEGORY:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    :goto_3
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->BUNDLE_UPSELL:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 954
    return-void

    .line 929
    :cond_0
    const-string/jumbo v1, "USER_ACTION not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 936
    :cond_1
    const-string/jumbo v1, "THEME_NAME not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 943
    :cond_2
    const-string/jumbo v1, "TAB_PREVIEWED_FROM not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 950
    :cond_3
    const-string/jumbo v1, "CATEGORY not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3
.end method

.method private static recordThemesUsageData(Lcom/nuance/swype/usagedata/UsageData$Screen;)V
    .locals 12
    .param p0, "newScreen"    # Lcom/nuance/swype/usagedata/UsageData$Screen;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1021
    const/4 v3, 0x0

    .line 1022
    .local v3, "isMyThemesExitEvent":Z
    const/4 v2, 0x0

    .line 1024
    .local v2, "isGetThemesExitEvent":Z
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "activeScreen="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/nuance/swype/usagedata/UsageData;->activeScreen:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1025
    .local v4, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "newScreen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1027
    sget-object v6, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "recordThemesUsageData: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1029
    sget-object v6, Lcom/nuance/swype/usagedata/UsageData;->activeScreen:Lcom/nuance/swype/usagedata/UsageData$Screen;

    if-eq v6, p0, :cond_5

    .line 1030
    sget-object v6, Lcom/nuance/swype/usagedata/UsageData$Screen;->MY_THEMES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    sget-object v7, Lcom/nuance/swype/usagedata/UsageData;->activeScreen:Lcom/nuance/swype/usagedata/UsageData$Screen;

    if-ne v6, v7, :cond_3

    .line 1031
    const/4 v3, 0x1

    .line 1042
    :goto_0
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 1043
    :cond_0
    const/4 v1, 0x0

    .line 1044
    .local v1, "browseTimeSec":Ljava/lang/Long;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1046
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-wide v6, Lcom/nuance/swype/usagedata/UsageData;->browseStartTimeThemes:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 1047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/nuance/swype/usagedata/UsageData;->browseStartTimeThemes:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/nuance/swype/usagedata/UsageData;->browseStartTimeThemes:J

    .line 1054
    :goto_1
    if-eqz v3, :cond_7

    .line 1055
    sget-object v5, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_MY_THEMES_VISIT:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 1061
    .local v5, "tagEvent":Lcom/nuance/swype/usagedata/UsageData$EventTag;
    :goto_2
    if-eqz v5, :cond_1

    .line 1062
    sget-object v6, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->BROWSE_TIME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v6}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/nuance/swype/usagedata/UsageData;->getBrowseTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v6, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    invoke-virtual {v5}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1067
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "browseTimeSec":Ljava/lang/Long;
    .end local v5    # "tagEvent":Lcom/nuance/swype/usagedata/UsageData$EventTag;
    :cond_1
    sput-object p0, Lcom/nuance/swype/usagedata/UsageData;->activeScreen:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 1070
    sget-object v6, Lcom/nuance/swype/usagedata/UsageData$Screen;->MY_THEMES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    if-ne v6, p0, :cond_8

    .line 1071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/nuance/swype/usagedata/UsageData;->browseStartTimeThemes:J

    .line 1076
    :cond_2
    :goto_3
    return-void

    .line 1032
    :cond_3
    sget-object v6, Lcom/nuance/swype/usagedata/UsageData$Screen;->GET_THEMES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    sget-object v7, Lcom/nuance/swype/usagedata/UsageData;->activeScreen:Lcom/nuance/swype/usagedata/UsageData$Screen;

    if-ne v6, v7, :cond_4

    .line 1033
    const/4 v2, 0x1

    goto :goto_0

    .line 1035
    :cond_4
    sget-object v6, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "recordThemesUsageData: oldScreen="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/nuance/swype/usagedata/UsageData;->activeScreen:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", not committing usage data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 1039
    :cond_5
    sget-object v6, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "recordThemesUsageData: oldScreen==newScreen, not committing usage data"

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1050
    .restart local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "browseTimeSec":Ljava/lang/Long;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "recordThemesUsageData: invalid browseStartTimeThemes: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v8, Lcom/nuance/swype/usagedata/UsageData;->browseStartTimeThemes:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 1058
    :cond_7
    sget-object v5, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_GET_THEMES_VISIT:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .restart local v5    # "tagEvent":Lcom/nuance/swype/usagedata/UsageData$EventTag;
    goto :goto_2

    .line 1073
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "browseTimeSec":Ljava/lang/Long;
    .end local v5    # "tagEvent":Lcom/nuance/swype/usagedata/UsageData$EventTag;
    :cond_8
    sget-object v6, Lcom/nuance/swype/usagedata/UsageData$Screen;->GET_THEMES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    if-ne v6, p0, :cond_2

    .line 1074
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/nuance/swype/usagedata/UsageData;->browseStartTimeThemes:J

    goto :goto_3
.end method

.method public static recordUsingCallLogScanner()V
    .locals 4

    .prologue
    .line 1247
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "recordUsingCallLogScanner: Recording Call log scanner"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1248
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventTag;->USED_CALL_LOG_SCANNER:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1249
    return-void
.end method

.method public static recordUsingGmailScanner()V
    .locals 4

    .prologue
    .line 1252
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "recordUsingGmailScanner: Recording Gmail scanner"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1253
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventTag;->USED_GMAIL_SCANNER:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1254
    return-void
.end method

.method public static recordUsingSmsScanner()V
    .locals 4

    .prologue
    .line 1242
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "recordUsingSmsScanner: Recording sms scanner"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1243
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventTag;->USED_SMS_SCANNER:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1244
    return-void
.end method

.method public static recordVoiceUsageEvent(Ljava/lang/String;)V
    .locals 3
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 803
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 804
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v1}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    :goto_0
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->VOICE_USAGE_DRAGON:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/usagedata/Analytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 811
    return-void

    .line 807
    :cond_0
    const-string/jumbo v1, "LANGUAGE not provided!"

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->eventError(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V
    .locals 4
    .param p0, "dim"    # Lcom/nuance/swype/usagedata/CustomDimension$Dimension;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1104
    if-nez p0, :cond_0

    .line 1105
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "setCustomDimensions: dim is null, ignoring"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1114
    :goto_0
    return-void

    .line 1108
    :cond_0
    if-nez p1, :cond_1

    .line 1109
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "setCustomDimensions: value is null, ignoring"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 1113
    :cond_1
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    invoke-interface {v0, p0, p1}, Lcom/nuance/swype/usagedata/Analytics;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startSession(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 559
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startSession: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 562
    invoke-static {}, Lcom/nuance/swype/usagedata/UsageData;->init()V

    .line 564
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData;->mAnalyticsImpl:Lcom/nuance/swype/usagedata/Analytics;

    invoke-interface {v0, p0}, Lcom/nuance/swype/usagedata/Analytics;->startSession(Landroid/content/Context;)V

    .line 565
    return-void
.end method
