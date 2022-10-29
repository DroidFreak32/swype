.class final Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;
.super Ljava/lang/Object;
.source "BackupAndSyncDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/BackupAndSyncDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    # getter for: Lcom/nuance/swype/startup/BackupAndSyncDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;
    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$500(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    # getter for: Lcom/nuance/swype/startup/BackupAndSyncDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;
    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$500(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_20

    .line 215
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    # getter for: Lcom/nuance/swype/startup/BackupAndSyncDelegate;->connectionDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$600(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->showDialog(Landroid/app/Dialog;)V

    .line 224
    :goto_1f
    return-void

    .line 219
    :cond_20
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->shouldShowNetworkAgreementDialog()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    # getter for: Lcom/nuance/swype/startup/BackupAndSyncDelegate;->cnNwDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$700(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 220
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    # getter for: Lcom/nuance/swype/startup/BackupAndSyncDelegate;->cnNwDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$700(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->showDialog(Landroid/app/Dialog;)V

    goto :goto_1f

    .line 223
    :cond_3e
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$000(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)V

    goto :goto_1f
.end method
