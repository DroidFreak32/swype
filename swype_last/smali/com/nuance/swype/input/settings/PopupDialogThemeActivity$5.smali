.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;
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
    .line 556
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iput p2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->val$themeViewIndex:I

    iput-object p3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 560
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    # setter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->buttonPressed:Z
    invoke-static {v0, v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$002(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Z)Z

    .line 562
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v7

    .line 564
    .local v7, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    sget-object v2, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->SUCCESS:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 565
    .local v2, "eventResult":Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    if-eqz v7, :cond_4f

    .line 567
    :try_start_19
    iget v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->val$themeViewIndex:I

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 568
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    .line 1120
    iget-object v1, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 568
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-virtual {v7, v0, v1, v3}, Lcom/nuance/swype/inapp/CatalogManager;->uninstallTheme(ILjava/lang/String;Ljava/lang/String;)V

    .line 569
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Uninstalled theme sku is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 570
    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 569
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_4f
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_19 .. :try_end_4f} :catch_7a

    .line 577
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(I)V

    .line 579
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->UNINSTALL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 581
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 582
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;
    invoke-static {v4}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 583
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->viewIndex:I
    invoke-static {v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 584
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;
    invoke-static {v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v6

    .line 579
    # invokes: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordThemesPreview(Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$400(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    .line 586
    return-void

    .line 572
    :catch_7a
    move-exception v0

    sget-object v2, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->AC_EXCEPTION:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 573
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string/jumbo v1, "Uninstall of theme failed. SKU: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 574
    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 573
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_4f
.end method
