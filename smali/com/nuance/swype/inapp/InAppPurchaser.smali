.class public Lcom/nuance/swype/inapp/InAppPurchaser;
.super Ljava/lang/Object;
.source "InAppPurchaser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;
    }
.end annotation


# static fields
.field public static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final context:Landroid/content/Context;

.field private mAppContext:Landroid/content/Context;

.field private mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

.field protected mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

.field private mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

.field mQueryFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;

.field private mQuerySkuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSkuDetails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/inapp/util/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "InAppPurchaser"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {v0, p0}, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;-><init>(Lcom/nuance/swype/inapp/InAppPurchaser;)V

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mQueryFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;

    .line 269
    new-instance v0, Lcom/nuance/swype/inapp/InAppPurchaser$6;

    invoke-direct {v0, p0}, Lcom/nuance/swype/inapp/InAppPurchaser$6;-><init>(Lcom/nuance/swype/inapp/InAppPurchaser;)V

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mAppContext:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mSkuDetails:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static synthetic access$000(Lcom/nuance/swype/inapp/InAppPurchaser;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/InAppPurchaser;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mQuerySkuList:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/nuance/swype/inapp/InAppPurchaser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/InAppPurchaser;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/inapp/InAppPurchaser;Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/inapp/InAppPurchaser;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/inapp/InAppPurchaser;->doPurchase(Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/InAppPurchaser;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    return-object v0
.end method

.method private doPurchase(Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "purchaseFinishedListener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 302
    new-instance v0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    invoke-direct {v0, p2, p4}, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;-><init>(Ljava/lang/String;Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    .line 303
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Stating purchase flow"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 305
    :try_start_0
    iget-object v7, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v8, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    iget-object v5, v0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mDeveloperString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v4, "inapp"

    invoke-virtual {v7}, Lcom/nuance/swype/inapp/util/IabHelper;->checkNotDisposed()V

    const-string v0, "launchPurchaseFlow"

    invoke-virtual {v7, v0}, Lcom/nuance/swype/inapp/util/IabHelper;->checkSetupDone(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {v7, v0}, Lcom/nuance/swype/inapp/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v0, "subs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v7, Lcom/nuance/swype/inapp/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    if-eqz v8, :cond_0

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Can\'t start another async operation."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v8, :cond_0

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constructing buy intent for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, v7, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, v7, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v8, :cond_0

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    :try_end_4
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    invoke-virtual {v7}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v8, :cond_0

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :cond_2
    :try_start_6
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput p3, v7, Lcom/nuance/swype/inapp/util/IabHelper;->mRequestCode:I

    iput-object v8, v7, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    iput-object v4, v7, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_6
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    invoke-virtual {v7}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v8, :cond_0

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 308
    :catch_4
    move-exception v0

    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "dispose destroyed."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private isSetupDone()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    const-string v1, "inAppPurchaser"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper;->checkSetupDone(Ljava/lang/String;)Z

    move-result v0

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setup(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isLocalyticsOfficialAppKeyForGoogleProductionBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mAppContext:Landroid/content/Context;

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk7E9iW+F/l1wYs/d/J9b6SON7WgBei34ywBFsFMAbq0O8kpC3xR/dNDRxm2Cx1cdlZjSdoKW14nG9NiStU6uFfa1xFK2F3eeEw7jMwSKb5PXhDFkaLATfAwstU7srQY4XnmbJtzMQcE4cHpxfe/DcDf09krN4zRGqGVNGXbIcs4gq40dEDWPkSrwI3C1XSGDaG8+rStUuzmCYMPSmmGogbbfLZCz0JvOuaaJdijqOrC/UcpEn/SRk8Y/qm6SADMnd9HKhpW79wH4XRwHHPI+3JDCpOMx04lXiEi9xmtF5Xl+HoVAMNMHgn+sOAhxtEteC7XsoCxFFLBDphZTw6qwfwIDAQAB"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    .line 60
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    new-instance v1, Lcom/nuance/swype/inapp/InAppPurchaser$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swype/inapp/InAppPurchaser$1;-><init>(Lcom/nuance/swype/inapp/InAppPurchaser;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/util/IabHelper;->checkNotDisposed()V

    iget-boolean v2, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mSetupDone:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "dispose destroyed."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 80
    :goto_1
    return-void

    .line 56
    :cond_1
    new-instance v0, Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mAppContext:Landroid/content/Context;

    const-string v2, " "

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    goto :goto_0

    .line 60
    :cond_2
    :try_start_1
    new-instance v2, Lcom/nuance/swype/inapp/util/IabHelper$1;

    invoke-direct {v2, v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper$1;-><init>(Lcom/nuance/swype/inapp/util/IabHelper;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v2, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const/4 v2, 0x3

    const-string v3, "Billing_service_unavailable"

    invoke-direct {v0, v2, v3}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final addToPurchased(Ljava/lang/String;)V
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->getPurchasedList(Landroid/content/Context;)Lcom/nuance/swype/inapp/PurchasedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/inapp/PurchasedList;->add(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public final cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V
    .locals 5
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-eqz v0, :cond_1

    .line 89
    iget v0, p1, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    iput-boolean v2, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mSetupDone:Z

    iget-object v1, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    iput-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    iput-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    iput-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    :cond_0
    iput-boolean v4, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mDisposed:Z

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 96
    :cond_1
    iput-object v3, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    .line 98
    return-void

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    iput-boolean v2, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mSetupDone:Z

    iget-object v1, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_3
    iput-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    iput-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    iput-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    :cond_4
    iput-boolean v4, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mDisposed:Z

    goto :goto_0
.end method

.method public final getDetails(Ljava/lang/String;)Lcom/nuance/swype/inapp/util/SkuDetails;
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mSkuDetails:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/inapp/util/SkuDetails;

    return-object v0
.end method

.method public final handlePurchaseResults$40bae86d(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 351
    sget-object v4, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "handlePurchaseResults called with requestcode: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 352
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-eqz v4, :cond_1

    .line 354
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    invoke-virtual {v4, p1, p2, p3}, Lcom/nuance/swype/inapp/util/IabHelper;->handleActivityResult$40bae869(IILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v4

    sget-object v4, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "dispose destroyed."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 361
    :cond_1
    if-eqz p3, :cond_6

    .line 362
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "RESPONSE_CODE"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    move v2, v5

    .line 363
    .local v2, "responseCode":I
    :goto_1
    const-string v4, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "purchaseData":Ljava/lang/String;
    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    const/4 v4, -0x1

    if-ne p2, v4, :cond_6

    if-nez v2, :cond_6

    .line 368
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v4, :cond_6

    .line 370
    new-instance v3, Lcom/nuance/swype/inapp/util/IabResult;

    const-string v4, "Success"

    invoke-direct {v3, v5, v4}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 372
    .local v3, "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    iget-object v4, v4, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mNextInLine:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v4, :cond_2

    .line 373
    sget-object v4, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "calling chain method"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 375
    :try_start_1
    new-instance v0, Lcom/nuance/swype/inapp/util/Purchase;

    const-string v4, "inapp"

    invoke-direct {v0, v4, v1}, Lcom/nuance/swype/inapp/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .local v0, "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    sget-object v4, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "sku:"

    iget-object v6, v0, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 378
    iget-object v4, v0, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/inapp/InAppPurchaser;->addToPurchased(Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    iget-object v4, v4, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mNextInLine:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v4, v3, v0}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    .end local v0    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    :cond_2
    :goto_2
    invoke-virtual {p0, v3}, Lcom/nuance/swype/inapp/InAppPurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    goto :goto_0

    .line 362
    .end local v1    # "purchaseData":Ljava/lang/String;
    .end local v2    # "responseCode":I
    .end local v3    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_3
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_4
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v2, v6

    goto :goto_1

    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected type for intent response code: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 381
    .restart local v1    # "purchaseData":Ljava/lang/String;
    .restart local v2    # "responseCode":I
    .restart local v3    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :catch_1
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 390
    .end local v1    # "purchaseData":Ljava/lang/String;
    .end local v2    # "responseCode":I
    .end local v3    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_6
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v4, :cond_0

    .line 391
    new-instance v3, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v4, -0x3ed

    const-string v5, "User canceled."

    invoke-direct {v3, v4, v5}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 392
    .restart local v3    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    goto/16 :goto_0
.end method

.method public final hasPurchased(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->getPurchasedList(Landroid/content/Context;)Lcom/nuance/swype/inapp/PurchasedList;

    move-result-object v0

    iget-object v1, v0, Lcom/nuance/swype/inapp/PurchasedList;->mPurchasedMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/nuance/swype/inapp/PurchasedList;->mPurchasedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final purchase(Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "purchaseFinishedListener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/nuance/swype/inapp/InAppPurchaser;->isSetupDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/inapp/InAppPurchaser;->doPurchase(Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V

    .line 267
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v0, Lcom/nuance/swype/inapp/InAppPurchaser$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/inapp/InAppPurchaser$5;-><init>(Lcom/nuance/swype/inapp/InAppPurchaser;Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V

    invoke-direct {p0, v0}, Lcom/nuance/swype/inapp/InAppPurchaser;->setup(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_0
.end method

.method public final queryItems(Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 2
    .param p2, "listener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "skuIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mQuerySkuList:Ljava/util/List;

    .line 163
    invoke-direct {p0}, Lcom/nuance/swype/inapp/InAppPurchaser;->isSetupDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mQueryFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/inapp/util/IabHelper;->queryInventoryAsync$8e2a111(Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "dispose destroyed."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Lcom/nuance/swype/inapp/InAppPurchaser$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/swype/inapp/InAppPurchaser$3;-><init>(Lcom/nuance/swype/inapp/InAppPurchaser;Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    invoke-direct {p0, v0}, Lcom/nuance/swype/inapp/InAppPurchaser;->setup(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_0
.end method

.method public final setupInAppBillingService(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/inapp/InAppPurchaser;->isSetupDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    if-eqz p1, :cond_0

    .line 103
    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const/4 v1, 0x0

    const-string v2, "Setup successful."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    new-instance v0, Lcom/nuance/swype/inapp/InAppPurchaser$2;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/inapp/InAppPurchaser$2;-><init>(Lcom/nuance/swype/inapp/InAppPurchaser;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    invoke-direct {p0, v0}, Lcom/nuance/swype/inapp/InAppPurchaser;->setup(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_0
.end method
