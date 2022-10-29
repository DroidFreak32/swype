.class final Lcom/nuance/swype/startup/BackupAndSyncDelegate$4;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "BackupAndSyncDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/BackupAndSyncDelegate;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/BackupAndSyncDelegate;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/startup/BackupAndSyncDelegate;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$4;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method
