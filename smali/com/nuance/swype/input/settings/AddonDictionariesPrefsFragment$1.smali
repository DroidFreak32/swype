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
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 41
    return-void
.end method

.method protected showConnectDialog()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$ConnectDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$ConnectDialog;-><init>()V

    .line 26
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 27
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method protected showRemoveDictionaryDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 32
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$RemoveDictionaryDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$RemoveDictionaryDialog;-><init>()V

    .line 33
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 34
    invoke-virtual {v0, p1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "remove"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected showTimeoutDialog()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$TimeoutDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$TimeoutDialog;-><init>()V

    .line 46
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 47
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 48
    return-void
.end method
