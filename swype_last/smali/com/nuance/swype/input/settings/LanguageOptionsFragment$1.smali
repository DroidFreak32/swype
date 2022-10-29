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
    .registers 4
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageOptionsFragment;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/settings/LanguageOptions;-><init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method private showDialog(Landroid/os/Bundle;Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .registers 7
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "dialog"    # Landroid/support/v4/app/DialogFragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 56
    invoke-virtual {p2, p1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 58
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 60
    return-void
.end method


# virtual methods
.method protected doStartActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    return-void
.end method

.method protected refresh()V
    .registers 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/app/Activity;
    instance-of v1, v0, Lcom/nuance/swype/input/settings/SettingsV11;

    if-eqz v1, :cond_f

    .line 102
    check-cast v0, Lcom/nuance/swype/input/settings/SettingsV11;

    .end local v0    # "a":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->updateDrawerList()V

    .line 107
    :cond_f
    return-void
.end method

.method protected showConnectDialog()V
    .registers 4

    .prologue
    .line 44
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$ConnectDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$ConnectDialog;-><init>()V

    .line 45
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 46
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected showKeyboardDialog(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 69
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$KeyboardDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$KeyboardDialog;-><init>()V

    const-string/jumbo v1, "keyboard"

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->showDialog(Landroid/os/Bundle;Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected showLanguageDialog(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 64
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$LanguageDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$LanguageDialog;-><init>()V

    const-string/jumbo v1, "language"

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->showDialog(Landroid/os/Bundle;Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected showLanguageDownload(Landroid/preference/Preference;)V
    .registers 5
    .param p1, "downloadLanguages"    # Landroid/preference/Preference;

    .prologue
    .line 74
    if-eqz p1, :cond_45

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 76
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "download_languages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 78
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 80
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/LanguageOptions;->showNetworkNotificationDialog(Ljava/lang/String;)V

    .line 96
    :cond_44
    :goto_44
    return-void

    .line 85
    :cond_45
    if-eqz p1, :cond_44

    .line 86
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 87
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_59

    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 89
    :cond_59
    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->showLanguageDownloads()V

    goto :goto_44
.end method

.method protected showLanguageDownload(Ljava/lang/String;)V
    .registers 5
    .param p1, "mPrefKey"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 119
    invoke-virtual {v2, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 120
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_25

    .line 121
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 122
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1e

    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 124
    :cond_1e
    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->showLanguageDownloads()V

    .line 130
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_25
    return-void
.end method

.method protected showNetworkNotificationDialog(Ljava/lang/String;)V
    .registers 5
    .param p1, "mPrefKey"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$NetworkNotificationDialg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$NetworkNotificationDialg;-><init>()V

    .line 112
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 113
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "network"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 114
    return-void
.end method
