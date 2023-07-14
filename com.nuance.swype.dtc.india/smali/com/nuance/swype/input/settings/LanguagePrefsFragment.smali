.class public Lcom/nuance/swype/input/settings/LanguagePrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "LanguagePrefsFragment.java"


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/LanguagePrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguagePrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguagePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/LanguagePrefsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 16
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguagePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 17
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguagePrefsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 20
    :cond_0
    new-instance v1, Lcom/nuance/swype/input/settings/LanguagePrefsFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguagePrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/nuance/swype/input/settings/LanguagePrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/LanguagePrefsFragment;Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/LanguagePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguagePrefs;

    .line 35
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguagePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguagePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguagePrefs;->buildLanguagesScreen()V

    .line 46
    return-void
.end method
