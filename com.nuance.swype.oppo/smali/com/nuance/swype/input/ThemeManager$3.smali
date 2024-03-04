.class final Lcom/nuance/swype/input/ThemeManager$3;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/ThemeManager;->reConnectGoogleStoreService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager$3;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;

    .prologue
    const/4 v3, 0x3

    .line 829
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 830
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported:Z

    .line 842
    :cond_0
    :goto_0
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->access$400()Lcom/nuance/swype/inapp/ThemePurchaser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/inapp/ThemePurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 843
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$3;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->initializeInAppPurchase(Landroid/content/Context;)V

    .line 844
    sget-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$3;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getGoogleServiceUpgradeDialogShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$3;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->setGoogleServiceUpgradeDialogShown()V

    .line 847
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$3;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->createUpgradeGooglePlayDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 848
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 850
    :cond_1
    return-void

    .line 831
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inapp_not_supported "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Billing_service_unavailable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported:Z

    goto :goto_0
.end method
