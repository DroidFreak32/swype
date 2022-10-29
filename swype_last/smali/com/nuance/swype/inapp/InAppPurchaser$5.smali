.class final Lcom/nuance/swype/inapp/InAppPurchaser$5;
.super Ljava/lang/Object;
.source "InAppPurchaser.java"

# interfaces
.implements Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/inapp/InAppPurchaser;->purchase(Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$purchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

.field final synthetic val$requestCode:I

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/InAppPurchaser;Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 6
    .param p1, "this$0"    # Lcom/nuance/swype/inapp/InAppPurchaser;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iput-object p2, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->val$sku:Ljava/lang/String;

    iput p4, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->val$requestCode:I

    iput-object p5, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->val$purchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V
    .registers 7
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;

    .prologue
    .line 296
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 297
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->val$sku:Ljava/lang/String;

    iget v3, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->val$requestCode:I

    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->val$purchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    # invokes: Lcom/nuance/swype/inapp/InAppPurchaser;->doPurchase(Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$200(Lcom/nuance/swype/inapp/InAppPurchaser;Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V

    .line 303
    :goto_13
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-eqz v0, :cond_20

    .line 304
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 306
    :cond_20
    return-void

    .line 300
    :cond_21
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->val$purchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 301
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$5;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/inapp/InAppPurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    goto :goto_13
.end method
