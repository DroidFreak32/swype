.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;
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


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v1, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-static {v1, v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1202(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 437
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$802(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->BUY_BUNDLE:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 441
    invoke-static {v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 442
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 443
    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData;->recordThemeUpsell(Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$3;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->purchaseItem()V

    .line 447
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 450
    :cond_0
    return-void
.end method
