.class public final Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
.super Lcom/nuance/swypeconnect/ac/ACService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;
    }
.end annotation


# static fields
.field public static final ERROR_SYNC_IGNORED:I = 0x12d


# instance fields
.field private final accountService:Lcom/nuance/connect/api/AccountService;

.field private final callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;",
            ">;"
        }
    .end annotation
.end field

.field private customerLog:Lcom/nuance/connect/util/Logger$Log;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final manager:Lcom/nuance/swypeconnect/ac/ACManager;

.field private final syncCallback:Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

.field private final syncService:Lcom/nuance/connect/api/SyncService;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/api/SyncService;Lcom/nuance/connect/api/AccountService;)V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMSyncService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncCallback:Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->accountService:Lcom/nuance/connect/api/AccountService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncCallback:Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/SyncService;->registerCallback(Lcom/nuance/connect/api/SyncService$DLMSyncCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACDLMSyncService;)Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACDLMSyncService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    return-object v0
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

    const-string/jumbo v2, "An account must be linked to use DLM sync services"

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

    const-string/jumbo v1, "Backup and Sync disabled"

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

    const-string/jumbo v1, "Backup and Sync enabled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    return-void
.end method

.method final getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "DLM_SYNC_SERVICE"

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
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
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

    const-string/jumbo v1, "Backup requested for core "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7b

    const-string/jumbo v2, "Supplied core does not support backup and sync"

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

    const-string/jumbo v1, "Clean and restore for core "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7b

    const-string/jumbo v2, "Supplied core does not support backup and sync"

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

    const-string/jumbo v1, "Restore requested for core "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7b

    const-string/jumbo v2, "Supplied core does not support backup and sync"

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

    const-string/jumbo v1, "Sync interval set to "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hours."

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

    const-string/jumbo v1, "Sync requested"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->checkAccount()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->syncService:Lcom/nuance/connect/api/SyncService;

    invoke-interface {v0}, Lcom/nuance/connect/api/SyncService;->syncNow()V

    return-void
.end method

.method public final unregisterCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
