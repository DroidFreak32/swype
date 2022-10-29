.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;
.super Ljava/lang/Object;
.source "PopupDialogThemeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setupDialog(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

.field final synthetic val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

.field final synthetic val$themeViewIndex:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iput p2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeViewIndex:I

    iput-object p3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 25
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v3, 0x1

    # setter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->buttonPressed:Z
    invoke-static {v2, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$002(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Z)Z

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$500(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 303
    .local v13, "btnText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->requestID:I
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$600(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v2

    const/16 v3, 0x2713

    if-ne v2, v3, :cond_104

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v20

    .line 307
    .local v20, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    sget-object v4, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->SUCCESS:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 308
    .local v4, "eventResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    if-eqz v20, :cond_6a

    .line 310
    :try_start_38
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeViewIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/inapp/CatalogManager;->downloadTheme(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V

    .line 311
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Downloaded theme sku is:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 312
    invoke-virtual {v7}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 311
    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_6a
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_38 .. :try_end_6a} :catch_e3

    .line 319
    :cond_6a
    :goto_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    sget-object v3, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->INSTALL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 322
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;
    invoke-static {v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 323
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;
    invoke-static {v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 324
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->viewIndex:I
    invoke-static {v7}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 325
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;
    invoke-static {v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v8

    .line 320
    # invokes: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordThemesPreview(Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v2 .. v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$400(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Bundle View Tab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 327
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const-string/jumbo v6, ""

    const-string/jumbo v7, "success"

    const-string/jumbo v8, "install"

    const-string/jumbo v9, "previous theme"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 328
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->viewIndex:I
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v12

    .line 327
    # invokes: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordBundleThemesPreview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v5 .. v12}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$900(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    .line 523
    .end local v4    # "eventResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    .end local v20    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_e2
    :goto_e2
    return-void

    .line 314
    .restart local v4    # "eventResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    .restart local v20    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :catch_e3
    move-exception v2

    sget-object v4, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->AC_EXCEPTION:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 315
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string/jumbo v3, "Download of theme failed. SKU: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 316
    invoke-virtual {v7}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 315
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_6a

    .line 331
    .end local v4    # "eventResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    .end local v20    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->requestID:I
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$600(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v2

    const/16 v3, 0x2714

    if-ne v2, v3, :cond_1ff

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v20

    .line 338
    .restart local v20    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    sget-object v4, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->SUCCESS:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 339
    .restart local v4    # "eventResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    if-eqz v20, :cond_164

    .line 341
    :try_start_124
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeViewIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 342
    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v3

    .line 1120
    iget-object v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 342
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v5

    .line 341
    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3, v5}, Lcom/nuance/swype/inapp/CatalogManager;->uninstallTheme(ILjava/lang/String;Ljava/lang/String;)V

    .line 343
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Uninstalled theme sku is:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 344
    invoke-virtual {v7}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 343
    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_164
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_124 .. :try_end_164} :catch_1de

    .line 351
    :cond_164
    :goto_164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    sget-object v3, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->UNINSTALL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 355
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;
    invoke-static {v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 356
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;
    invoke-static {v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 357
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->viewIndex:I
    invoke-static {v7}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 358
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;
    invoke-static {v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v8

    .line 353
    # invokes: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordThemesPreview(Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v2 .. v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$400(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Bundle View Tab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d5

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const-string/jumbo v6, ""

    const-string/jumbo v7, "success"

    const-string/jumbo v8, "uninstall"

    const-string/jumbo v9, "previous theme"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 361
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->viewIndex:I
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v12

    .line 360
    # invokes: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordBundleThemesPreview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v5 .. v12}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$900(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    goto/16 :goto_e2

    .line 346
    :catch_1de
    move-exception v2

    sget-object v4, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->AC_EXCEPTION:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 347
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string/jumbo v3, "Uninstall of theme failed. SKU: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 348
    invoke-virtual {v7}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 347
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_164

    .line 364
    .end local v4    # "eventResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    .end local v20    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_1ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1000(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->apply:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_278

    .line 365
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 366
    .local v22, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 368
    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v3

    .line 2120
    iget-object v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 367
    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(ILandroid/content/Intent;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    sget-object v6, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->APPLY:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    sget-object v7, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->SUCCESS:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 373
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 374
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 375
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->viewIndex:I
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 376
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v11

    .line 371
    # invokes: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordThemesPreview(Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v5 .. v11}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$400(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    goto/16 :goto_e2

    .line 378
    .end local v22    # "resultIntent":Landroid/content/Intent;
    :cond_278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1000(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->buy_bundle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_304

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->bundleSku:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->bundleSku:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e2

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->bundleSku:Ljava/lang/String;
    invoke-static {v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    # setter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    invoke-static {v3, v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1202(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v2

    if-eqz v2, :cond_e2

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$802(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->BUY_BUNDLE:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 385
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 386
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;
    invoke-static {v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 387
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;
    invoke-static {v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v6

    .line 384
    invoke-static {v2, v3, v5, v6}, Lcom/nuance/swype/usagedata/UsageData;->recordThemeUpsell(Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->purchaseItem()V

    goto/16 :goto_e2

    .line 393
    :cond_304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/ThemeManager;->getBundleOfTheme(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 394
    .local v16, "bundleOfTheme":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v16, :cond_320

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_329

    .line 395
    :cond_320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->purchaseItem()V

    goto/16 :goto_e2

    .line 400
    :cond_329
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v14, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    .local v14, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1000(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->buy_bundle_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 404
    .local v21, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Bundle View Tab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d0

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->bundleSku:Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v15

    check-cast v15, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 407
    .local v15, "bundle":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    sget v2, Lcom/nuance/swype/input/R$string;->buy_bundle_desc:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v15}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getPrice()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 409
    new-instance v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$1;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;)V

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    sget v2, Lcom/nuance/swype/input/R$string;->buy_single_theme:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$2;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    sget v2, Lcom/nuance/swype/input/R$string;->buy_bundle:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 518
    .end local v15    # "bundle":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    :goto_3c2
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 521
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->BUNDLE_UPSELL:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v2}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    goto/16 :goto_e2

    .line 454
    :cond_3d0
    const/16 v19, 0x0

    .line 457
    .local v19, "bundleToGo":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d6
    :goto_3d6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_422

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 458
    .local v15, "bundle":Ljava/lang/String;
    if-eqz v19, :cond_413

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v17

    check-cast v17, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 461
    .local v17, "bundleTemp":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    if-eqz v17, :cond_3d6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getPrice()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->parseThemePriceToDouble(Ljava/lang/String;)D
    invoke-static {v3, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1400(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getPrice()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->parseThemePriceToDouble(Ljava/lang/String;)D
    invoke-static {v3, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1400(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;)D

    move-result-wide v8

    cmpg-double v3, v6, v8

    if-gez v3, :cond_3d6

    .line 462
    move-object/from16 v19, v17

    goto :goto_3d6

    .line 465
    .end local v17    # "bundleTemp":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    :cond_413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v19

    .end local v19    # "bundleToGo":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    check-cast v19, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 467
    .restart local v19    # "bundleToGo":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    goto :goto_3d6

    .line 470
    .end local v15    # "bundle":Ljava/lang/String;
    :cond_422
    move-object/from16 v18, v19

    .local v18, "bundleTheme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    if-eqz v19, :cond_e2

    .line 474
    new-instance v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$4;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;)V

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 484
    sget v2, Lcom/nuance/swype/input/R$string;->go_to_bundle_desc:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getPrice()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 485
    sget v2, Lcom/nuance/swype/input/R$string;->buy_single_theme:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$5;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 498
    sget v2, Lcom/nuance/swype/input/R$string;->go_to_bundle:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$6;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3c2
.end method
