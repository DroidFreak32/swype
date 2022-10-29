.class final Lcom/nuance/swype/inapp/InAppPurchaser$3;
.super Ljava/lang/Object;
.source "InAppPurchaser.java"

# interfaces
.implements Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/inapp/InAppPurchaser;->queryItems(Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

.field final synthetic val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

.field final synthetic val$skuIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/InAppPurchaser;Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/nuance/swype/inapp/InAppPurchaser;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iput-object p2, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->val$skuIdList:Ljava/util/List;

    iput-object p3, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V
    .registers 6
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 183
    :try_start_6
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->val$skuIdList:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v2, v2, Lcom/nuance/swype/inapp/InAppPurchaser;->mQueryFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabHelper;->queryInventoryAsync$8e2a111(Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_13} :catch_2a

    .line 191
    :goto_13
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-eqz v0, :cond_20

    .line 192
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 194
    :cond_20
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_29

    .line 195
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 197
    :cond_29
    :goto_29
    return-void

    .line 185
    :catch_2a
    move-exception v0

    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "dispose destroyed."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_29

    .line 189
    :cond_3a
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/inapp/InAppPurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    goto :goto_13
.end method
