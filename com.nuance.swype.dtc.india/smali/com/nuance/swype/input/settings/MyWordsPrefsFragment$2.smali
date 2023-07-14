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
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    sget v1, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->MY_WORDS_PREFS_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->addPreferencesFromResource(I)V

    .line 63
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

    .line 128
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 130
    .local v1, "m":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 131
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 147
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removeActiveRef(I)V

    .line 136
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 138
    .local v0, "fragment":Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 143
    .restart local v1    # "m":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 144
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method doShowDialog(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 68
    if-nez p2, :cond_0

    .line 69
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 77
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 79
    .local v1, "m":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 80
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 81
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 118
    .end local v1    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 85
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->doCancelDialog(I)V

    .line 88
    const-string/jumbo v2, "DIALOG_ID"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    packed-switch p1, :pswitch_data_0

    .line 111
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$GenericDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$GenericDialog;-><init>()V

    .line 115
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    :goto_1
    invoke-virtual {v0, p2}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 117
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    :pswitch_0
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$PrivacyDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$PrivacyDialog;-><init>()V

    .line 92
    .restart local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    goto :goto_1

    .line 95
    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    :pswitch_1
    invoke-static {}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->newInstance()Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;

    move-result-object v0

    .line 96
    .restart local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    goto :goto_1

    .line 99
    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    :pswitch_2
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AskBeforeAddDialg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AskBeforeAddDialg;-><init>()V

    .line 100
    .restart local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    goto :goto_1

    .line 103
    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    :pswitch_3
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$ShowEraseUdbDialg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$ShowEraseUdbDialg;-><init>()V

    .line 104
    .restart local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    goto :goto_1

    .line 107
    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    :pswitch_4
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;-><init>()V

    .line 108
    .restart local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    goto :goto_1

    .line 89
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected doStartActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
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
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 157
    invoke-virtual {p1}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    .line 162
    return-void
.end method
