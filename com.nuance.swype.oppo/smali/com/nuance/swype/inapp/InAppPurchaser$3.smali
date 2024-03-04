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
.field private synthetic this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

.field private synthetic val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

.field private synthetic val$skuIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/InAppPurchaser;Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iput-object p2, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->val$skuIdList:Ljava/util/List;

    iput-object p3, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V
    .locals 3
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->val$skuIdList:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v2, v2, Lcom/nuance/swype/inapp/InAppPurchaser;->mQueryFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabHelper;->queryInventoryAsync$8e2a111(Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 179
    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "dispose destroyed."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_1

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$3;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/inapp/InAppPurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    goto :goto_0
.end method
