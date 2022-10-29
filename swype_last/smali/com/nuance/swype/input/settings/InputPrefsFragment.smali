.class public Lcom/nuance/swype/input/settings/InputPrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "InputPrefsFragment.java"


# annotations
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
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/InputPrefsFragment;)Lcom/nuance/swype/input/settings/InputPrefs;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefsFragment;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget v1, Lcom/nuance/swype/input/settings/InputPrefs;->INPUT_PREFS_XML:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->addPreferencesFromResource(I)V

    .line 17
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 18
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1a

    .line 19
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 21
    :cond_1a
    new-instance v1, Lcom/nuance/swype/input/settings/InputPrefsFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/nuance/swype/input/settings/InputPrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/InputPrefsFragment;Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    .line 47
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 51
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/InputPrefs;->onResume()V

    .line 53
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 54
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/InputPrefs;->getInputModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1b
    return-void
.end method
