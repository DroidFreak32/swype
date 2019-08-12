.class final Lcom/nuance/swype/startup/BackupAndSyncActivity$5;
.super Ljava/lang/Object;
.source "BackupAndSyncActivity.java"

# interfaces
.implements Lcom/nuance/swype/startup/StartupActivity$DialogCreator;


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
    .line 143
    iput-object p1, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$5;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$5;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->access$000(Lcom/nuance/swype/startup/BackupAndSyncActivity;)Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
