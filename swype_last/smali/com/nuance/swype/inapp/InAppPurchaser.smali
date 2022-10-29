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
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final context:Landroid/content/Context;

.field private mAppContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

.field protected mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

.field mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

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

.field protected mSkuDetails:Ljava/util/Map;
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
    .registers 1

    .prologue
    .line 38
    const-string/jumbo v0, "InAppPurchaser"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Lcom/nuance/swype/inapp/InAppPurchaser$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/inapp/InAppPurchaser$4;-><init>(Lcom/nuance/swype/inapp/InAppPurchaser;)V

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mQueryFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;

    .line 311
    new-instance v0, Lcom/nuance/swype/inapp/InAppPurchaser$6;

    invoke-direct {v0, p0}, Lcom/nuance/swype/inapp/InAppPurchaser$6;-><init>(Lcom/nuance/swype/inapp/InAppPurchaser;)V

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mAppContext:Ljava/lang/ref/WeakReference;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mSkuDetails:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->context:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/inapp/InAppPurchaser;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/inapp/InAppPurchaser;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/inapp/InAppPurchaser;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/inapp/InAppPurchaser;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mQuerySkuList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/inapp/InAppPurchaser;Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 5
    .param p0, "x0"    # Lcom/nuance/swype/inapp/InAppPurchaser;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/inapp/InAppPurchaser;->doPurchase(Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/inapp/InAppPurchaser;)Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/inapp/InAppPurchaser;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    return-object v0
.end method

.method private doPurchase(Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "purchaseFinishedListener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 343
    new-instance v0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    invoke-direct {v0, p2, p4}, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;-><init>(Ljava/lang/String;Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    .line 344
    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Stating purchase flow"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 346
    :try_start_15
    iget-object v7, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v8, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    .line 3378
    iget-object v5, v0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mDeveloperString:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_1d} :catch_14a

    .line 4363
    :try_start_1d
    const-string/jumbo v4, "inapp"

    .line 4399
    invoke-virtual {v7}, Lcom/nuance/swype/inapp/util/IabHelper;->checkNotDisposed()V

    .line 4400
    const-string/jumbo v0, "launchPurchaseFlow"

    invoke-virtual {v7, v0}, Lcom/nuance/swype/inapp/util/IabHelper;->checkSetupDone(Ljava/lang/String;)Z
    :try_end_29
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_29} :catch_65

    move-result v0

    if-eqz v0, :cond_52

    .line 4404
    :try_start_2c
    const-string/jumbo v0, "launchPurchaseFlow"

    invoke-virtual {v7, v0}, Lcom/nuance/swype/inapp/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_32} :catch_53

    .line 4413
    :try_start_32
    const-string/jumbo v0, "subs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-boolean v0, v7, Lcom/nuance/swype/inapp/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v0, :cond_67

    .line 4414
    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v1, -0x3f1

    const-string/jumbo v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 4416
    invoke-virtual {v7}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 4417
    if-eqz v8, :cond_52

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 4456
    :cond_52
    :goto_52
    return-void

    .line 4406
    :catch_53
    move-exception v0

    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v1, -0x3e9

    const-string/jumbo v2, "Can\'t start another async operation."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 4408
    if-eqz v8, :cond_52

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    :try_end_64
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_64} :catch_65

    goto :goto_52

    :catch_65
    move-exception v0

    goto :goto_52

    .line 4422
    :cond_67
    :try_start_67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Constructing buy intent for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4423
    iget-object v0, v7, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, v7, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4424
    invoke-virtual {v7, v0}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v1

    .line 4425
    if-eqz v1, :cond_e6

    .line 4426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to buy item, Error response: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 4427
    invoke-virtual {v7}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 4428
    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const-string/jumbo v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 4429
    if-eqz v8, :cond_52

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    :try_end_b9
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_67 .. :try_end_b9} :catch_ba
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_b9} :catch_11e
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_b9} :catch_65

    goto :goto_52

    .line 4441
    :catch_ba
    move-exception v0

    .line 4442
    :try_start_bb
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 4443
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 4444
    invoke-virtual {v7}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 4446
    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v1, -0x3ec

    const-string/jumbo v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 4447
    if-eqz v8, :cond_52

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    :try_end_e4
    .catch Ljava/lang/IllegalStateException; {:try_start_bb .. :try_end_e4} :catch_65

    goto/16 :goto_52

    .line 4433
    :cond_e6
    :try_start_e6
    const-string/jumbo v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 4434
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4435
    iput p3, v7, Lcom/nuance/swype/inapp/util/IabHelper;->mRequestCode:I

    .line 4436
    iput-object v8, v7, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 4437
    iput-object v4, v7, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 4438
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_11c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_e6 .. :try_end_11c} :catch_ba
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_11c} :catch_11e
    .catch Ljava/lang/IllegalStateException; {:try_start_e6 .. :try_end_11c} :catch_65

    goto/16 :goto_52

    .line 4449
    :catch_11e
    move-exception v0

    .line 4450
    :try_start_11f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 4451
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4452
    invoke-virtual {v7}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 4454
    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v1, -0x3e9

    const-string/jumbo v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 4455
    if-eqz v8, :cond_52

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    :try_end_148
    .catch Ljava/lang/IllegalStateException; {:try_start_11f .. :try_end_148} :catch_65

    goto/16 :goto_52

    .line 349
    :catch_14a
    move-exception v0

    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "dispose destroyed."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_52
