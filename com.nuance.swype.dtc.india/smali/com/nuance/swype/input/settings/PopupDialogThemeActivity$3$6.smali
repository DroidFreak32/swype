.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$6;
.super Ljava/lang/Object;
.source "PopupDialogThemeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

.field final synthetic val$bundleTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$6;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$6;->val$bundleTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 501
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->GO_TO_BUNDLE:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$6;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 502
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$6;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 503
    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$6;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 504
    invoke-static {v4}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v4

    .line 501
    invoke-static {v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/UsageData;->recordThemeUpsell(Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 508
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$6;->val$bundleTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$6;->val$bundleTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 510
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 1120
    iget-object v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 509
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$6;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/16 v2, 0x2716

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(ILandroid/content/Intent;)V

    .line 513
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 514
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$6;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    .line 515
    return-void
.end method
