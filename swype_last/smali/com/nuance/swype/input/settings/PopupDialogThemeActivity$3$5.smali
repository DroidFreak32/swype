.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$5;
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
    .registers 2
    .param p1, "this$1"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$5;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 488
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->BUY_THEME:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$5;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 489
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$5;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 490
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$5;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 491
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData;->recordThemeUpsell(Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 494
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3$5;->this$1:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->purchaseItem()V

    .line 495
    return-void
.end method
