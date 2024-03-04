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
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    sget v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->SOCIAL_INTEGRATION_PREFS_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->addPreferencesFromResource(I)V

    .line 22
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected showNoNetworkDialog()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$NoNetworkDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$NoNetworkDialog;-><init>()V

    .line 27
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 28
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "nonetwork"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 29
    return-void
.end method
