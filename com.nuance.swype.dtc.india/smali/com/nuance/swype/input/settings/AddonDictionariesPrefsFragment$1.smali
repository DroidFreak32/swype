.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;
.super Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.source "AddonDictionariesPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected showConnectDialog()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$ConnectDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$ConnectDialog;-><init>()V

    .line 25
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 26
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method protected showRemoveDictionaryDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 31
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$RemoveDictionaryDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$RemoveDictionaryDialog;-><init>()V

    .line 32
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 33
    invoke-virtual {v0, p1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "remove"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected showTimeoutDialog()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$TimeoutDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$TimeoutDialog;-><init>()V

    .line 40
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 41
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    return-void
.end method
