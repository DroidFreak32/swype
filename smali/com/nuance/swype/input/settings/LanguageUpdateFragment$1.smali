.class Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;
.super Lcom/nuance/swype/input/settings/LanguageUpdate;
.source "LanguageUpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageUpdateFragment;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/LanguageUpdate;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected doGetListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 48
    return-void
.end method

.method protected showConnectDialog()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$ConnectDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$ConnectDialog;-><init>()V

    .line 33
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 34
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected showRemoveLanguageDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 39
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$RemoveLanguageDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$RemoveLanguageDialog;-><init>()V

    .line 40
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 41
    invoke-virtual {v0, p1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "remove"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected showTimeoutDialog()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$TimeoutDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$TimeoutDialog;-><init>()V

    .line 58
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 59
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    return-void
.end method
