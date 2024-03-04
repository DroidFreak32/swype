.class Lcom/nuance/swype/input/settings/ThemesFragment$1;
.super Lcom/nuance/swype/input/settings/Themes;
.source "ThemesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/Themes;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected showConfirmThemeDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->access$002(Lcom/nuance/swype/input/settings/ThemesFragment;Z)Z

    .line 45
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected showThemesPrefs()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, "preference":Landroid/preference/Preference;
    const-class v1, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 83
    sget v1, Lcom/nuance/swype/input/R$string;->theme_options:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 84
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 85
    return-void
.end method

.method protected startPurchaseFlow(Ljava/lang/String;)V
    .locals 4
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/ThemesFragment$1;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->access$002(Lcom/nuance/swype/input/settings/ThemesFragment;Z)Z

    .line 64
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isGoogleTrialBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/ThemeManager;->showNotAvailableDialogForGoogleTrail(Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)Landroid/app/Dialog;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 73
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    const/16 v2, 0x2711

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
