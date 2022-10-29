.class final Lcom/nuance/swype/startup/BackupAndSyncDelegate$2;
.super Ljava/lang/Object;
.source "BackupAndSyncDelegate.java"

# interfaces
.implements Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/BackupAndSyncDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 97
    iput-object p1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$2;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNegativeButtonClick()Z
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public final onPositiveButtonClick()Z
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$2;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$000(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)V

    .line 102
    const/4 v0, 0x0

    return v0
.end method
