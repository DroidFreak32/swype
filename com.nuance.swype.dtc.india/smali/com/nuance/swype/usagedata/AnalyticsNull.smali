.class final Lcom/nuance/swype/usagedata/AnalyticsNull;
.super Ljava/lang/Object;
.source "AnalyticsNull.java"

# interfaces
.implements Lcom/nuance/swype/usagedata/Analytics;


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "AnalyticsNull"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/usagedata/AnalyticsNull;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final endSession(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsNull;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "endSession"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public final setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V
    .locals 4
    .param p1, "dim"    # Lcom/nuance/swype/usagedata/CustomDimension$Dimension;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsNull;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setCustomDimension"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public final startSession(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsNull;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "startSession"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 18
    return-void
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
    .line 27
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsNull;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "tagEvent"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public final tagScreen(Ljava/lang/String;)V
    .locals 4
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsNull;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "tagScreen"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 33
    return-void
.end method
