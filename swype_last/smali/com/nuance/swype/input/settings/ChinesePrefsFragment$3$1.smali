.class Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;
.super Ljava/lang/Object;
.source "ChinesePrefsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->creatAddOnDictionaryPref()Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 110
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    # getter for: Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;
    invoke-static {v4}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->access$000(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnectedWifi()Z

    move-result v4

    if-nez v4, :cond_32

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    .line 111
    # getter for: Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;
    invoke-static {v4}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->access$000(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnectedCellular()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    # getter for: Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;
    invoke-static {v4}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->access$000(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isDataConnectionPermitted()Z

    move-result v4

    if-nez v4, :cond_32

    .line 112
    :cond_2c
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->showConnectDialog()V

    .line 130
    :goto_31
    return v2

    .line 116
    :cond_32
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 117
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 118
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->showNetworkNotificationDialog()V

    goto :goto_31

    .line 122
    :cond_56
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 123
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_7a

    .line 125
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;->doStartActivityForResult(Landroid/content/Intent;I)V

    goto :goto_31

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7a
    move v2, v3

    .line 130
    goto :goto_31
.end method
