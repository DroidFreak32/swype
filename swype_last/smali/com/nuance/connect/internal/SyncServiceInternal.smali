.class public Lcom/nuance/connect/internal/SyncServiceInternal;
.super Lcom/nuance/connect/internal/AbstractService;

# interfaces
.implements Lcom/nuance/connect/api/SyncService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/SyncServiceInternal$3;
    }
.end annotation


# static fields
.field private static final DISABLE_SYNC_SPAM_PROTECTION:J

.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final SPAM_PROTECTION:J


# instance fields
.field private allowNextUserSync:J

.field private final backdownCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile backupAndSyncEnabled:Z

.field private final callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/connect/api/SyncService$DLMSyncCallback;",
            ">;"
        }
    .end annotation
.end field

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private final delaySendDLMSyncStatusRunnable:Ljava/lang/Runnable;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final mHandler:Landroid/os/Handler;

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/nuance/connect/internal/SyncServiceInternal;->SPAM_PROTECTION:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/nuance/connect/internal/SyncServiceInternal;->DISABLE_SYNC_SPAM_PROTECTION:J

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_DLM_RECEIVED_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_BACKUP_REQUEST:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_BACKUP_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_RESTORE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_DLM_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_PUSH_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/SyncServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 4

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstractService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backupAndSyncEnabled:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->allowNextUserSync:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backdownCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v0, Lcom/nuance/connect/internal/SyncServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/SyncServiceInternal$1;-><init>(Lcom/nuance/connect/internal/SyncServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->delaySendDLMSyncStatusRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/internal/SyncServiceInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/SyncServiceInternal$2;-><init>(Lcom/nuance/connect/internal/SyncServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDlmSyncEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backupAndSyncEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backupAndSyncEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/SyncServiceInternal;->sendDLMSyncStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/SyncServiceInternal;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backdownCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/SyncServiceInternal;)[Lcom/nuance/connect/api/SyncService$DLMSyncCallback;
    .registers 2

    invoke-direct {p0}, Lcom/nuance/connect/internal/SyncServiceInternal;->getCallbacks()[Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$600()[Lcom/nuance/connect/internal/common/InternalMessages;
    .registers 1

    sget-object v0, Lcom/nuance/connect/internal/SyncServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private getCallbacks()[Lcom/nuance/connect/api/SyncService$DLMSyncCallback;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    return-object v0
.end method

.method private sendDLMSyncStatus()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_DLM_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-boolean v2, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backupAndSyncEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public backupRequest(I)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "backupRequest core="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DLM_BACKUP_REQUIRED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanRestore(I)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cleanRestore cat="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->recordDLMDeleteCategory(I)Z

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/SyncServiceInternal;->restoreRequest(I)V

    return-void
.end method

.method public dlmSyncEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backupAndSyncEnabled:Z

    return v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerCallback(Lcom/nuance/connect/api/SyncService$DLMSyncCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public restoreRequest(I)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "restoreRequest core="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_RESTORE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method

.method public setDLMSyncStatus(Z)V
    .registers 7

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "setDLMSyncStatus("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, ") old value: "

    iget-boolean v4, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backupAndSyncEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backupAndSyncEnabled:Z

    if-ne p1, v0, :cond_1a

    :goto_19
    return-void

    :cond_1a
    iput-boolean p1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backupAndSyncEnabled:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backupAndSyncEnabled:Z

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/UserSettings;->setDlmSyncEnabled(Z)V

    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backdownCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_35

    invoke-direct {p0}, Lcom/nuance/connect/internal/SyncServiceInternal;->sendDLMSyncStatus()V

    goto :goto_19

    :cond_35
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->backdownCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->delaySendDLMSyncStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->delaySendDLMSyncStatusRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/nuance/connect/internal/SyncServiceInternal;->DISABLE_SYNC_SPAM_PROTECTION:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19
.end method

.method public setSyncInterval(I)V
    .registers 5

    if-gez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "hours must be a positive integer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const v0, 0x91a2b

    if-le p1, v0, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "hours cannot exceed 596523"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_DLM_SYNC_FREQUECY:Lcom/nuance/connect/internal/common/InternalMessages;

    mul-int/lit16 v2, p1, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method

.method public syncNow()V
    .registers 9

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "syncNow"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->allowNextUserSync:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2f

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Sending sync request"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_SYNC_NOW:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/nuance/connect/internal/SyncServiceInternal;->SPAM_PROTECTION:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->allowNextUserSync:J

    :cond_2e
    return-void

    :cond_2f
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLM sync request ignored, last one was recent."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/internal/SyncServiceInternal;->getCallbacks()[Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_3d
    if-ge v0, v2, :cond_2e

    aget-object v3, v1, v0

    const/16 v4, 0x12d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Sync request ignored due to recent sync request. Next request allowed after "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->allowNextUserSync:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/api/SyncService$DLMSyncCallback;->onError(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method

.method public unregisterCallback(Lcom/nuance/connect/api/SyncService$DLMSyncCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
