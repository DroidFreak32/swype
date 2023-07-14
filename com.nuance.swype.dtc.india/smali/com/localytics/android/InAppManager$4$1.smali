.class Lcom/localytics/android/InAppManager$4$1;
.super Landroid/os/AsyncTask;
.source "InAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/InAppManager$4;

.field final synthetic val$campaignId:I


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager$4;I)V
    .locals 0

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iput p2, p0, Lcom/localytics/android/InAppManager$4$1;->val$campaignId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1619
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v1

    iget v2, p0, Lcom/localytics/android/InAppManager$4$1;->val$campaignId:I

    invoke-virtual {v1, v2}, Lcom/localytics/android/MarketingHandler;->setInAppAsDisplayed(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1626
    :goto_0
    return-object v1

    .line 1621
    :catch_0
    move-exception v0

    .line 1623
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Exception while trying to display in-app"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1626
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1613
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/localytics/android/InAppManager$4$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "readyToDisplay"    # Ljava/lang/Boolean;

    .prologue
    .line 1634
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1636
    iget-object v1, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1638
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1640
    iget-object v1, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v1

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v1}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/MessagingListener;

    invoke-interface {v1}, Lcom/localytics/android/MessagingListener;->localyticsWillDisplayInAppMessage()V

    .line 1643
    :cond_0
    iget-object v1, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v2, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v2, v2, Lcom/localytics/android/InAppManager$4;->val$inAppMessage:Lcom/localytics/android/MarketingMessage;

    iget-object v3, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v3, v3, Lcom/localytics/android/InAppManager$4;->val$event:Ljava/lang/String;

    iget-object v4, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v4, v4, Lcom/localytics/android/InAppManager$4;->val$attributes:Ljava/util/Map;

    invoke-static {v1, v2, v3, v4}, Lcom/localytics/android/InAppManager;->access$300(Lcom/localytics/android/InAppManager;Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)Lcom/localytics/android/InAppCampaign;

    move-result-object v1

    .line 1644
    invoke-static {v1}, Lcom/localytics/android/InAppDialogFragment;->newInstance(Lcom/localytics/android/InAppCampaign;)Lcom/localytics/android/InAppDialogFragment;

    move-result-object v2

    .line 1645
    iget-object v1, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v1

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v1}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/MessagingListener;

    invoke-virtual {v2, v1}, Lcom/localytics/android/InAppDialogFragment;->setMessagingListener(Lcom/localytics/android/MessagingListener;)Lcom/localytics/android/InAppDialogFragment;

    move-result-object v1

    new-instance v2, Lcom/localytics/android/InAppManager$4$1$1;

    invoke-direct {v2, p0}, Lcom/localytics/android/InAppManager$4$1$1;-><init>(Lcom/localytics/android/InAppManager$4$1;)V

    invoke-virtual {v1, v2}, Lcom/localytics/android/InAppDialogFragment;->setDialogCallback(Lcom/localytics/android/InAppDialogCallback;)Lcom/localytics/android/InAppDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v2, v2, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v2}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "marketing_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/localytics/android/InAppDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1667
    iget-object v1, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1684
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/localytics/android/InAppManager;->access$202(Lcom/localytics/android/InAppManager;Z)Z

    .line 1685
    return-void

    .line 1673
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v1

    iget v2, p0, Lcom/localytics/android/InAppManager$4$1;->val$campaignId:I

    invoke-virtual {v1, v2}, Lcom/localytics/android/MarketingHandler;->setInAppMessageAsNotDisplayed(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1677
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Exception while trying to display in-app"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1682
    iget-object v1, p0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v1

    iget v2, p0, Lcom/localytics/android/InAppManager$4$1;->val$campaignId:I

    invoke-virtual {v1, v2}, Lcom/localytics/android/MarketingHandler;->setInAppMessageAsNotDisplayed(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1613
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/localytics/android/InAppManager$4$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
