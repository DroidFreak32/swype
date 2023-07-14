.class final Lcom/nuance/swype/usagedata/AnalyticsFlurry;
.super Ljava/lang/Object;
.source "AnalyticsFlurry.java"

# interfaces
.implements Lcom/nuance/swype/usagedata/Analytics;


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final mListener:Lcom/flurry/android/FlurryAgentListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "AnalyticsFlurry"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 21
    new-instance v0, Lcom/nuance/swype/usagedata/AnalyticsFlurry$1;

    invoke-direct {v0}, Lcom/nuance/swype/usagedata/AnalyticsFlurry$1;-><init>()V

    sput-object v0, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->mListener:Lcom/flurry/android/FlurryAgentListener;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "constructor"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 35
    new-instance v0, Lcom/flurry/android/FlurryAgent$Builder;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent$Builder;-><init>()V

    .line 2465
    iput-boolean v4, v0, Lcom/flurry/android/FlurryAgent$Builder;->e:Z

    .line 3452
    const-wide/32 v2, 0x493e0

    iput-wide v2, v0, Lcom/flurry/android/FlurryAgent$Builder;->d:J

    .line 39
    sget-object v1, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->mListener:Lcom/flurry/android/FlurryAgentListener;

    .line 4406
    sput-object v1, Lcom/flurry/android/FlurryAgent$Builder;->a:Lcom/flurry/android/FlurryAgentListener;

    .line 4418
    iput-boolean v4, v0, Lcom/flurry/android/FlurryAgent$Builder;->b:Z

    .line 4430
    const/4 v1, 0x7

    iput v1, v0, Lcom/flurry/android/FlurryAgent$Builder;->c:I

    .line 4477
    iput-boolean v4, v0, Lcom/flurry/android/FlurryAgent$Builder;->f:Z

    .line 4483
    sget-object v1, Lcom/flurry/android/FlurryAgent$Builder;->a:Lcom/flurry/android/FlurryAgentListener;

    iget-boolean v2, v0, Lcom/flurry/android/FlurryAgent$Builder;->b:Z

    iget v3, v0, Lcom/flurry/android/FlurryAgent$Builder;->c:I

    iget-wide v4, v0, Lcom/flurry/android/FlurryAgent$Builder;->d:J

    iget-boolean v6, v0, Lcom/flurry/android/FlurryAgent$Builder;->e:Z

    iget-boolean v7, v0, Lcom/flurry/android/FlurryAgent$Builder;->f:Z

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgentListener;ZIJZZLandroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method private static logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "eventId"    # Ljava/lang/String;
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
    .line 95
    .line 5131
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5133
    :cond_0
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;

    :goto_0
    return-void

    .line 5136
    :cond_1
    invoke-static {p0, p1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_0
.end method


# virtual methods
.method public final endSession(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "endSession: context: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 60
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public final setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V
    .locals 5
    .param p1, "dim"    # Lcom/nuance/swype/usagedata/CustomDimension$Dimension;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setCustomDimension: dim: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p1}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/flurry/android/FlurryAgent;->addSessionProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public final startSession(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startSession: context: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 53
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public final tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
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
    .line 65
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tagEvent: event: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", attributes: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_0

    const-string/jumbo v0, "null"

    .line 66
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 65
    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 68
    invoke-static {p1, p2}, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final tagScreen(Ljava/lang/String;)V
    .locals 5
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v0, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tagScreen: screen: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Screen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    return-void
.end method
