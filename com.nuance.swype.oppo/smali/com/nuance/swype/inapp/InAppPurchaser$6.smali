.class final Lcom/nuance/swype/inapp/InAppPurchaser$6;
.super Ljava/lang/Object;
.source "InAppPurchaser.java"

# interfaces
.implements Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/inapp/InAppPurchaser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/inapp/InAppPurchaser;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/InAppPurchaser;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    .locals 3
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;
    .param p2, "info"    # Lcom/nuance/swype/inapp/util/Purchase;

    .prologue
    .line 272
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPurchaseFinishedListener called with result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 273
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-static {v0}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "purchase successful"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 275
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "developer token is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/nuance/swype/inapp/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-static {v2}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mDeveloperString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 277
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sku is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-static {v2}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mSku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 280
    iget-object v0, p2, Lcom/nuance/swype/inapp/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-static {v1}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mDeveloperString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-static {v1}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mSku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding purchase to the list of purchased items. Item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v1, p2, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/inapp/InAppPurchaser;->addToPurchased(Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-static {v0}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mNextInLine:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_1

    .line 291
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "calling chain method"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-static {v0}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mNextInLine:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/inapp/InAppPurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 295
    return-void

    .line 287
    :cond_2
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "purchase failed"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method
