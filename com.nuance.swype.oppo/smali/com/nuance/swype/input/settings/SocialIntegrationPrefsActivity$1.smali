.class Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity$1;
.super Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;
.source "SocialIntegrationPrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;

    sget v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->SOCIAL_INTEGRATION_PREFS_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;->addPreferencesFromResource(I)V

    .line 20
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected showNoNetworkDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 25
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;->removeDialog(I)V

    .line 26
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsActivity;->showDialog(I)V

    .line 27
    return-void
.end method
