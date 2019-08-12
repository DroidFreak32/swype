.class public Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SocialIntegrationPrefsActivity.java"


# instance fields
.field protected final NO_NETWORK_DIALOG:I

.field protected delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;->NO_NETWORK_DIALOG:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity$1;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    .line 29
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->createNoNetworkDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->onResume()V

    .line 35
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->onStop()V

    .line 41
    return-void
.end method
