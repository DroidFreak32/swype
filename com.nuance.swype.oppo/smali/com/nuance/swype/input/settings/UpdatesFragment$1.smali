.class Lcom/nuance/swype/input/settings/UpdatesFragment$1;
.super Lcom/nuance/swype/input/settings/Updates;
.source "UpdatesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/UpdatesFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/UpdatesFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/UpdatesFragment;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nuance/swype/input/settings/UpdatesFragment$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/Updates;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesFragment;

    sget v1, Lcom/nuance/swype/input/settings/UpdatesFragment$1;->UPDATES_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/UpdatesFragment;->addPreferencesFromResource(I)V

    .line 25
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/UpdatesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesFragment;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/UpdatesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 38
    return-void
.end method

.method protected showConnectDialog()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/nuance/swype/input/settings/UpdatesFragment$ConnectDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/UpdatesFragment$ConnectDialog;-><init>()V

    .line 31
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/UpdatesFragment$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 32
    iget-object v1, p0, Lcom/nuance/swype/input/settings/UpdatesFragment$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/UpdatesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method protected showUnknownSourcesDialog()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/nuance/swype/input/settings/UpdatesFragment$UnknownSourcesDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/UpdatesFragment$UnknownSourcesDialog;-><init>()V

    .line 43
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/UpdatesFragment$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 44
    iget-object v1, p0, Lcom/nuance/swype/input/settings/UpdatesFragment$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/UpdatesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 45
    return-void
.end method
