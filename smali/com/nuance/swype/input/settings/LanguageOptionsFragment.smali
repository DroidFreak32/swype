.class public Lcom/nuance/swype/input/settings/LanguageOptionsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "LanguageOptionsFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/LanguageOptionsFragment$NetworkNotificationDialg;,
        Lcom/nuance/swype/input/settings/LanguageOptionsFragment$KeyboardDialog;,
        Lcom/nuance/swype/input/settings/LanguageOptionsFragment$LanguageDialog;,
        Lcom/nuance/swype/input/settings/LanguageOptionsFragment$CommonDialog;,
        Lcom/nuance/swype/input/settings/LanguageOptionsFragment$AlmDialog;,
        Lcom/nuance/swype/input/settings/LanguageOptionsFragment$ConnectDialog;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/nuance/swype/input/settings/LanguageOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    .line 236
    return-void
.end method


# virtual methods
.method protected createLanguageOptions()Lcom/nuance/swype/input/settings/LanguageOptions;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;-><init>(Lcom/nuance/swype/input/settings/LanguageOptionsFragment;Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    .line 136
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/LanguageOptions;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/nuance/swype/input/settings/LanguageOptions;->LANGUAGE_PREFS_XML:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->addPreferencesFromResource(I)V

    .line 29
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->createLanguageOptions()Lcom/nuance/swype/input/settings/LanguageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    .line 30
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onPause()V

    .line 154
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->onPause()V

    .line 155
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_languages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 210
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreementNotAsk()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/LanguageOptions;->showNetworkNotificationDialog(Ljava/lang/String;)V

    .line 213
    const/4 v1, 0x1

    .line 217
    .end local v0    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->onResume()V

    .line 149
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStart()V

    .line 142
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->onStart()V

    .line 143
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStop()V

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->onStop()V

    .line 161
    return-void
.end method
