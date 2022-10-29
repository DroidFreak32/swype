.class Lcom/localytics/android/InAppManager$10;
.super Lcom/localytics/android/MarketingCallable;
.source "InAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager;->showInAppTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InAppManager;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 2211
    iput-object p1, p0, Lcom/localytics/android/InAppManager$10;->this$0:Lcom/localytics/android/InAppManager;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$10;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 2217
    const/4 v5, 0x0

    :try_start_1
    aget-object v3, p1, v5

    check-cast v3, Lcom/localytics/android/MarketingMessage;

    .line 2218
    .local v3, "marketingMessage":Lcom/localytics/android/MarketingMessage;
    iget-object v5, p0, Lcom/localytics/android/InAppManager$10;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v5, v5, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const/4 v6, 0x1

    # invokes: Lcom/localytics/android/InAppManager;->updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V
    invoke-static {v3, v5, v6}, Lcom/localytics/android/InAppManager;->access$500(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V

    .line 2219
    const-string/jumbo v5, "_id"

    invoke-virtual {v3, v5}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2221
    .local v4, "ruleId":I
    iget-object v5, p0, Lcom/localytics/android/InAppManager$10;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v5, v5, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    invoke-virtual {v5, v4}, Lcom/localytics/android/CreativeManager;->inAppCreativeExists(I)Z

    move-result v0

    .line 2222
    .local v0, "creativeExist":Z
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2225
    .local v2, "mainThreadHandler":Landroid/os/Handler;
    if-nez v0, :cond_35

    .line 2227
    new-instance v5, Lcom/localytics/android/InAppManager$10$1;

    invoke-direct {v5, p0}, Lcom/localytics/android/InAppManager$10$1;-><init>(Lcom/localytics/android/InAppManager$10;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2245
    :cond_35
    iget-object v5, p0, Lcom/localytics/android/InAppManager$10;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;
    invoke-static {v5}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v5

    new-instance v6, Lcom/localytics/android/InAppManager$10$2;

    invoke-direct {v6, p0, v3, v0, v2}, Lcom/localytics/android/InAppManager$10$2;-><init>(Lcom/localytics/android/InAppManager$10;Lcom/localytics/android/MarketingMessage;ZLandroid/os/Handler;)V

    invoke-virtual {v5, v6}, Lcom/localytics/android/MarketingHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_45

    .line 2312
    .end local v0    # "creativeExist":Z
    .end local v2    # "mainThreadHandler":Landroid/os/Handler;
    .end local v3    # "marketingMessage":Lcom/localytics/android/MarketingMessage;
    .end local v4    # "ruleId":I
    :goto_43
    const/4 v5, 0x0

    return-object v5

    .line 2307
    :catch_45
    move-exception v1

    .line 2309
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MarketingCallable ON_IN_APP_TEST_SHOW_CAMPAIGN exception"

    invoke-static {v5, v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method
