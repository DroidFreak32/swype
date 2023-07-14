.class Lcom/localytics/android/InAppManager$6;
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

.field final synthetic val$button:Lcom/localytics/android/TestModeButton;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/TestModeButton;)V
    .locals 0

    .prologue
    .line 2053
    iput-object p1, p0, Lcom/localytics/android/InAppManager$6;->this$0:Lcom/localytics/android/InAppManager;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$6;->val$button:Lcom/localytics/android/TestModeButton;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 2059
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/InAppManager$6;->val$button:Lcom/localytics/android/TestModeButton;

    iget-object v2, p0, Lcom/localytics/android/InAppManager$6;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v2}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "marketing_test_mode_button"

    invoke-virtual {v1, v2, v3}, Lcom/localytics/android/TestModeButton;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2060
    iget-object v1, p0, Lcom/localytics/android/InAppManager$6;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2066
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 2062
    :catch_0
    move-exception v0

    .line 2064
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MarketingCallable ON_IN_APP_TEST_CLOSE_CAMPAIGN_LIST exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
