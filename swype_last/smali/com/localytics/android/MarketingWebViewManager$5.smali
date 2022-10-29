.class Lcom/localytics/android/MarketingWebViewManager$5;
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
    .line 641
    iput-object p1, p0, Lcom/localytics/android/MarketingWebViewManager$5;->this$0:Lcom/localytics/android/MarketingWebViewManager;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 647
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 648
    .local v0, "dimension":I
    const/4 v3, 0x1

    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/String;

    .line 649
    .local v2, "value":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/localytics/android/Localytics;->setCustomDimension(ILjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    .line 656
    .end local v0    # "dimension":I
    .end local v2    # "value":Ljava/lang/String;
    :goto_11
    const/4 v3, 0x0

    return-object v3

    .line 651
    :catch_13
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MarketingCallable ON_MARKETING_JS_SET_CUSTOM_DIMENSIONS exception"

    invoke-static {v3, v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method
