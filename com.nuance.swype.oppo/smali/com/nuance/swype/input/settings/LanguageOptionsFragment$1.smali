.class Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;
.super Lcom/nuance/swype/input/settings/LanguageOptions;
.source "LanguageOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->createLanguageOptions()Lcom/nuance/swype/input/settings/LanguageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptionsFragment;Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/settings/LanguageOptions;-><init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method protected doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    return-void
.end method

.method protected refresh()V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/app/Activity;
    instance-of v1, v0, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Landroid/preference/PreferenceActivity;

    .end local v0    # "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 112
    :cond_0
    return-void
.end method

.method public showAlmAvailableDialog(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 58
    return-void
.end method

.method protected showConnectDialog()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$ConnectDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$ConnectDialog;-><init>()V

    .line 38
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 39
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected showKeyboardDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 75
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$KeyboardDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$KeyboardDialog;-><init>()V

    .line 76
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 77
    invoke-virtual {v0, p1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 79
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const-string v2, "keyboard"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 80
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 81
    return-void
.end method

.method protected showLanguageDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 67
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$LanguageDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$LanguageDialog;-><init>()V

    .line 68
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 69
    invoke-virtual {v0, p1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected showLanguageDownload(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "downloadLanguages"    # Landroid/preference/Preference;

    .prologue
    .line 85
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_languages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/LanguageOptions;->showNetworkNotificationDialog(Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    if-eqz p1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .end local v0    # "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected showLanguageDownload(Ljava/lang/String;)V
    .locals 3
    .param p1, "mPrefKey"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 126
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 127
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v2, :cond_0

    .line 130
    check-cast v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .end local v0    # "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-interface {v0, v2, v1}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 134
    :cond_0
    return-void
.end method

.method protected showNetworkNotificationDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "mPrefKey"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$NetworkNotificationDialg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$NetworkNotificationDialg;-><init>()V

    .line 118
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 119
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "network"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 120
    return-void
.end method
