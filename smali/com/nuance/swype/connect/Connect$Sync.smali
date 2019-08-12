.class public Lcom/nuance/swype/connect/Connect$Sync;
.super Ljava/lang/Object;
.source "Connect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sync"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/connect/Connect;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->disableSync()V

    .line 559
    :cond_0
    return-void
.end method

.method public doSync()V
    .locals 4

    .prologue
    .line 536
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->sync()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error doing a sync: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 546
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->enableSync()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error trying to enable backup and sync: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->connect_dlm_sync_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->isSyncEnabled()Z

    move-result v0

    .line 565
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V

    .line 527
    :cond_0
    return-void
.end method

.method public requestBackup(I)V
    .locals 4
    .param p1, "coreId"    # I

    .prologue
    .line 573
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->requestBackup(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error attempting a backup: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public requestRestore(I)V
    .locals 4
    .param p1, "coreId"    # I

    .prologue
    .line 583
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->requestRestore(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error attempting a restore: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V

    .line 533
    :cond_0
    return-void
.end method

.method public upgrade()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isConnectDLMBackupAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "Sync.upgrade() enabling sync"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 595
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect$Sync;->enable()V

    .line 600
    :goto_0
    return-void

    .line 597
    :cond_0
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "Sync.upgrade() disabling sync"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 598
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect$Sync;->disable()V

    goto :goto_0
.end method
