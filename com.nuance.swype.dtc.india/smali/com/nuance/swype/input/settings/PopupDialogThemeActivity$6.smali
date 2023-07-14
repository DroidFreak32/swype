.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;
.super Ljava/lang/Object;
.source "PopupDialogThemeActivity.java"

# interfaces
.implements Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    .locals 18
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;
    .param p2, "purchase"    # Lcom/nuance/swype/inapp/util/Purchase;

    .prologue
    .line 700
    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "in onIabPurchaseFinished, threadId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v2

    if-nez v2, :cond_1

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v14

    .line 704
    .local v14, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v14, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 705
    .end local v14    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v14}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getType()I

    move-result v2

    sget-object v3, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->KEYBOARD:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v3}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 706
    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "It\'s KEYBOARD theme, so recordThemesPreview"

    aput-object v6, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    sget-object v3, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->BUY:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    sget-object v4, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->NULL_THEME:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 709
    invoke-static {v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 710
    invoke-static {v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 711
    invoke-static {v7}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 712
    invoke-static {v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v8

    .line 707
    invoke-static/range {v2 .. v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$400(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 715
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 1039
    move-object/from16 v0, p1

    iget v3, v0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 2039
    move-object/from16 v0, p1

    iget v5, v0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 715
    invoke-static {v5}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1500(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;ILjava/lang/String;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    .line 822
    :goto_0
    return-void

    .line 721
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    .line 723
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/nuance/swype/service/impl/AccountUtil;->setIsGoogleAccountSignedIn(Z)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v2, v3, :cond_2

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v9

    .line 728
    .local v9, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v9, :cond_2

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 2120
    iget-object v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/nuance/swype/inapp/CatalogManager;->setPurchased(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/nuance/swype/inapp/CatalogManager;->downloadTheme(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .end local v9    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "purchased sku is:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3053
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    .line 737
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v13

    .line 739
    .local v13, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 3120
    iget-object v10, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 740
    .local v10, "category":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 741
    .local v12, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v12, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v3

    .line 4120
    iget-object v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 742
    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v13, v10}, Lcom/nuance/swype/input/ThemeManager;->onPurchaseFinished(ILjava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_3
    sget-object v4, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->SUCCESS:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 750
    .local v4, "actionResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v12}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(ILandroid/content/Intent;)V

    .line 809
    .end local v10    # "category":Ljava/lang/String;
    .end local v12    # "resultIntent":Landroid/content/Intent;
    .end local v13    # "sku":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getType()I

    move-result v2

    sget-object v3, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->KEYBOARD:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v3}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 810
    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "It\'s KEYBOARD theme, so recordThemesPreview"

    aput-object v6, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    sget-object v3, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->BUY:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 813
    invoke-static {v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 814
    invoke-static {v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 815
    invoke-static {v7}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 816
    invoke-static {v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v8

    .line 811
    invoke-static/range {v2 .. v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$400(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 818
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 819
    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/ThemeManager;->getThemePurchaser(Landroid/content/Context;)Lcom/nuance/swype/inapp/ThemePurchaser;

    move-result-object v2

    .line 820
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nuance/swype/inapp/ThemePurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    goto/16 :goto_0

    .line 733
    .end local v4    # "actionResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    .restart local v9    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :catch_0
    move-exception v2

    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string/jumbo v3, "Download of theme failed. SKU: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v7}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 752
    .end local v9    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5039
    move-object/from16 v0, p1

    iget v2, v0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 753
    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v15

    .line 756
    .local v15, "themeId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 5120
    iget-object v10, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 757
    .restart local v10    # "category":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 758
    .restart local v12    # "resultIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v12, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v3

    .line 6120
    iget-object v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 759
    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.Dialog_request"

    const/16 v3, 0x2713

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v9

    .line 763
    .restart local v9    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 7120
    iget-object v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/nuance/swype/inapp/CatalogManager;->setPurchased(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {v9}, Lcom/nuance/swype/inapp/CatalogManager;->refetchPurchaseInfoFromGoolgeStore()V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v15, v10}, Lcom/nuance/swype/input/ThemeManager;->onPurchaseFinished(ILjava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_6
    sget-object v4, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->ALREADY_OWNED:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 772
    .restart local v4    # "actionResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v12}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 773
    .end local v4    # "actionResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    .end local v9    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    .end local v10    # "category":Ljava/lang/String;
    .end local v12    # "resultIntent":Landroid/content/Intent;
    .end local v15    # "themeId":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_8

    .line 8039
    move-object/from16 v0, p1

    iget v2, v0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 774
    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(I)V

    .line 776
    sget-object v4, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->ABORTED:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 777
    .restart local v4    # "actionResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 9039
    move-object/from16 v0, p1

    iget v3, v0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 10039
    move-object/from16 v0, p1

    iget v5, v0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 777
    invoke-static {v5}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1500(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 10040
    .end local v4    # "actionResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    :cond_8
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    .line 781
    const-string/jumbo v3, "inapp_not_supported"

    .line 11039
    move-object/from16 v0, p1

    iget v5, v0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 782
    invoke-static {v3, v5}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDetailedDesc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 781
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 12039
    move-object/from16 v0, p1

    iget v2, v0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 783
    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->google_play_versioncode_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 785
    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v5, "com.android.vending"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v2, v3, :cond_a

    .line 786
    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "Google Play should be updated"

    aput-object v6, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 801
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(I)V

    .line 803
    sget-object v4, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->ABORTED:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 805
    .restart local v4    # "actionResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 15039
    move-object/from16 v0, p1

    iget v3, v0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 16039
    move-object/from16 v0, p1

    iget v5, v0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 805
    invoke-static {v5}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1500(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 788
    .end local v4    # "actionResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nuance/swype/service/impl/AccountUtil;->setGoogleAccountMissing(Landroid/content/Context;Z)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 797
    :catch_1
    move-exception v11

    .line 798
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Google Play is not available:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_3

    .line 13039
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b
    :try_start_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 790
    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    const-string/jumbo v2, "User canceled."

    .line 14039
    move-object/from16 v0, p1

    iget v3, v0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 791
    invoke-static {v2, v3}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDetailedDesc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 14040
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    .line 792
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 794
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/nuance/swype/service/impl/AccountUtil;->setIsGoogleAccountSignedIn(Z)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method
