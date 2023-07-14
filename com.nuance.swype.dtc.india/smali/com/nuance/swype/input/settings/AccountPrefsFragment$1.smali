.class Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;
.super Lcom/nuance/swype/input/settings/AccountPrefs;
.source "AccountPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AccountPrefsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AccountPrefsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/AccountPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    sget v1, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->ACCOUNT_PREFS_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->addPreferencesFromResource(I)V

    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 25
    return-void
.end method

.method protected showConnectDialog()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$ConnectDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$ConnectDialog;-><init>()V

    .line 54
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 55
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected showDeleteAccountDialog()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;-><init>()V

    .line 36
    .local v0, "dialog":Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 37
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "delete_account"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method protected showUnlinkDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;

    invoke-direct {v1}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;-><init>()V

    .line 46
    .local v1, "dialog":Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;->setArguments(Landroid/os/Bundle;)V

    .line 48
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "unlink_device"

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 49
    return-void
.end method
