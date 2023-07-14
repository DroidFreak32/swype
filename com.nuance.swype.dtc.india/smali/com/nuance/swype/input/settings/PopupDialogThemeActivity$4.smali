.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;
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


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$002(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Z)Z

    .line 533
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 534
    .local v8, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v0, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string/jumbo v0, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->val$themeR:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    .line 1120
    iget-object v1, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 535
    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(ILandroid/content/Intent;)V

    .line 539
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->CANCEL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->SUCCESS:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 541
    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 542
    invoke-static {v4}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 543
    invoke-static {v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 544
    invoke-static {v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v6

    .line 539
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$400(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Bundle View Tab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const-string/jumbo v1, "user left"

    const-string/jumbo v2, "canceled"

    const-string/jumbo v3, "cancel"

    const-string/jumbo v4, "previous theme"

    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 547
    invoke-static {v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v7}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v7

    .line 546
    invoke-static/range {v0 .. v7}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$900(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    .line 550
    return-void
.end method
