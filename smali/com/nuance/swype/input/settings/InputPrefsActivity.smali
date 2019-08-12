.class public Lcom/nuance/swype/input/settings/InputPrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "InputPrefsActivity.java"


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/InputPrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget v0, Lcom/nuance/swype/input/settings/InputPrefs;->INPUT_PREFS_XML:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/InputPrefsActivity;->addPreferencesFromResource(I)V

    .line 17
    new-instance v0, Lcom/nuance/swype/input/settings/InputPrefsActivity$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/InputPrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/InputPrefsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/nuance/swype/input/settings/InputPrefsActivity$1;-><init>(Lcom/nuance/swype/input/settings/InputPrefsActivity;Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    .line 32
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/InputPrefs;->createRecognitionSpeedDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/InputPrefs;->createStrokeWidthDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/InputPrefs;->createColorPickerDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/InputPrefs;->onResume()V

    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/InputPrefs;->getInputModeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/InputPrefsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
