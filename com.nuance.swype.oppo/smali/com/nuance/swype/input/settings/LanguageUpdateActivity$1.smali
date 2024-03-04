.class Lcom/nuance/swype/input/settings/LanguageUpdateActivity$1;
.super Lcom/nuance/swype/input/settings/LanguageUpdate;
.source "LanguageUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageUpdateActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageUpdateActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/LanguageUpdate;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected doGetListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateActivity;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 42
    return-void
.end method

.method protected showConnectDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->removeDialog(I)V

    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->showDialog(I)V

    .line 31
    return-void
.end method

.method protected showRemoveLanguageDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->removeDialog(I)V

    .line 36
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateActivity;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 37
    return-void
.end method

.method protected showTimeoutDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->removeDialog(I)V

    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdateActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->showDialog(I)V

    .line 53
    return-void
.end method
