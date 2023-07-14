.class Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;
.super Lcom/nuance/swype/input/settings/ChinesePrefs;
.source "ChinesePrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->createChinesePrefs()Lcom/nuance/swype/input/settings/ChinesePrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ChinesePrefsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/ChinesePrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    sget v1, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->CHINESE_PREFS_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->addPreferencesFromResource(I)V

    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected creatAddOnDictionaryPref()Landroid/preference/Preference;
    .locals 4

    .prologue
    .line 103
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 104
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 105
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragmentActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 107
    new-instance v2, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 134
    return-object v1
.end method

.method protected createClouldNetWorkPref()Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "pref":Landroid/preference/Preference;
    const-string/jumbo v1, "cloud_input"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 98
    return-object v0
.end method

.method protected createFunctionBarPref()Landroid/preference/Preference;
    .locals 4

    .prologue
    .line 88
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 89
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 90
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/input/settings/FunctionBarFragmentActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 91
    return-object v1
.end method

.method protected createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 81
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/input/settings/InputPrefsFragmentActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 83
    return-object v1
.end method

.method doCancelDialog(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 188
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->access$100(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 190
    .local v1, "m":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 191
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->access$100(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 201
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->removeActiveRef(I)V

    .line 196
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 197
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 198
    .local v0, "fragment":Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method doShowDialog(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 152
    if-nez p2, :cond_0

    .line 153
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 161
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->access$100(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 163
    .local v1, "m":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 164
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 165
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->access$100(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 178
    .end local v1    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->doCancelDialog(I)V

    .line 172
    const-string/jumbo v2, "DIALOG_ID"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$GenericDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$GenericDialog;-><init>()V

    .line 175
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {v0, p2}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 176
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 177
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 212
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method protected showConnectDialog()V
    .locals 3

    .prologue
    .line 228
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$ConnectDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$ConnectDialog;-><init>()V

    .line 229
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 230
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method protected showDownloadAddonDictionaries()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->showAddonDictionaries(Z)V

    .line 224
    return-void
.end method

.method protected showMaxCountdialog()V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$MaxItemDlg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$MaxItemDlg;-><init>()V

    .line 146
    .local v0, "dialog":Lcom/nuance/swype/input/settings/ChinesePrefsFragment$MaxItemDlg;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$MaxItemDlg;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 147
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "max_item"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$MaxItemDlg;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method protected showNetworkNotificationDialog()V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;-><init>()V

    .line 217
    .local v0, "dialog":Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 218
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "network"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 219
    return-void
.end method
