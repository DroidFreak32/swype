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
.field final synthetic this$0:Lcom/nuance/swype/inapp/InAppPurchaser;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/InAppPurchaser;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/inapp/InAppPurchaser;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    .registers 9
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;
    .param p2, "info"    # Lcom/nuance/swype/inapp/util/Purchase;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 314
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mPurchaseFinishedListener called with result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 315
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    # getter for: Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;
    invoke-static {v0}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v0

    if-eqz v0, :cond_fb

    .line 316
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "purchase successful"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 317
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "developer token is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1056
    iget-object v3, p2, Lcom/nuance/swype/inapp/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    .line 318
    # getter for: Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;
    invoke-static {v3}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v3

    .line 1378
    iget-object v3, v3, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mDeveloperString:Ljava/lang/String;

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 317
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 319
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sku is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2053
    iget-object v3, p2, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    .line 320
    # getter for: Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;
    invoke-static {v3}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v3

    .line 2374
    iget-object v3, v3, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mSku:Ljava/lang/String;

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 319
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3056
    iget-object v0, p2, Lcom/nuance/swype/inapp/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    .line 323
    # getter for: Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;
    invoke-static {v1}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v1

    .line 3378
    iget-object v1, v1, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mDeveloperString:Ljava/lang/String;

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 4053
    iget-object v0, p2, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    # getter for: Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;
    invoke-static {v1}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v1

    .line 4374
    iget-object v1, v1, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mSku:Ljava/lang/String;

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 325
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Adding purchase to the list of purchased items. Item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5053
    iget-object v3, p2, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 331
    :cond_d0
    :goto_d0
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    # getter for: Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;
    invoke-static {v0}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->getNextInLine()Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_f5

    .line 332
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "calling chain method"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    # getter for: Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;
    invoke-static {v0}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->getNextInLine()Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 335
    :cond_f5
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$6;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/inapp/InAppPurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 336
    return-void

    .line 328
    :cond_fb
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "purchase failed"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_d0
.end method
