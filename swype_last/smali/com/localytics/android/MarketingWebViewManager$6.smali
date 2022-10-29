.class Lcom/localytics/android/MarketingWebViewManager$6;
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
    .line 662
    iput-object p1, p0, Lcom/localytics/android/MarketingWebViewManager$6;->this$0:Lcom/localytics/android/MarketingWebViewManager;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 668
    :try_start_0
    iget-object v2, p0, Lcom/localytics/android/MarketingWebViewManager$6;->this$0:Lcom/localytics/android/MarketingWebViewManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/localytics/android/MarketingWebViewManager;->handleUrl(Ljava/lang/String;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    .line 675
    :goto_a
    const/4 v1, 0x0

    return-object v1

    .line 670
    :catch_c
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MarketingCallable ON_MARKETING_JS_NAVIGATE exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method
