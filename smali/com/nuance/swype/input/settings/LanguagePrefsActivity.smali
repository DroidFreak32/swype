.class public Lcom/nuance/swype/input/settings/LanguagePrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "LanguagePrefsActivity.java"


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/LanguagePrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguagePrefsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguagePrefsActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 18
    new-instance v0, Lcom/nuance/swype/input/settings/LanguagePrefsActivity$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguagePrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguagePrefsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/nuance/swype/input/settings/LanguagePrefsActivity$1;-><init>(Lcom/nuance/swype/input/settings/LanguagePrefsActivity;Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguagePrefsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguagePrefs;

    .line 36
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguagePrefsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguagePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguagePrefs;->buildLanguagesScreen()V

    .line 42
    return-void
.end method
