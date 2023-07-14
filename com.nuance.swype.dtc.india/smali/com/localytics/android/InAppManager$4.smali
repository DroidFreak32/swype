.class Lcom/localytics/android/InAppManager$4;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager;->_tryDisplayingInAppCampaign(Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InAppManager;

.field final synthetic val$attributes:Ljava/util/Map;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$inAppMessage:Lcom/localytics/android/MarketingMessage;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$4;->val$inAppMessage:Lcom/localytics/android/MarketingMessage;

    iput-object p3, p0, Lcom/localytics/android/InAppManager$4;->val$event:Ljava/lang/String;

    iput-object p4, p0, Lcom/localytics/android/InAppManager$4;->val$attributes:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1598
    :try_start_0
    iget-object v2, p0, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v2}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1693
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    iget-object v2, p0, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v2}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "marketing_dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1608
    iget-object v2, p0, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v2}, Lcom/localytics/android/InAppManager;->access$200(Lcom/localytics/android/InAppManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1610
    iget-object v2, p0, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/localytics/android/InAppManager;->access$202(Lcom/localytics/android/InAppManager;Z)Z

    .line 1611
    iget-object v2, p0, Lcom/localytics/android/InAppManager$4;->val$inAppMessage:Lcom/localytics/android/MarketingMessage;

    const-string/jumbo v3, "campaign_id"

    invoke-virtual {v2, v3}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1612
    .local v0, "campaignId":I
    new-instance v2, Lcom/localytics/android/InAppManager$4$1;

    invoke-direct {v2, p0, v0}, Lcom/localytics/android/InAppManager$4$1;-><init>(Lcom/localytics/android/InAppManager$4;I)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/localytics/android/InAppManager$4$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1689
    .end local v0    # "campaignId":I
    :catch_0
    move-exception v1

    .line 1691
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Localytics library threw an uncaught exception"

    invoke-static {v2, v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
