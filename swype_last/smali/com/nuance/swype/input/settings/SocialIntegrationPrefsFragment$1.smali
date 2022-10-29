.class Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;
.super Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;
.source "SocialIntegrationPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .registers 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    sget v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->SOCIAL_INTEGRATION_PREFS_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->addPreferencesFromResource(I)V

    .line 20
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected showNoNetworkDialog()V
    .registers 4

    .prologue
    .line 24
    new-instance v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$NoNetworkDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$NoNetworkDialog;-><init>()V

    .line 25
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 26
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "nonetwork"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 27
    return-void
.end method
