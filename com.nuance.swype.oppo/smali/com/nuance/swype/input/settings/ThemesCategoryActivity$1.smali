.class Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;
.super Lcom/nuance/swype/input/settings/ThemesCategory;
.source "ThemesCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/ThemesCategory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected showConfirmThemeDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->access$000(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->access$002(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;Z)Z

    .line 33
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    const-class v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 36
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected showMoreThemes()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    .line 72
    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/ThemeManager;->setCurrentThemesCategory(Lcom/nuance/swype/input/settings/ThemesCategory;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    const-class v2, Lcom/nuance/swype/input/settings/ThemesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method protected showThemesPrefs()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    const-class v2, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method protected startPurchaseFlow(Ljava/lang/String;)V
    .locals 5
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->access$000(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->access$002(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;Z)Z

    .line 49
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->access$100(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->access$100(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    .line 55
    .local v1, "themeManager":Lcom/nuance/swype/input/ThemeManager;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/nuance/swype/input/BuildInfo;->isGoogleTrialBuild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-virtual {v1, v3, v4}, Lcom/nuance/swype/input/ThemeManager;->showNotAvailableDialogForGoogleTrail(Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)Landroid/app/Dialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->access$102(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 59
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->access$100(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 62
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    const-class v3, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/ThemeManager;->setThemesCategory(Lcom/nuance/swype/input/settings/ThemesCategory;)V

    .line 65
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    const/16 v3, 0x2711

    invoke-virtual {v2, v0, v3}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
