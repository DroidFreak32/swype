.class Lcom/localytics/android/InAppManager$10$2$1;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager$10$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/localytics/android/InAppManager$10$2;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager$10$2;)V
    .locals 0

    .prologue
    .line 2251
    iput-object p1, p0, Lcom/localytics/android/InAppManager$10$2$1;->this$2:Lcom/localytics/android/InAppManager$10$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2257
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/InAppManager$10$2$1;->this$2:Lcom/localytics/android/InAppManager$10$2;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$10$2;->this$1:Lcom/localytics/android/InAppManager$10;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$10;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/localytics/android/InAppManager$10$2$1;->this$2:Lcom/localytics/android/InAppManager$10$2;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$10$2;->this$1:Lcom/localytics/android/InAppManager$10;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$10;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "marketing_dialog"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/localytics/android/InAppManager$10$2$1;->this$2:Lcom/localytics/android/InAppManager$10$2;

    iget-object v3, v3, Lcom/localytics/android/InAppManager$10$2;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    const-string/jumbo v4, "campaign_id"

    invoke-virtual {v3, v4}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2277
    :cond_0
    :goto_0
    return-void

    .line 2262
    :cond_1
    iget-object v1, p0, Lcom/localytics/android/InAppManager$10$2$1;->this$2:Lcom/localytics/android/InAppManager$10$2;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$10$2;->this$1:Lcom/localytics/android/InAppManager$10;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$10;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v2, p0, Lcom/localytics/android/InAppManager$10$2$1;->this$2:Lcom/localytics/android/InAppManager$10$2;

    iget-object v2, v2, Lcom/localytics/android/InAppManager$10$2;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/localytics/android/InAppManager;->access$300(Lcom/localytics/android/InAppManager;Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)Lcom/localytics/android/InAppCampaign;

    move-result-object v1

    .line 2263
    invoke-static {v1}, Lcom/localytics/android/InAppDialogFragment;->newInstance(Lcom/localytics/android/InAppCampaign;)Lcom/localytics/android/InAppDialogFragment;

    move-result-object v2

    .line 2264
    iget-object v1, p0, Lcom/localytics/android/InAppManager$10$2$1;->this$2:Lcom/localytics/android/InAppManager$10$2;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$10$2;->this$1:Lcom/localytics/android/InAppManager$10;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$10;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v1

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v1}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/MessagingListener;

    invoke-virtual {v2, v1}, Lcom/localytics/android/InAppDialogFragment;->setMessagingListener(Lcom/localytics/android/MessagingListener;)Lcom/localytics/android/InAppDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/InAppManager$10$2$1;->this$2:Lcom/localytics/android/InAppManager$10$2;

    iget-object v2, v2, Lcom/localytics/android/InAppManager$10$2;->this$1:Lcom/localytics/android/InAppManager$10;

    iget-object v2, v2, Lcom/localytics/android/InAppManager$10;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v2}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "marketing_dialog"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/localytics/android/InAppManager$10$2$1;->this$2:Lcom/localytics/android/InAppManager$10$2;

    iget-object v4, v4, Lcom/localytics/android/InAppManager$10$2;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    const-string/jumbo v5, "campaign_id"

    invoke-virtual {v4, v5}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/localytics/android/InAppDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2271
    iget-object v1, p0, Lcom/localytics/android/InAppManager$10$2$1;->this$2:Lcom/localytics/android/InAppManager$10$2;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$10$2;->this$1:Lcom/localytics/android/InAppManager$10;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$10;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2273
    :catch_0
    move-exception v0

    .line 2275
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MarketingCallable ON_IN_APP_TEST_SHOW_CAMPAIGN exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
