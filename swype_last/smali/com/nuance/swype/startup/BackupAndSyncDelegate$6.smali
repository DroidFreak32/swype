.class final Lcom/nuance/swype/startup/BackupAndSyncDelegate$6;
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
    .line 236
    iput-object p1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$6;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$6;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowBackupSync(Z)V

    .line 240
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$6;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$6;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$6;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 241
    return-void
.end method
