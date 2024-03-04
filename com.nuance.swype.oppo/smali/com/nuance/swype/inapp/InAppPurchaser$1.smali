.class final Lcom/nuance/swype/inapp/InAppPurchaser$1;
.super Ljava/lang/Object;
.source "InAppPurchaser.java"

# interfaces
.implements Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/inapp/InAppPurchaser;->setup(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

.field private synthetic val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/InAppPurchaser;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$1;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iput-object p2, p0, Lcom/nuance/swype/inapp/InAppPurchaser$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V
    .locals 3
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "in-app setup complete"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$1;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$1;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 75
    :cond_1
    return-void

    .line 67
    :cond_2
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "in-app setup failed: "

    iget-object v2, p1, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
