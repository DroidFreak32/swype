.class Lcom/localytics/android/MarketingWebViewManager$3;
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
    .line 579
    iput-object p1, p0, Lcom/localytics/android/MarketingWebViewManager$3;->this$0:Lcom/localytics/android/MarketingWebViewManager;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 583
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 586
    .local v3, "jsonCustomDimensions":Lorg/json/JSONObject;
    :try_start_5
    iget-object v4, p0, Lcom/localytics/android/MarketingWebViewManager$3;->this$0:Lcom/localytics/android/MarketingWebViewManager;

    iget-object v4, v4, Lcom/localytics/android/MarketingWebViewManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getCachedCustomDimensions()Ljava/util/Map;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_38

    move-result-object v0

    .line 587
    .local v0, "customDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    const/16 v4, 0x14

    if-ge v2, v4, :cond_3f

    .line 591
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2d} :catch_30
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_38

    .line 587
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 595
    :catch_30
    move-exception v4

    :try_start_31
    const-string/jumbo v4, "[JavaScriptClient]: Failed to get custom dimension"

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_37} :catch_38

    goto :goto_2d

    .line 599
    .end local v0    # "customDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "i":I
    :catch_38
    move-exception v1

    .line 601
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MarketingCallable ON_MARKETING_JS_GET_CUSTOM_DIMENSIONS exception"

    invoke-static {v4, v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3f
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