.end method

.method private isSetupDone()Z
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    const-string/jumbo v1, "inAppPurchaser"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/inapp/util/IabHelper;->checkSetupDone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private setup(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
    .registers 10
    .param p1, "listener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 55
    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mAppContext:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mAppContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    .line 57
    :cond_e
    sget-object v1, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "in-app setup failure. mAppContext or mAppContext.get() is null"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1279
    :goto_16
    return-void

    .line 60
    :cond_17
    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-nez v1, :cond_3c

    .line 61
    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 62
    .local v0, "info":Lcom/nuance/swype/input/BuildInfo;
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isDownloadableThemesEnabled()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 64
    new-instance v2, Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mAppContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getGooglePlayPublicKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/nuance/swype/inapp/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    .line 71
    .end local v0    # "info":Lcom/nuance/swype/input/BuildInfo;
    :cond_3c
    :goto_3c
    :try_start_3c
    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    new-instance v2, Lcom/nuance/swype/inapp/InAppPurchaser$1;

    invoke-direct {v2, p0, p1}, Lcom/nuance/swype/inapp/InAppPurchaser$1;-><init>(Lcom/nuance/swype/inapp/InAppPurchaser;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 1213
    invoke-virtual {v1}, Lcom/nuance/swype/inapp/util/IabHelper;->checkNotDisposed()V

    .line 1214
    iget-boolean v3, v1, Lcom/nuance/swype/inapp/util/IabHelper;->mSetupDone:Z

    if-eqz v3, :cond_7c

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_53
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_53} :catch_53

    .line 89
    :catch_53
    move-exception v1

    sget-object v1, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "dispose destroyed."

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_16

    .line 66
    .restart local v0    # "info":Lcom/nuance/swype/input/BuildInfo;
    :cond_61
    sget-object v1, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "build type does not allow in-app for Play"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 67
    new-instance v2, Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mAppContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string/jumbo v3, " "

    invoke-direct {v2, v1, v3}, Lcom/nuance/swype/inapp/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    goto :goto_3c

    .line 1218
    .end local v0    # "info":Lcom/nuance/swype/input/BuildInfo;
    :cond_7c
    :try_start_7c
    new-instance v3, Lcom/nuance/swype/inapp/util/IabHelper$1;

    invoke-direct {v3, v1, v2}, Lcom/nuance/swype/inapp/util/IabHelper$1;-><init>(Lcom/nuance/swype/inapp/util/IabHelper;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v3, v1, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 1273
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1274
    const-string/jumbo v4, "com.android.vending"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1275
    iget-object v4, v1, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1277
    if-eqz v4, :cond_b1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b1

    .line 1279
    iget-object v2, v1, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/nuance/swype/inapp/util/IabHelper;->mIsBound:Z

    goto/16 :goto_16

    .line 1284
    :cond_b1
    new-instance v1, Lcom/nuance/swype/inapp/util/IabResult;

    const/4 v3, 0x3

    const-string/jumbo v4, "Billing_service_unavailable"

    invoke-direct {v1, v3, v4}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V
    :try_end_bd
    .catch Ljava/lang/IllegalStateException; {:try_start_7c .. :try_end_bd} :catch_53

    goto/16 :goto_16
.end method


# virtual methods
.method public final cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V
    .registers 7
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-eqz v0, :cond_21

    .line 2039
    iget v0, p1, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 99
    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 100
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    .line 2315
    iput-boolean v2, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mSetupDone:Z

    .line 2316
    iget-object v1, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1a

    .line 2318
    iput-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 2319
    iput-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 2320
    iput-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 2322
    :cond_1a
    iput-boolean v4, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mDisposed:Z

    .line 104
    :goto_1c
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 106
    :cond_21
    iput-object v3, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    .line 108
    return-void

    .line 102
    :cond_24
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    .line 3299
    iput-boolean v2, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mSetupDone:Z

    .line 3300
    iget-object v1, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_3d

    .line 3302
    iget-object v1, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_37

    iget-object v1, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3303
    :cond_37
    iput-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 3304
    iput-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 3305
    iput-object v3, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 3307
    :cond_3d
    iput-boolean v4, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mDisposed:Z

    goto :goto_1c
.end method

.method public final handlePurchaseResults$40bae86d(IILandroid/content/Intent;)V
    .registers 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 388
    sget-object v5, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v10, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "handlePurchaseResults called with requestcode: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-interface {v5, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 389
    iget-object v5, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    if-eqz v5, :cond_33

    .line 391
    :try_start_1f
    iget-object v5, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    invoke-virtual {v5, p1, p2, p3}, Lcom/nuance/swype/inapp/util/IabHelper;->handleActivityResult$40bae869(IILandroid/content/Intent;)Z
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_24} :catch_25

    .line 430
    :cond_24
    :goto_24
    return-void

    .line 393
    :catch_25
    move-exception v5

    sget-object v5, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v10, [Ljava/lang/Object;

    const-string/jumbo v8, "dispose destroyed."

    aput-object v8, v7, v6

    invoke-interface {v5, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_24

    .line 397
    :cond_33
    if-eqz p3, :cond_d8

    .line 5433
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v7, "RESPONSE_CODE"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 5434
    if-nez v5, :cond_9e

    move v3, v6

    .line 399
    .local v3, "responseCode":I
    :goto_43
    const-string/jumbo v5, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "purchaseData":Ljava/lang/String;
    const-string/jumbo v5, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v5, -0x1

    if-ne p2, v5, :cond_d8

    if-nez v3, :cond_d8

    .line 404
    iget-object v5, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v5, :cond_d8

    .line 406
    new-instance v4, Lcom/nuance/swype/inapp/util/IabResult;

    const-string/jumbo v5, "Success"

    invoke-direct {v4, v6, v5}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 408
    .local v4, "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v5, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    invoke-virtual {v5}, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->getNextInLine()Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v5

    if-eqz v5, :cond_9a

    .line 409
    sget-object v5, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v10, [Ljava/lang/Object;

    const-string/jumbo v8, "calling chain method"

    aput-object v8, v7, v6

    invoke-interface {v5, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 411
    :try_start_76
    new-instance v1, Lcom/nuance/swype/inapp/util/Purchase;

    const-string/jumbo v5, "inapp"

    invoke-direct {v1, v5, v2, v0}, Lcom/nuance/swype/inapp/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .local v1, "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    sget-object v5, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "sku:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 6053
    iget-object v8, v1, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    .line 413
    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 414
    iget-object v5, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mCurrentPurchaseRequestBundle:Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;

    invoke-virtual {v5}, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->getNextInLine()Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v5

    .line 415
    invoke-interface {v5, v4, v1}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_9a} :catch_d3

    .line 420
    .end local v1    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    :cond_9a
    :goto_9a
    invoke-virtual {p0, v4}, Lcom/nuance/swype/inapp/InAppPurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    goto :goto_24

    .line 5436
    .end local v0    # "dataSignature":Ljava/lang/String;
    .end local v2    # "purchaseData":Ljava/lang/String;
    .end local v3    # "responseCode":I
    .end local v4    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_9e
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_a9

    .line 5437
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_43

    .line 5438
    :cond_a9
    instance-of v7, v5, Ljava/lang/Long;

    if-eqz v7, :cond_b5

    .line 5439
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v3, v8

    goto :goto_43

    .line 5441
    :cond_b5
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unexpected type for intent response code: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5442
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 417
    .restart local v0    # "dataSignature":Ljava/lang/String;
    .restart local v2    # "purchaseData":Ljava/lang/String;
    .restart local v3    # "responseCode":I
    .restart local v4    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :catch_d3
    move-exception v5

    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9a

    .line 425
    .end local v0    # "dataSignature":Ljava/lang/String;
    .end local v2    # "purchaseData":Ljava/lang/String;
    .end local v3    # "responseCode":I
    .end local v4    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_d8
    iget-object v5, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v5, :cond_24

    .line 426
    new-instance v4, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v5, -0x3ed

    const-string/jumbo v6, "User canceled."

    invoke-direct {v4, v5, v6}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 427
    .restart local v4    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v5, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    goto/16 :goto_24
.end method

.method public final purchase(Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "purchaseFinishedListener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/nuance/swype/inapp/InAppPurchaser;->isSetupDone()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 289
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/inapp/InAppPurchaser;->doPurchase(Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V

    .line 309
    :goto_9
    return-void

    .line 292
    :cond_a
    new-instance v0, Lcom/nuance/swype/inapp/InAppPurchaser$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/inapp/InAppPurchaser$5;-><init>(Lcom/nuance/swype/inapp/InAppPurchaser;Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V

    invoke-direct {p0, v0}, Lcom/nuance/swype/inapp/InAppPurchaser;->setup(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_9
.end method

.method public final queryItems(Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
    .registers 7
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
    .line 169
    .local p1, "skuIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mQuerySkuList:Ljava/util/List;

    .line 170
    invoke-direct {p0}, Lcom/nuance/swype/inapp/InAppPurchaser;->isSetupDone()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 172
    :try_start_8
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mIabHelper:Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v1, p0, Lcom/nuance/swype/inapp/InAppPurchaser;->mQueryFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/inapp/util/IabHelper;->queryInventoryAsync$8e2a111(Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_f} :catch_10

    .line 200
    :goto_f
    return-void

    .line 174
    :catch_10
    move-exception v0

    sget-object v0, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "dispose destroyed."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_f

    .line 177
    :cond_20
    new-instance v0, Lcom/nuance/swype/inapp/InAppPurchaser$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/swype/inapp/InAppPurchaser$3;-><init>(Lcom/nuance/swype/inapp/InAppPurchaser;Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    invoke-direct {p0, v0}, Lcom/nuance/swype/inapp/InAppPurchaser;->setup(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_f
.end method

.method public final setupInAppBillingService(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/nuance/swype/inapp/InAppPurchaser;->isSetupDone()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 113
    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    const/4 v1, 0x0

    const-string/jumbo v2, "Setup successful."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 133
    :goto_12
    return-void

    .line 117
    :cond_13
    new-instance v0, Lcom/nuance/swype/inapp/InAppPurchaser$2;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/inapp/InAppPurchaser$2;-><init>(Lcom/nuance/swype/inapp/InAppPurchaser;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    invoke-direct {p0, v0}, Lcom/nuance/swype/inapp/InAppPurchaser;->setup(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_12
.end method
