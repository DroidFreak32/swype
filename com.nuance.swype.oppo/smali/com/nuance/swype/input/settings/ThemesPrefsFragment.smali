.class public Lcom/nuance/swype/input/settings/ThemesPrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "ThemesPrefsFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/ThemesPrefsFragment$CandidateSizeDialog;,
        Lcom/nuance/swype/input/settings/ThemesPrefsFragment$KeyboardHeightDialog;,
        Lcom/nuance/swype/input/settings/ThemesPrefsFragment$KeyboardModeDialog;
    }
.end annotation


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/ThemesPrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ThemesPrefsFragment;)Lcom/nuance/swype/input/settings/ThemesPrefs;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesPrefs;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/settings/ThemesPrefs;->PREFERENCES_XML:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 21
    new-instance v0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesPrefs;

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->onResume()V

    .line 60
    return-void
.end method
