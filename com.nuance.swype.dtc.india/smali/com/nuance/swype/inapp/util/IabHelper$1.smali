.class public final Lcom/nuance/swype/inapp/util/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/inapp/util/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/inapp/util/IabHelper;

.field final synthetic val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/inapp/util/IabHelper;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/inapp/util/IabHelper;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    iput-object p2, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 227
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    iget-boolean v3, v3, Lcom/nuance/swype/inapp/util/IabHelper;->mDisposed:Z

    if-eqz v3, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    iput-object v4, v3, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 230
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v3, v3, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v3, v3, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string/jumbo v5, "inapp"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, "response":I
    if-eqz v2, :cond_4

    .line 237
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/nuance/swype/inapp/util/IabResult;

    const-string/jumbo v5, "inapp_not_supported"

    invoke-direct {v4, v2, v5}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 241
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/nuance/swype/inapp/util/IabHelper;->mSubscriptionsSupported:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v2    # "response":I
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_3

    .line 260
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v5, -0x3e9

    const-string/jumbo v6, "RemoteException while setting up in-app billing."

    invoke-direct {v4, v5, v6}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 263
    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "response":I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    iget-object v3, v3, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string/jumbo v5, "subs"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 248
    if-nez v3, :cond_5

    .line 250
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/nuance/swype/inapp/util/IabHelper;->mSubscriptionsSupported:Z

    .line 256
    :cond_5
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/nuance/swype/inapp/util/IabHelper;->mSetupDone:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/nuance/swype/inapp/util/IabResult;

    const-string/jumbo v5, "Setup successful."

    invoke-direct {v4, v6, v5}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper$1;->this$0:Lcom/nuance/swype/inapp/util/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 223
    return-void
.end method
