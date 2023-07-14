.class Lcom/nuance/swype/input/settings/MyWordsPrefs$4;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "MyWordsPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$4;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 5
    .param p1, "isConnected"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 208
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$4;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 209
    if-nez p1, :cond_1

    .line 210
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$4;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->getActiveDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 211
    .local v0, "activationDialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$4;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doCancelDialog(I)V

    .line 213
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$4;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 222
    .end local v0    # "activationDialog":Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$4;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 217
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->isActivationCodePopupShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$4;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 219
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/UserPreferences;->setActivationCodePopupShown(Z)V

    goto :goto_0
.end method
