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
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageUpdateFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/LanguageUpdate;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected doGetListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 47
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
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 43
    return-void
.end method

.method protected showConnectDialog()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$ConnectDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$ConnectDialog;-><init>()V

    .line 28
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 29
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method protected showRemoveLanguageDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 34
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$RemoveLanguageDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$RemoveLanguageDialog;-><init>()V

    .line 35
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 36
    invoke-virtual {v0, p1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "remove"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method protected showTimeoutDialog()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$TimeoutDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$TimeoutDialog;-><init>()V

    .line 53
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 54
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 55
    return-void
.end method
