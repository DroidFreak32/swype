.class public Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "SocialIntegrationPrefsFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$NoNetworkDialog;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    .line 31
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 36
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->onResume()V

    .line 37
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStop()V

    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->onStop()V

    .line 43
    return-void
.end method
