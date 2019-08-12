.class public Lcom/nuance/swype/input/settings/AccountPrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "AccountPrefsActivity.java"


# instance fields
.field protected final CONNECTION_DIALOG:I

.field protected final DELETE_ACCOUNT_DIALOG:I

.field protected final UNLINK_DEVICE_DIALOG:I

.field private delegate:Lcom/nuance/swype/input/settings/AccountPrefs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->DELETE_ACCOUNT_DIALOG:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->UNLINK_DEVICE_DIALOG:I

    .line 84
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->CONNECTION_DIALOG:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;-><init>(Lcom/nuance/swype/input/settings/AccountPrefsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->refreshDevicesRequest()V

    .line 50
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->createDeleteAccountDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->createUnlinkDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->createConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->onPause()V

    .line 68
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/AccountPrefs;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

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

.method protected onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->onResume()V

    .line 62
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 55
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->onStart()V

    .line 56
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->onStop()V

    .line 74
    return-void
.end method
