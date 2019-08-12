.class public Lcom/nuance/swype/input/settings/InputPrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "InputPrefsFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/InputPrefsFragment$ColorPickerDialog;,
        Lcom/nuance/swype/input/settings/InputPrefsFragment$StrokeWidthDialog;,
        Lcom/nuance/swype/input/settings/InputPrefsFragment$RecognitionSpeedDialog;
    }
.end annotation


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/InputPrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/InputPrefsFragment;)Lcom/nuance/swype/input/settings/InputPrefs;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefsFragment;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget v1, Lcom/nuance/swype/input/settings/InputPrefs;->INPUT_PREFS_XML:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->addPreferencesFromResource(I)V

    .line 19
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 20
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/nuance/swype/input/settings/InputPrefsFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/nuance/swype/input/settings/InputPrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/InputPrefsFragment;Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    .line 46
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/InputPrefs;->onResume()V

    .line 52
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/InputPrefs;->getInputModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    return-void
.end method
