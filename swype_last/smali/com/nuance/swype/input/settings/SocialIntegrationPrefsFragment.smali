.class public Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "SocialIntegrationPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$NoNetworkDialog;
    }
.end annotation


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;)Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    .line 29
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStart()V

    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->onStart()V

    .line 35
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStop()V

    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->onStop()V

    .line 41
    return-void
.end method
