.class Lcom/localytics/android/MarketingWebViewManager$7;
.super Lcom/localytics/android/MarketingCallable;
.source "MarketingWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/MarketingWebViewManager;->getJavaScriptCallbacks(Ljava/util/Map;)Landroid/util/SparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingWebViewManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingWebViewManager;)V
    .registers 2

    .prologue
    .line 681
    iput-object p1, p0, Lcom/localytics/android/MarketingWebViewManager$7;->this$0:Lcom/localytics/android/MarketingWebViewManager;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 687
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager$7;->this$0:Lcom/localytics/android/MarketingWebViewManager;

    iget-object v1, v1, Lcom/localytics/android/MarketingWebViewManager;->mMessageHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    .line 694
    :goto_c
    const/4 v1, 0x0

    return-object v1

    .line 689
    :catch_e
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MarketingCallable ON_MARKETING_JS_CLOSE_WINDOW exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
