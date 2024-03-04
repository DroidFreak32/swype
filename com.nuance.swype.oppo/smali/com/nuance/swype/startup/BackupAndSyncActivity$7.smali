.class final Lcom/nuance/swype/startup/BackupAndSyncActivity$7;
.super Ljava/lang/Object;
.source "BackupAndSyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/BackupAndSyncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/BackupAndSyncActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$7;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$7;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->access$200(Lcom/nuance/swype/startup/BackupAndSyncActivity;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$7;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->doShowDialog(I)V

    .line 190
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$7;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$7;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$7;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->doShowDialog(I)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$7;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->access$100(Lcom/nuance/swype/startup/BackupAndSyncActivity;)V

    goto :goto_0
.end method
