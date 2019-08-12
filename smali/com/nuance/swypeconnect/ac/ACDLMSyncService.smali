.class public final Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
.super Lcom/nuance/swypeconnect/ac/ACService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;,
        Lcom/nuance/swypeconnect/ac/ACDLMSyncService$DLMSyncCallbackWrapper;,
        Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;
    }
.end annotation


# static fields
.field public static final ERROR_SYNC_IGNORED:I = 0x12d


# instance fields
.field private final accountService:Lcom/nuance/connect/api/AccountService;

.field private final callbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;",
            "Lcom/nuance/swypeconnect/ac/ACDLMSyncService$DLMSyncCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private customerLog:Lcom/nuance/connect/util/Logger$Log;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final syncService:Lcom/nuance/connect/api/SyncService;


# direct methods
.method constructor <init>(Lcom/nuance/connect/api/SyncService;Lcom/nuance/connect/api/AccountService;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Ljava/util/HashMap;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->accountService:Lcom/nuance/connect/api/AccountService;

    return-void
.end method

.method private checkAccount()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->isAccountRegisteredAndVerified()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7f

    const-string v2, "An account must be linked to use DLM sync services"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final disableSync()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/SyncService;->setDLMSyncStatus(Z)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Backup and Sync disabled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    return-void
.end method

.method public final enableSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->checkAccount()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/SyncService;->setDLMSyncStatus(Z)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Backup and Sync enabled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    return-void
.end method

.method final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "DLM_SYNC_SERVICE"

    return-object v0
.end method

.method public final isSyncEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    invoke-interface {v0}, Lcom/nuance/connect/api/SyncService;->dlmSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->isAccountRegisteredAndVerified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final registerCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V
    .locals 4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Ljava/util/HashMap;

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$DLMSyncCallbackWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$DLMSyncCallbackWrapper;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    invoke-interface {v2, v0}, Lcom/nuance/connect/api/SyncService;->registerCallback(Lcom/nuance/connect/api/SyncService$DLMSyncCallback;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final requestBackup(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->checkAccount()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Backup requested for core "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7b

    const-string v2, "Supplied core does not support backup and sync"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/SyncService;->backupRequest(I)V

    return-void
.end method

.method public final requestCleanRestore(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Clean and restore for core "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7b

    const-string v2, "Supplied core does not support backup and sync"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/SyncService;->cleanRestore(I)V

    return-void
.end method

.method public final requestRestore(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->checkAccount()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Restore requested for core "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7b

    const-string v2, "Supplied core does not support backup and sync"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/SyncService;->restoreRequest(I)V

    return-void
.end method

.method final requiresDocument(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setSyncInterval(I)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Sync interval set to "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "hours."

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/SyncService;->setSyncInterval(I)V

    return-void
.end method

.method final shutdown()V
    .locals 0

    return-void
.end method

.method final start()V
    .locals 0

    return-void
.end method

.method public final sync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Sync requested"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->checkAccount()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    invoke-interface {v0}, Lcom/nuance/connect/api/SyncService;->syncNow()V

    return-void
.end method

.method public final unregisterCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V
    .locals 3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    invoke-interface {v2, v0}, Lcom/nuance/connect/api/SyncService;->unregisterCallback(Lcom/nuance/connect/api/SyncService$DLMSyncCallback;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final unregisterCallbacks()V
    .locals 2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    invoke-interface {v0}, Lcom/nuance/connect/api/SyncService;->unregisterCallbacks()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
