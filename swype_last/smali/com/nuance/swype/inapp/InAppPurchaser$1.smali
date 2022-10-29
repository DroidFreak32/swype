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
.field final synthetic this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

.field final synthetic val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/InAppPurchaser;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/inapp/InAppPurchaser;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$1;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iput-object p2, p0, Lcom/nuance/swype/inapp/InAppPurchaser$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V
    .registers 7
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 76
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "in-app setup complete"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 80
    :goto_14
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$1;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-eqz v0, :cond_21

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$1;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v0, v0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 83
    :cond_21
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_2a

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 86
    :cond_2a
    return-void

    .line 78
    :cond_2b
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "in-app setup failed: "

    aput-object v2, v1, v3

    .line 1040
    iget-object v2, p1, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    .line 78
    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_14
.end method
