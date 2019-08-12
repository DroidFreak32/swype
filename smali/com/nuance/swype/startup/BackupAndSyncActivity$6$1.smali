.class final Lcom/nuance/swype/startup/BackupAndSyncActivity$6$1;
.super Ljava/lang/Object;
.source "BackupAndSyncActivity.java"

# interfaces
.implements Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/BackupAndSyncActivity$6;->doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/nuance/swype/startup/BackupAndSyncActivity$6;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/BackupAndSyncActivity$6;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$6$1;->this$1:Lcom/nuance/swype/startup/BackupAndSyncActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNegativeButtonClick()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public final onPositiveButtonClick()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$6$1;->this$1:Lcom/nuance/swype/startup/BackupAndSyncActivity$6;

    iget-object v0, v0, Lcom/nuance/swype/startup/BackupAndSyncActivity$6;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->access$100(Lcom/nuance/swype/startup/BackupAndSyncActivity;)V

    .line 159
    const/4 v0, 0x0

    return v0
.end method
