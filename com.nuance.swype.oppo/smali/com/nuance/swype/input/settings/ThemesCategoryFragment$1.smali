.class Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;
.super Lcom/nuance/swype/input/settings/ThemesCategory;
.source "ThemesCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/ThemesCategory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected showConfirmThemeDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$002(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;Z)Z

    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected showMoreThemes()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    .line 89
    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/ThemeManager;->setCurrentThemesCategory(Lcom/nuance/swype/input/settings/ThemesCategory;)V

    .line 90
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "preference":Landroid/preference/Preference;
    const-class v1, Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 92
    sget v1, Lcom/nuance/swype/input/R$string;->more_content:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 93
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 94
    return-void
.end method

.method protected showThemesPrefs()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "preference":Landroid/preference/Preference;
    const-class v1, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 100
    sget v1, Lcom/nuance/swype/input/R$string;->theme_options:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 101
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 102
    return-void
.end method

.method protected startPurchaseFlow(Ljava/lang/String;)V
    .locals 5
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$002(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;Z)Z

    .line 65
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$100(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$100(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    .line 71
    .local v1, "themeManager":Lcom/nuance/swype/input/ThemeManager;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/nuance/swype/input/BuildInfo;->isGoogleTrialBuild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1, v3, v4}, Lcom/nuance/swype/input/ThemeManager;->showNotAvailableDialogForGoogleTrail(Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)Landroid/app/Dialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$102(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 75
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$100(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 78
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/ThemeManager;->setThemesCategory(Lcom/nuance/swype/input/settings/ThemesCategory;)V

    .line 81
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    const/16 v3, 0x2711

    invoke-virtual {v2, v0, v3}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
