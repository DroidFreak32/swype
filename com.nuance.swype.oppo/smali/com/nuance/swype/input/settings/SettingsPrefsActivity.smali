.class public Lcom/nuance/swype/input/settings/SettingsPrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsPrefsActivity.java"


# static fields
.field protected static final ERASE_UDB_DIALOG_ID:I = 0x1


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->PREFERENCES_XML:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 27
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/nuance/swype/input/settings/SettingsPrefsActivity$1;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 49
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->createVibrationDurationDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->createLongPressDurationDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->createRecognitionSpeedDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->onResume()V

    .line 55
    return-void
.end method
