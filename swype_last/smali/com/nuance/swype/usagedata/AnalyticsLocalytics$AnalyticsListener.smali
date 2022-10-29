.class final Lcom/nuance/swype/usagedata/AnalyticsLocalytics$AnalyticsListener;
.super Lcom/localytics/android/AnalyticsListenerAdapter;
.source "AnalyticsLocalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/AnalyticsLocalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnalyticsListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsListenerAdapter;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics$AnalyticsListener;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method


# virtual methods
.method public final localyticsDidTagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .registers 10
    .param p1, "eventName"    # Ljava/lang/String;
    .param p3, "customerValueIncrease"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/localytics/android/AnalyticsListenerAdapter;->localyticsDidTagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 140
    # getter for: Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v3, "localytics did tagEvent... eventName:"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, " attributes:"

    aput-object v3, v2, v0

    const/4 v3, 0x3

    if-eqz p2, :cond_33

    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_20
    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string/jumbo v3, " customeValueIncrease:"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 142
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    .line 140
    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 143
    return-void

    .line 141
    :cond_33
    const-string/jumbo v0, ""

    goto :goto_20
.end method

.method public final localyticsSessionWillClose()V
    .registers 5

    .prologue
    .line 132
    invoke-super {p0}, Lcom/localytics/android/AnalyticsListenerAdapter;->localyticsSessionWillClose()V

    .line 133
    # getter for: Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "localyticsSession will be closed..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public final localyticsSessionWillOpen(ZZZ)V
    .registers 10
    .param p1, "isFirst"    # Z
    .param p2, "isUpgrade"    # Z
    .param p3, "isResume"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    # getter for: Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "localyticsSession will be opened... isFirst:"

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "  isUpgrade:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 121
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "  isResume:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 120
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 122
    # getter for: Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/usagedata/AnalyticsLocalytics;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Setting custom dimensions"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/usagedata/AnalyticsLocalytics$AnalyticsListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->updateCustomDimensions()V

    .line 128
    return-void
.end method
