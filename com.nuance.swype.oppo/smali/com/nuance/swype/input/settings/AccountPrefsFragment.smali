.class public Lcom/nuance/swype/input/settings/AccountPrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "AccountPrefsFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/AccountPrefsFragment$ConnectDialog;,
        Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;,
        Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/nuance/swype/input/settings/AccountPrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/AccountPrefsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->refreshDevicesRequest()V

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onPause()V

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->onPause()V

    .line 76
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/AccountPrefs;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->onResume()V

    .line 70
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStart()V

    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->onStart()V

    .line 64
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStop()V

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->onStop()V

    .line 82
    return-void
.end method
