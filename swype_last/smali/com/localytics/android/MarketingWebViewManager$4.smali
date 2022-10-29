.class Lcom/localytics/android/MarketingWebViewManager$4;
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

.field final synthetic val$eventAttributes:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingWebViewManager;Ljava/util/Map;)V
    .registers 3

    .prologue
    .line 610
    iput-object p1, p0, Lcom/localytics/android/MarketingWebViewManager$4;->this$0:Lcom/localytics/android/MarketingWebViewManager;

    iput-object p2, p0, Lcom/localytics/android/MarketingWebViewManager$4;->val$eventAttributes:Ljava/util/Map;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 616
    :try_start_1
    iget-object v7, p0, Lcom/localytics/android/MarketingWebViewManager$4;->val$eventAttributes:Ljava/util/Map;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/localytics/android/MarketingWebViewManager$4;->val$eventAttributes:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_e

    .line 635
    :cond_d
    :goto_d
    return-object v6

    .line 621
    :cond_e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 622
    .local v3, "jsonAttributes":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/localytics/android/MarketingWebViewManager$4;->val$eventAttributes:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 624
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 625
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 626
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_39

    goto :goto_1d

    .line 630
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "jsonAttributes":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_39
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "MarketingCallable ON_MARKETING_JS_GET_ATTRIBUTES exception"

    invoke-static {v7, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "jsonAttributes":Lorg/json/JSONObject;
    :cond_41
    :try_start_41
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_39

    move-result-object v6

    goto :goto_d
.end method
