.class public Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "MyWordsPrefsActivity.java"


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;)Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$1;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 52
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 102
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->createAskBeforeAddCheckDlg()Landroid/app/Dialog;

    move-result-object v0

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->createEraseUdbConfirmationDlg()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_2
    const/16 v1, 0x9

    if-ne p1, v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->createNetworkNotificationDialg()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v1, p1, p0, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doCreateDialog(ILandroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 110
    .local v0, "d":Landroid/app/Dialog;
    if-eqz v0, :cond_4

    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 111
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 112
    :cond_4
    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 113
    new-instance v1, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$2;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onPause()V

    .line 70
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 87
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_account_register"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_connect_hotwords"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_social_integration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onResume()V

    .line 64
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onStart()V

    .line 58
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onStop()V

    .line 76
    return-void
.end method
