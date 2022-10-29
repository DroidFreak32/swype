.class Lcom/localytics/android/InAppManager$5;
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

.field final synthetic val$adapter:Lcom/localytics/android/InAppMessagesAdapter;

.field final synthetic val$listView:Lcom/localytics/android/TestModeListView;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;Lcom/localytics/android/TestModeListView;)V
    .registers 4

    .prologue
    .line 2019
    iput-object p1, p0, Lcom/localytics/android/InAppManager$5;->this$0:Lcom/localytics/android/InAppManager;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$5;->val$adapter:Lcom/localytics/android/InAppMessagesAdapter;

    iput-object p3, p0, Lcom/localytics/android/InAppManager$5;->val$listView:Lcom/localytics/android/TestModeListView;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 2025
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/InAppManager$5;->val$adapter:Lcom/localytics/android/InAppMessagesAdapter;

    invoke-virtual {v1}, Lcom/localytics/android/InAppMessagesAdapter;->updateDataSet()Z

    .line 2026
    iget-object v1, p0, Lcom/localytics/android/InAppManager$5;->val$listView:Lcom/localytics/android/TestModeListView;

    iget-object v2, p0, Lcom/localytics/android/InAppManager$5;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v2}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "marketing_test_mode_list"

    invoke-virtual {v1, v2, v3}, Lcom/localytics/android/TestModeListView;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2027
    iget-object v1, p0, Lcom/localytics/android/InAppManager$5;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    .line 2033
    :goto_1c
    const/4 v1, 0x0

    return-object v1

    .line 2029
    :catch_1e
    move-exception v0

    .line 2031
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MarketingCallable ON_IN_APP_TEST_POPUP_CAMPAIGN_LIST exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method
