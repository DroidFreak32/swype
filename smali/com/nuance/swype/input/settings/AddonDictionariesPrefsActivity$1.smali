.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity$1;
.super Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.source "AddonDictionariesPrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    return-void
.end method

.method protected showConnectDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->removeDialog(I)V

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->showDialog(I)V

    .line 44
    return-void
.end method

.method protected showRemoveDictionaryDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->removeDialog(I)V

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 50
    return-void
.end method

.method protected showTimeoutDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->removeDialog(I)V

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->showDialog(I)V

    .line 61
    return-void
.end method
