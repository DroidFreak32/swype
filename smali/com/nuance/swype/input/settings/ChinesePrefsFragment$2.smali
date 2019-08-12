.class Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;
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
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/ChinesePrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    sget v1, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->CHINESE_PREFS_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->addPreferencesFromResource(I)V

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected creatAddOnDictionaryPref()Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, "pref":Landroid/preference/Preference;
    const-class v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2$1;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    :goto_0
    return-object v0

    .line 100
    :cond_0
    new-instance v1, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2$2;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method protected createFunctionBarPref()Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "pref":Landroid/preference/Preference;
    const-class v1, Lcom/nuance/swype/input/settings/FunctionBarFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 78
    return-object v0
.end method

.method protected createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 68
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "pref":Landroid/preference/Preference;
    const-class v1, Lcom/nuance/swype/input/settings/InputPrefsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 71
    return-object v0
.end method

.method doCancelDialog(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 181
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->access$000(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 183
    .local v1, "m":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 184
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->access$000(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->removeActiveRef(I)V

    .line 189
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 191
    .local v0, "fragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method doShowDialog(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 131
    if-nez p2, :cond_0

    .line 132
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 140
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->access$000(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 142
    .local v1, "m":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 143
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 144
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->access$000(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 171
    .end local v1    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->doCancelDialog(I)V

    .line 149
    const-string v2, "DIALOG_ID"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$GenericDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$GenericDialog;-><init>()V

    .line 166
    .local v0, "dialog":Landroid/app/DialogFragment;
    invoke-virtual {v0, p2}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 168
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 169
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method protected showDownloadAddonDictionaries()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showAddonDictionaries()V

    .line 218
    return-void
.end method

.method protected showMaxCountdialog()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$MaxItemDlg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$MaxItemDlg;-><init>()V

    .line 125
    .local v0, "dialog":Lcom/nuance/swype/input/settings/ChinesePrefsFragment$MaxItemDlg;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$MaxItemDlg;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 126
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->MAX_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$MaxItemDlg;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method protected showNetworkNotificationDialog()V
    .locals 3

    .prologue
    .line 209
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;-><init>()V

    .line 210
    .local v0, "dialog":Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 211
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "network"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 212
    return-void
.end method
