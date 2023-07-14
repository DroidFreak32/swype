.class public final Lcom/nuance/swype/usagedata/AnalyticsLocalytics;
.super Ljava/lang/Object;
.source "AnalyticsLocalytics.java"

# interfaces
.implements Lcom/nuance/swype/usagedata/Analytics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/usagedata/AnalyticsLocalytics$AnalyticsListener;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final mSessionManager:Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "AnalyticsLocalytics"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionManager"    # Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->mSessionManager:Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;

    .line 28
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setLoggingEnabled(Z)V

    .line 29
    invoke-static {p1}, Lcom/localytics/android/Localytics;->integrate(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics$AnalyticsListener;

    invoke-direct {v0, p1}, Lcom/nuance/swype/usagedata/AnalyticsLocalytics$AnalyticsListener;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setAnalyticsListener(Lcom/localytics/android/AnalyticsListener;)V

    .line 31
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method private closeLocalyticsSession()V
    .locals 4

    .prologue
    .line 59
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Closing localytics session."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Lcom/localytics/android/Localytics;->closeSession()V

    .line 61
    invoke-static {}, Lcom/localytics/android/Localytics;->upload()V

    .line 62
    iget-object v0, p0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->mSessionManager:Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;->markSessionClosed()V

    .line 63
    return-void
.end method

.method public static isLocalyticsEnabledForThisDevice(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "android_id"

    invoke-static {v2, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "androidId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 95
    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 96
    .local v1, "isEnabledForDevice":Ljava/lang/Boolean;
    sget-object v5, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isLocalyticsEnabledForThisDevice: "

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ENABLED"

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " for Android ID: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 96
    invoke-interface {v5, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 108
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .end local v1    # "isEnabledForDevice":Ljava/lang/Boolean;
    :cond_0
    move v2, v4

    .line 95
    goto :goto_0

    .line 97
    .restart local v1    # "isEnabledForDevice":Ljava/lang/Boolean;
    :cond_1
    const-string/jumbo v2, "DISABLED"

    goto :goto_1

    .line 100
    .end local v1    # "isEnabledForDevice":Ljava/lang/Boolean;
    :cond_2
    sget-object v2, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "isLocalyticsEnabledForThisDevice: localytics DISABLED for null Android ID"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 101
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .restart local v1    # "isEnabledForDevice":Ljava/lang/Boolean;
    goto :goto_2
.end method


# virtual methods
.method public final endSession(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->mSessionManager:Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;->canClose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->closeLocalyticsSession()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Skipping closing localytics session."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V
    .locals 4
    .param p1, "dim"    # Lcom/nuance/swype/usagedata/CustomDimension$Dimension;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setCustomDimension... dim:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; value:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1044
    iget v0, p1, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->index:I

    .line 81
    invoke-static {v0, p2}, Lcom/localytics/android/Localytics;->setCustomDimension(ILjava/lang/String;)V

    .line 82
    return-void
.end method

.method public final startSession(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 35
    iget-object v0, p0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->mSessionManager:Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;->canOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->mSessionManager:Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->closeLocalyticsSession()V

    .line 40
    :cond_0
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Opening localytics session."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lcom/localytics/android/Localytics;->openSession()V

    .line 42
    invoke-static {}, Lcom/localytics/android/Localytics;->upload()V

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->mSessionManager:Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;->markSessionOpened()V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Skipping starting a new localytics session."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
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
    .line 67
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v3, "tagEvent... event:"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "; attributes:"

    aput-object v3, v2, v0

    const/4 v3, 0x3

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    .line 67
    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 69
    invoke-static {p1, p2}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    return-void

    .line 68
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final tagScreen(Ljava/lang/String;)V
    .locals 4
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "tagScreen... screen:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 75
    invoke-static {p1}, Lcom/localytics/android/Localytics;->tagScreen(Ljava/lang/String;)V

    .line 76
    return-void
.end method
