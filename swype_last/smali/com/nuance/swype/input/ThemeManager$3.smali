.class Lcom/nuance/swype/input/ThemeManager$3;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/ThemeManager;->refetchPurchaseInfoFromGoogleStore(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/ThemeManager;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/ThemeManager;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/ThemeManager;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager$3;->this$0:Lcom/nuance/swype/input/ThemeManager;

    iput-object p2, p0, Lcom/nuance/swype/input/ThemeManager$3;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V
    .registers 10
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1409
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1410
    invoke-static {v7}, Lcom/nuance/swype/input/ThemeManager;->setIsInAppApiSupported(Z)V

    .line 1411
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$3;->this$0:Lcom/nuance/swype/input/ThemeManager;

    # getter for: Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/nuance/swype/input/ThemeManager;->access$100(Lcom/nuance/swype/input/ThemeManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/nuance/swype/service/impl/AccountUtil;->setGoogleAccountMissing(Landroid/content/Context;Z)V

    .line 1439
    :cond_14
    :goto_14
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v2

    if-eqz v2, :cond_109

    .line 1441
    :cond_20
    sget-object v2, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "google store is not available,show free categories."

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1442
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$3;->val$ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    .line 1443
    .local v0, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v0, :cond_56

    .line 1444
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v2

    if-eqz v2, :cond_104

    .line 1447
    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$3;->this$0:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager;->hasNoPriceThemes()Z

    move-result v2

    if-nez v2, :cond_53

    .line 1448
    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->resetCatalogItemPrice()V

    .line 1450
    :cond_53
    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->triggerShowingThemesWithoutPrices()V

    .line 1466
    .end local v0    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_56
    :goto_56
    return-void

    .line 1414
    :cond_57
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2040
    iget-object v2, p1, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    .line 1415
    const-string/jumbo v3, "inapp_not_supported"

    .line 3039
    iget v4, p1, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 1416
    invoke-static {v3, v4}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDetailedDesc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1415
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 3040
    iget-object v2, p1, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    .line 1417
    const-string/jumbo v3, "Billing_service_unavailable"

    .line 4039
    iget v4, p1, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 1418
    invoke-static {v3, v4}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDetailedDesc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1417
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1420
    :cond_7f
    invoke-static {v6}, Lcom/nuance/swype/input/ThemeManager;->setIsInAppApiSupported(Z)V

    .line 4040
    iget-object v2, p1, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    .line 1422
    const-string/jumbo v3, "inapp_not_supported"

    .line 5039
    iget v4, p1, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 1423
    invoke-static {v3, v4}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDetailedDesc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1422
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 6039
    iget v2, p1, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 1424
    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    .line 1427
    :try_start_98
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$3;->this$0:Lcom/nuance/swype/input/ThemeManager;

    # getter for: Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/nuance/swype/input/ThemeManager;->access$100(Lcom/nuance/swype/input/ThemeManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->google_play_versioncode_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager$3;->this$0:Lcom/nuance/swype/input/ThemeManager;

    .line 1428
    # getter for: Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/nuance/swype/input/ThemeManager;->access$100(Lcom/nuance/swype/input/ThemeManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.android.vending"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v2, v3, :cond_ea

    .line 1429
    sget-object v2, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Google Play should be updated"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_cc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_98 .. :try_end_cc} :catch_ce

    goto/16 :goto_14

    .line 1434
    :catch_ce
    move-exception v1

    .line 1435
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Google Play is not available:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 1431
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_ea
    :try_start_ea
    sget-object v2, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Login Google Play using an valid account"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1432
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$3;->this$0:Lcom/nuance/swype/input/ThemeManager;

    # getter for: Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/nuance/swype/input/ThemeManager;->access$100(Lcom/nuance/swype/input/ThemeManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nuance/swype/service/impl/AccountUtil;->setGoogleAccountMissing(Landroid/content/Context;Z)V
    :try_end_102
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ea .. :try_end_102} :catch_ce

    goto/16 :goto_14

    .line 1452
    .restart local v0    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_104
    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->triggerShowingFreeCategories()V

    goto/16 :goto_56

    .line 1457
    .end local v0    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_109
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$3;->this$0:Lcom/nuance/swype/input/ThemeManager;

    # getter for: Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;
    invoke-static {v2}, Lcom/nuance/swype/input/ThemeManager;->access$200(Lcom/nuance/swype/input/ThemeManager;)Lcom/nuance/swype/inapp/ThemePurchaser;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/swype/inapp/ThemePurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 1458
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$3;->this$0:Lcom/nuance/swype/input/ThemeManager;

    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager$3;->val$ctx:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/ThemeManager;->initializeInAppPurchase(Landroid/content/Context;)V

    .line 1459
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported()Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$3;->val$ctx:Landroid/content/Context;

    .line 1460
    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getGoogleServiceUpgradeDialogShown()Z

    goto/16 :goto_56
.end method
