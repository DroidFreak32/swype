.class Lcom/nuance/swype/input/settings/UpdatesActivity$1;
.super Lcom/nuance/swype/input/settings/Updates;
.source "UpdatesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/UpdatesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/UpdatesActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/UpdatesActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/input/settings/UpdatesActivity$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/Updates;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesActivity;

    sget v1, Lcom/nuance/swype/input/settings/UpdatesActivity$1;->UPDATES_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/UpdatesActivity;->addPreferencesFromResource(I)V

    .line 22
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/UpdatesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesActivity;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/UpdatesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 34
    return-void
.end method

.method protected showConnectDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/UpdatesActivity;->removeDialog(I)V

    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/UpdatesActivity;->showDialog(I)V

    .line 29
    return-void
.end method

.method protected showUnknownSourcesDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/UpdatesActivity;->removeDialog(I)V

    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity$1;->this$0:Lcom/nuance/swype/input/settings/UpdatesActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/UpdatesActivity;->showDialog(I)V

    .line 40
    return-void
.end method
