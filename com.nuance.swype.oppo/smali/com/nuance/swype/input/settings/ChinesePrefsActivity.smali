.class public Lcom/nuance/swype/input/settings/ChinesePrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "ChinesePrefsActivity.java"


# instance fields
.field protected final MAXCOUNT__DIALOG:I

.field protected final NETWORK_NOTIFICATION__DIALOG:I

.field private delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 19
    const/16 v0, 0x64

    iput v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->MAXCOUNT__DIALOG:I

    .line 20
    const/16 v0, 0x65

    iput v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->NETWORK_NOTIFICATION__DIALOG:I

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ChinesePrefsActivity;)Lcom/nuance/swype/input/settings/ChinesePrefs;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    .line 120
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->createMaxItemDlg()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->createNetworkNotificationDialg()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/ChinesePrefs;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

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
    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 131
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->onResume()V

    .line 132
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->onStart()V

    .line 126
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->onStop()V

    .line 138
    return-void
.end method
