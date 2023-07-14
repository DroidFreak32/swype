.class final Lcom/nuance/swype/usagedata/AnalyticsFlurry$1;
.super Ljava/lang/Object;
.source "AnalyticsFlurry.java"

# interfaces
.implements Lcom/flurry/android/FlurryAgentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/AnalyticsFlurry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSessionStarted()V
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Lcom/nuance/swype/usagedata/AnalyticsFlurry;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onSessionStarted"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 26
    return-void
.end method
