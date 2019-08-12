.class public Lcom/nuance/swype/input/about/MainAboutActivity;
.super Landroid/preference/PreferenceActivity;
.source "MainAboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    sget v0, Lcom/nuance/swype/input/about/AboutBuilders;->ABOUT_PREFS_XML:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/about/MainAboutActivity;->addPreferencesFromResource(I)V

    .line 13
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/MainAboutActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/about/AboutBuilders;->fixupAboutPreferences(Landroid/preference/PreferenceScreen;)V

    .line 14
    return-void
.end method
