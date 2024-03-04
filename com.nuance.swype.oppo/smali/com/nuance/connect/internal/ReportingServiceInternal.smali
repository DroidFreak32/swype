.class Lcom/nuance/connect/internal/ReportingServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;

# interfaces
.implements Lcom/nuance/connect/api/ReportingService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/ReportingServiceInternal$3;
    }
.end annotation


# static fields
.field private static final MAX_POINT_SIZE:I = 0x400

.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final REPORTING_AGGREGATE_COUNT:Ljava/lang/String; = "REPORTING_AGGREGATE_COUNT"

.field private static final REPORTING_INDIVIDUAL_COUNT:Ljava/lang/String; = "REPORTING_INDIVIDUAL_COUNT"

.field private static final REPORTING_MAXIMUM_SIZE:Ljava/lang/String; = "REPORTING_MAXIMUM_SIZE"

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final allowedPoints:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowedServerPoints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final allowedUserPoints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/api/ReportingService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private final database:Lcom/nuance/connect/sqlite/ReportingDataSource;

.field private final databaseCallback:Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;

.field private final handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private reportingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/api/ReportingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_ALLOWED_REPORTING_METRICS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_REPORTING_TRANSMISSION_SUCCESS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_REPORTING_TRANSMISSION_FAILURE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/ReportingServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 6

    const v2, 0xc350

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->callbacks:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedUserPoints:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedServerPoints:Ljava/util/Set;

    new-instance v0, Lcom/nuance/connect/internal/ReportingServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ReportingServiceInternal$1;-><init>(Lcom/nuance/connect/internal/ReportingServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->databaseCallback:Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;

    new-instance v0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ReportingServiceInternal$2;-><init>(Lcom/nuance/connect/internal/ReportingServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_AGGREGATE_COUNT"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_INDIVIDUAL_COUNT"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_MAXIMUM_SIZE"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v1, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/sqlite/ReportingDataSource;-><init>(Landroid/content/Context;IIJ)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->database:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->database:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->openSafe()Z

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->database:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->databaseCallback:Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->registerCallback(Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/ReportingServiceInternal;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ReportingServiceInternal;->notifyCallbacksOfLoggingSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/ReportingServiceInternal;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/connect/internal/ReportingServiceInternal;->notifyCallbacksOfLoggingFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/ReportingServiceInternal;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/internal/ReportingServiceInternal;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedServerPoints:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/ReportingServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->recalculateAllowedDataPoints()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/ReportingServiceInternal;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->getLoopableCallbackSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/ReportingServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private getLoopableCallbackSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/api/ReportingService$Callback;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->callbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->callbacks:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyCallbacksOfLoggingFailure(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->getLoopableCallbackSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ReportingService$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/api/ReportingService$Callback;->onLoggingFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyCallbacksOfLoggingSuccess(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->getLoopableCallbackSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ReportingService$Callback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ReportingService$Callback;->onLoggingSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recalculateAllowedDataPoints()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedUserPoints:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedUserPoints:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget-object v3, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedServerPoints:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedServerPoints:Ljava/util/Set;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->getLoopableCallbackSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ReportingService$Callback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ReportingService$Callback;->allowedPoints(Ljava/util/Set;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public allowedPoints()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clearData()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->database:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearAggregate(J)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->database:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearIndividual(J)V

    invoke-direct {p0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->getLoopableCallbackSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ReportingService$Callback;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/ReportingService$Callback;->onClear(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public disableReporting()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->reportingEnabled:Z

    return-void
.end method

.method public enableReporting()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->reportingEnabled:Z

    return-void
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->REPORTING:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getMaxIndividualEntries()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->database:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getMaxIndividualEntries()I

    move-result v0

    return v0
.end method

.method public getMaxSize()J
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->database:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->REPORTING:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->reportingEnabled:Z

    return v0
.end method

.method public isPointAllowed(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public log(Landroid/os/Bundle;)V
    .locals 11

    const/16 v3, 0x400

    const/4 v2, 0x6

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->reportingEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Logging is not enabled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "point not valid: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    const-string v1, "point invalid: null"

    invoke-direct {p0, v0, v1, p1}, Lcom/nuance/connect/internal/ReportingServiceInternal;->notifyCallbacksOfLoggingFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v0, "STAT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->isPointAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "point not allowed: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "point not allowed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/nuance/connect/internal/ReportingServiceInternal;->notifyCallbacksOfLoggingFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v0, "STAT_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "STAT_EXTRA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "point too large: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, p1}, Lcom/nuance/connect/internal/ReportingServiceInternal;->notifyCallbacksOfLoggingFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->database:Lcom/nuance/connect/sqlite/ReportingDataSource;

    const-string v0, "STAT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "STAT_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "STAT_POINT_VALUE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v0, "STAT_POINT_INTERVAL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v0, "STAT_TIMESTAMP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual/range {v1 .. v10}, Lcom/nuance/connect/sqlite/ReportingDataSource;->createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "STAT_EXTRA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "STAT_VALUE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "point too large: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, p1}, Lcom/nuance/connect/internal/ReportingServiceInternal;->notifyCallbacksOfLoggingFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->database:Lcom/nuance/connect/sqlite/ReportingDataSource;

    const-string v0, "STAT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "STAT_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "STAT_TIMESTAMP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/connect/sqlite/ReportingDataSource;->createIndividualPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public registerCallback(Lcom/nuance/connect/api/ReportingService$Callback;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "registerCallback called with null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->callbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerDataPoints(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedUserPoints:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedUserPoints:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedUserPoints:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->recalculateAllowedDataPoints()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendData()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "sendData"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_SEND_REPORTING_NOW:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public setMaxIndividualEntries(I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_INDIVIDUAL_COUNT"

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->database:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->setMaxIndividualEntries(I)V

    return-void
.end method

.method public setMaxSize(J)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_MAXIMUM_SIZE"

    invoke-interface {v0, v1, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->database:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->setMaxSize(J)V

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/connect/api/ReportingService$Callback;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "unregisterCallback called with null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->callbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterCallbacks()V
    .locals 2

    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->callbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal;->callbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
