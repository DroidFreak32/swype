.class public Lcom/nuance/swype/input/about/MainAboutFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "MainAboutFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget v0, Lcom/nuance/swype/input/about/AboutBuilders;->ABOUT_PREFS_XML:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/about/MainAboutFragment;->addPreferencesFromResource(I)V

    .line 17
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/MainAboutFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/about/AboutBuilders;->fixupAboutPreferences(Landroid/preference/PreferenceScreen;)V

    .line 18
    return-void
.end method
