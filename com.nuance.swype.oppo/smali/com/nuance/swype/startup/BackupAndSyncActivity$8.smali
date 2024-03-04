.class final Lcom/nuance/swype/startup/BackupAndSyncActivity$8;
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
    .line 203
    iput-object p1, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$8;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$8;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$8;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    const-class v3, Lcom/nuance/swype/startup/GettingStartedActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->startActivity(Landroid/content/Intent;)V

    .line 207
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity$8;->this$0:Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->finish()V

    .line 208
    return-void
.end method
