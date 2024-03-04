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
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/AccountPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    sget v1, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->ACCOUNT_PREFS_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->addPreferencesFromResource(I)V

    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected showConnectDialog()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$ConnectDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$ConnectDialog;-><init>()V

    .line 52
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 53
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method protected showDeleteAccountDialog()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;-><init>()V

    .line 34
    .local v0, "dialog":Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 35
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "delete_account"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected showUnlinkDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;

    invoke-direct {v1}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;-><init>()V

    .line 44
    .local v1, "dialog":Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;->setArguments(Landroid/os/Bundle;)V

    .line 46
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "unlink_device"

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    return-void
.end method
