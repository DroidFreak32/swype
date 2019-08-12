.class Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;
.super Lcom/nuance/swype/input/settings/LanguageOptions;
.source "LanguageOptionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptionsActivity;Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/settings/LanguageOptions;-><init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method protected doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    return-void
.end method

.method protected refresh()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public showAlmAvailableDialog(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x2

    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->removeDialog(I)V

    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-virtual {v0, v1, p2}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 39
    return-void
.end method

.method protected showConnectDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->removeDialog(I)V

    .line 32
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->showDialog(I)V

    .line 33
    return-void
.end method

.method protected showKeyboardDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x4

    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->removeDialog(I)V

    .line 55
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 56
    return-void
.end method

.method protected showLanguageDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x3

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->removeDialog(I)V

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 50
    return-void
.end method

.method protected showLanguageDownload(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "downloadLanguages"    # Landroid/preference/Preference;

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected showLanguageDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefKey"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method

.method protected showNetworkNotificationDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "mPrefKey"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->removeDialog(I)V

    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->showDialog(I)V

    .line 77
    return-void
.end method
