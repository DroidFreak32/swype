.class Lcom/localytics/android/LocalyticsManager$1;
.super Ljava/lang/Object;
.source "LocalyticsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocalyticsManager;->dismissCurrentInAppMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocalyticsManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsManager;)V
    .registers 2

    .prologue
    .line 539
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager$1;->this$0:Lcom/localytics/android/LocalyticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/LocalyticsManager$1;->this$0:Lcom/localytics/android/LocalyticsManager;

    # invokes: Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;
    invoke-static {v1}, Lcom/localytics/android/LocalyticsManager;->access$100(Lcom/localytics/android/LocalyticsManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/localytics/android/MarketingHandler;->dismissCurrentInAppMessage()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 550
    :goto_9
    return-void

    .line 546
    :catch_a
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Exception while dismissing current in-app"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
