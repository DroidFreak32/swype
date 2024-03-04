.class Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;
.super Lcom/nuance/swype/input/settings/MyWordsPrefs;
.source "MyWordsPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->createMyWordsPrefs()Lcom/nuance/swype/input/settings/MyWordsPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    sget v1, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->MY_WORDS_PREFS_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->addPreferencesFromResource(I)V

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method doCancelDialog(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const-wide/16 v6, 0x32

    const/4 v4, 0x0

    .line 127
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 129
    .local v1, "m":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 130
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 147
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removeActiveRef(I)V

    .line 135
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 137
    .local v0, "fragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Landroid/app/DialogFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 142
    .restart local v1    # "m":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 143
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method doShowDialog(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 74
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 76
    .local v1, "m":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 77
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 78
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 117
    .end local v1    # "m":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    .line 82
    :cond_3
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->doCancelDialog(I)V

    .line 83
    const-string v2, "DIALOG_ID"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 108
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$GenericDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$GenericDialog;-><init>()V

    .line 112
    .local v0, "dialog":Landroid/app/DialogFragment;
    :goto_1
    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0, p2}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 114
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 115
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v0    # "dialog":Landroid/app/DialogFragment;
    :pswitch_0
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$PrivacyDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$PrivacyDialog;-><init>()V

    .line 89
    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    goto :goto_1

    .line 92
    .end local v0    # "dialog":Landroid/app/DialogFragment;
    :pswitch_1
    invoke-static {}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->newInstance()Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;

    move-result-object v0

    .line 93
    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    goto :goto_1

    .line 96
    .end local v0    # "dialog":Landroid/app/DialogFragment;
    :pswitch_2
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AskBeforeAddDialg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AskBeforeAddDialg;-><init>()V

    .line 97
    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    goto :goto_1

    .line 100
    .end local v0    # "dialog":Landroid/app/DialogFragment;
    :pswitch_3
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$ShowEraseUdbDialg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$ShowEraseUdbDialg;-><init>()V

    .line 101
    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    goto :goto_1

    .line 104
    .end local v0    # "dialog":Landroid/app/DialogFragment;
    :pswitch_4
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;-><init>()V

    .line 105
    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    goto :goto_1

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    return-void
.end method

.method protected showPreferenceFragment(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 157
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .end local v0    # "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 162
    :cond_0
    return-void
.end method
