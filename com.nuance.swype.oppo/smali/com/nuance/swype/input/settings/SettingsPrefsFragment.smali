.class public Lcom/nuance/swype/input/settings/SettingsPrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "SettingsPrefsFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/SettingsPrefsFragment$RecognitionSpeedDialog;,
        Lcom/nuance/swype/input/settings/SettingsPrefsFragment$LongPressDelayDialog;,
        Lcom/nuance/swype/input/settings/SettingsPrefsFragment$VibrationDurationDialog;
    }
.end annotation


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/SettingsPrefsFragment;)Lcom/nuance/swype/input/settings/SettingsPrefs;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/settings/SettingsPrefs;->PREFERENCES_XML:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 22
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->onResume()V

    .line 62
    return-void
.end method
