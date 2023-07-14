.class final Lcom/nuance/swype/inapp/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/inapp/util/IabHelper;->queryInventoryAsync$8e2a111(Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/inapp/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/util/IabHelper;Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/nuance/swype/inapp/util/IabHelper;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/nuance/swype/inapp/util/IabHelper$2;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/inapp/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p2, p0, Lcom/nuance/swype/inapp/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p3, p0, Lcom/nuance/swype/inapp/util/IabHelper$2;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p4, p0, Lcom/nuance/swype/inapp/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 667
    new-instance v2, Lcom/nuance/swype/inapp/util/IabResult;

    const/4 v4, 0x0

    const-string/jumbo v5, "Inventory refresh successful."

    invoke-direct {v2, v4, v5}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 668
    .local v2, "result":Lcom/nuance/swype/inapp/util/IabResult;
    const/4 v0, 0x0

    .line 670
    .local v0, "inv":Lcom/nuance/swype/inapp/util/Inventory;
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/inapp/util/IabHelper$2;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    iget-boolean v5, p0, Lcom/nuance/swype/inapp/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v6, p0, Lcom/nuance/swype/inapp/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    .line 1558
    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/inapp/util/IabHelper;->queryInventory$4f5be2a0(ZLjava/util/List;)Lcom/nuance/swype/inapp/util/Inventory;
    :try_end_0
    .catch Lcom/nuance/swype/inapp/util/IabException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 679
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/inapp/util/IabHelper$2;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    invoke-virtual {v4}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 681
    move-object v3, v2

    .line 682
    .local v3, "result_f":Lcom/nuance/swype/inapp/util/IabResult;
    move-object v1, v0

    .line 683
    .local v1, "inv_f":Lcom/nuance/swype/inapp/util/Inventory;
    iget-object v4, p0, Lcom/nuance/swype/inapp/util/IabHelper$2;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    iget-boolean v4, v4, Lcom/nuance/swype/inapp/util/IabHelper;->mDisposed:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/inapp/util/IabHelper$2;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;

    if-eqz v4, :cond_0

    .line 684
    iget-object v4, p0, Lcom/nuance/swype/inapp/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/nuance/swype/inapp/util/IabHelper$2$1;

    invoke-direct {v5, p0, v3, v1}, Lcom/nuance/swype/inapp/util/IabHelper$2$1;-><init>(Lcom/nuance/swype/inapp/util/IabHelper$2;Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Inventory;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 691
    .end local v1    # "inv_f":Lcom/nuance/swype/inapp/util/Inventory;
    .end local v3    # "result_f":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_0
    :goto_1
    return-void

    .line 2042
    :catch_0
    move-exception v4

    iget-object v2, v4, Lcom/nuance/swype/inapp/util/IabException;->mResult:Lcom/nuance/swype/inapp/util/IabResult;

    .line 677
    goto :goto_0

    .line 676
    :catch_1
    move-exception v4

    goto :goto_1
.end method
