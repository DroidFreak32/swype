.class final Lcom/nuance/swype/startup/BackupAndSyncDelegate$1;
.super Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.source "BackupAndSyncDelegate.java"


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
.method constructor <init>(Lcom/nuance/swype/startup/BackupAndSyncDelegate;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/startup/BackupAndSyncDelegate;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$1;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-direct {p0, p2}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final showConnectDialog()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method
