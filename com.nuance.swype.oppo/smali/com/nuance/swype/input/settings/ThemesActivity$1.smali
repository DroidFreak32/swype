.class Lcom/nuance/swype/input/settings/ThemesActivity$1;
.super Lcom/nuance/swype/input/settings/Themes;
.source "ThemesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/Themes;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected showConfirmThemeDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesActivity;->access$000(Lcom/nuance/swype/input/settings/ThemesActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nuance/swype/input/settings/ThemesActivity;->access$002(Lcom/nuance/swype/input/settings/ThemesActivity;Z)Z

    .line 31
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    const-class v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 33
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 34
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected showThemesPrefs()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    const-class v2, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/ThemesActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method protected startPurchaseFlow(Ljava/lang/String;)V
    .locals 4
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/ThemesActivity$1;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesActivity;->access$000(Lcom/nuance/swype/input/settings/ThemesActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nuance/swype/input/settings/ThemesActivity;->access$002(Lcom/nuance/swype/input/settings/ThemesActivity;Z)Z

    .line 48
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isGoogleTrialBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/ThemeManager;->showNotAvailableDialogForGoogleTrail(Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)Landroid/app/Dialog;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 57
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    const-class v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesActivity;

    const/16 v2, 0x2711

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
