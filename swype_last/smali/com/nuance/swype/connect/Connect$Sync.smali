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
.field private mPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/connect/Connect;
    .param p2, "presenter"    # Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p2, p0, Lcom/nuance/swype/connect/Connect$Sync;->mPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    .line 540
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 598
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->disableSync()V

    .line 600
    :cond_11
    return-void
.end method

.method public doSync()V
    .registers 5

    .prologue
    .line 555
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 557
    :try_start_8
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->sync()V
    :try_end_11
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_8 .. :try_end_11} :catch_12

    .line 562
    :cond_11
    :goto_11
    return-void

    .line 558
    :catch_12
    move-exception v0

    .line 559
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error doing a sync: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public enable()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 565
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string/jumbo v6, "Sync enable()..."

    aput-object v6, v5, v3

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 566
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v4

    if-eqz v4, :cond_4e

    move v1, v2

    .line 567
    .local v1, "legalAccepted":Z
    :goto_29
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v4}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v4

    if-eqz v4, :cond_33

    if-nez v1, :cond_5a

    .line 568
    :cond_33
    if-nez v1, :cond_8f

    .line 569
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$Sync;->mPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    if-nez v4, :cond_50

    .line 570
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Could not enable Backup & Sync because the "

    aput-object v6, v5, v3

    const-string/jumbo v3, "TOS / Opt-In could not be accepted"

    aput-object v3, v5, v2

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 594
    :cond_4d
    :goto_4d
    return-void

    .end local v1    # "legalAccepted":Z
    :cond_4e
    move v1, v3

    .line 566
    goto :goto_29

    .line 574
    .restart local v1    # "legalAccepted":Z
    :cond_50
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$Sync;->mPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    new-instance v4, Lcom/nuance/swype/connect/Connect$Sync$1;

    invoke-direct {v4, p0}, Lcom/nuance/swype/connect/Connect$Sync$1;-><init>(Lcom/nuance/swype/connect/Connect$Sync;)V

    invoke-interface {v3, v2, v2, v4}, Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;->presentLegalRequirements(ZZLjava/lang/Runnable;)Z

    .line 586
    :cond_5a
    :goto_5a
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 588
    :try_start_62
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->enableSync()V

    .line 589
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/Connect;->setContributeUsageData(Z)V
    :try_end_71
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_62 .. :try_end_71} :catch_72

    goto :goto_4d

    .line 590
    :catch_72
    move-exception v0

    .line 591
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error trying to enable backup and sync: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_4d

    .line 583
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :cond_8f
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # invokes: Lcom/nuance/swype/connect/Connect;->getDlmSyncService()Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1400(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    goto :goto_5a
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isConnectDLMBackupAllowed()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 544
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V

    .line 546
    :cond_11
    return-void
.end method

.method public requestBackup(I)V
    .registers 6
    .param p1, "coreId"    # I

    .prologue
    .line 611
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 613
    :try_start_8
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->requestBackup(I)V
    :try_end_11
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_8 .. :try_end_11} :catch_12

    .line 618
    :cond_11
    :goto_11
    return-void

    .line 614
    :catch_12
    move-exception v0

    .line 615
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error attempting a backup: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public requestRestore(I)V
    .registers 6
    .param p1, "coreId"    # I

    .prologue
    .line 621
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 623
    :try_start_8
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->requestRestore(I)V
    :try_end_11
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_8 .. :try_end_11} :catch_12

    .line 628
    :cond_11
    :goto_11
    return-void

    .line 624
    :catch_12
    move-exception v0

    .line 625
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error attempting a restore: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 550
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V

    .line 552
    :cond_11
    return-void
.end method

.method public upgrade()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 631
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Sync;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isConnectDLMBackupAllowed()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 632
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Sync.upgrade() enabling sync"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 633
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect$Sync;->enable()V

    .line 638
    :goto_23
    return-void

    .line 635
    :cond_24
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Sync.upgrade() disabling sync"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 636
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect$Sync;->disable()V

    goto :goto_23
.end method
