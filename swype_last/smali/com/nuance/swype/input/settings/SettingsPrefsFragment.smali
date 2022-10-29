.class public Lcom/nuance/swype/input/settings/SettingsPrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "SettingsPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/SettingsPrefsFragment$SkinToneDialog;,
        Lcom/nuance/swype/input/settings/SettingsPrefsFragment$CandidateSizeDialog;,
        Lcom/nuance/swype/input/settings/SettingsPrefsFragment$KeyboardHeightDialog;,
        Lcom/nuance/swype/input/settings/SettingsPrefsFragment$RecognitionSpeedDialog;,
        Lcom/nuance/swype/input/settings/SettingsPrefsFragment$LongPressDelayDialog;,
        Lcom/nuance/swype/input/settings/SettingsPrefsFragment$VibrationDurationDialog;
    }
.end annotation


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/SettingsPrefsFragment;)Lcom/nuance/swype/input/settings/SettingsPrefs;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/settings/SettingsPrefs;->PREFERENCES_XML:I

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 28
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 97
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->setHasOptionsMenu(Z)V

    .line 99
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 175
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 176
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->onResume()V

    .line 105
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStart()V

    .line 181
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->onStart()V

    .line 182
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStop()V

    .line 188
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->onStop()V

    .line 189
    return-void
.end method
