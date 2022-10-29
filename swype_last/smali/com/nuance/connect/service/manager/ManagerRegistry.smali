.class public Lcom/nuance/connect/service/manager/ManagerRegistry;
.super Ljava/lang/Object;


# instance fields
.field private allManagersStarted:Z

.field private bPostStartComplete:Z

.field private client:Lcom/nuance/connect/service/ConnectClient;

.field private currentlyProcessing:Z

.field private final idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/Manager;",
            ">;"
        }
    .end annotation
.end field

.field private final messageHandlerMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;",
            ">;>;"
        }
    .end annotation
.end field

.field private oemIdChange:Z

.field private volatile processingMessage:Z

.field startOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/Manager;",
            ">;"
        }
    .end annotation
.end field

.field private validRegistry:Z

.field private valueListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

.field private versionFrom:Lcom/nuance/connect/util/VersionUtils$Version;

.field private versionTo:Lcom/nuance/connect/util/VersionUtils$Version;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    new-instance v0, Lcom/nuance/connect/service/manager/ManagerRegistry$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ManagerRegistry$1;-><init>(Lcom/nuance/connect/service/manager/ManagerRegistry;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->startOrderComparator:Ljava/util/Comparator;

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-class v1, Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->processingMessage:Z

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->allManagersStarted:Z

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->bPostStartComplete:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/nuance/connect/service/manager/ManagerRegistry$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ManagerRegistry$2;-><init>(Lcom/nuance/connect/service/manager/ManagerRegistry;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->valueListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/ManagerRegistry;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->checkIdle()V

    return-void
.end method

.method private add(Lcom/nuance/connect/service/manager/interfaces/Manager;)Z
    .registers 6

    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ManagerRegistry.add(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->isRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_22
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_33

    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->valueListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;)V

    :cond_31
    const/4 v0, 0x1

    return v0

    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method private addManager(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->isRegistered(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    sget-object v3, Lcom/nuance/connect/service/manager/ConfigurationManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    new-instance v2, Lcom/nuance/connect/service/manager/ConfigurationManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/service/manager/ConfigurationManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    :goto_19
    if-eqz v2, :cond_da

    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->add(Lcom/nuance/connect/service/manager/interfaces/Manager;)Z

    invoke-interface {v2}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependencies()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v3, v2

    :goto_25
    if-ge v1, v3, :cond_9

    aget-object v4, v2, v1

    invoke-direct {p0, v4}, Lcom/nuance/connect/service/manager/ManagerRegistry;->addManager(Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_2f
    sget-object v3, Lcom/nuance/connect/service/manager/DeviceManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    new-instance v2, Lcom/nuance/connect/service/manager/DeviceManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/service/manager/DeviceManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto :goto_19

    :cond_3f
    sget-object v3, Lcom/nuance/connect/service/manager/SessionManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    new-instance v2, Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/service/manager/SessionManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto :goto_19

    :cond_4f
    sget-object v3, Lcom/nuance/connect/service/manager/LanguageManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    new-instance v2, Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/service/manager/LanguageManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto :goto_19

    :cond_5f
    sget-object v3, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    new-instance v2, Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/service/manager/AccountManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto :goto_19

    :cond_6f
    sget-object v3, Lcom/nuance/connect/service/manager/DlmSyncManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    new-instance v2, Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/service/manager/DlmSyncManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto :goto_19

    :cond_7f
    sget-object v3, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    new-instance v2, Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/service/manager/CategoryManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto :goto_19

    :cond_8f
    const-string/jumbo v3, "report"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    new-instance v2, Lcom/nuance/connect/service/manager/ReportingManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/service/manager/ReportingManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto/16 :goto_19

    :cond_a1
    sget-object v3, Lcom/nuance/connect/service/manager/DocumentManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    new-instance v2, Lcom/nuance/connect/service/manager/DocumentManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/service/manager/DocumentManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto/16 :goto_19

    :cond_b2
    sget-object v3, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    new-instance v2, Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto/16 :goto_19

    :cond_c3
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unknown manager: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_da
    move v0, v1

    goto/16 :goto_9
.end method

.method private calculateSortOrder()V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "calculateSortOrder()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_27

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->walkDependencyTree(Lcom/nuance/connect/service/manager/interfaces/Manager;)V

    goto :goto_17

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_2d
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->startOrderComparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_7a

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "final order()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependentCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_48

    :catchall_7a
    move-exception v0

    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v0

    :cond_7d
    return-void
.end method

.method private checkIdle()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->allStarted()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->processingMessage:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->setValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    move v0, v1

    :goto_18
    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->setValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    :cond_25
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkIdle started="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->allStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    return-void

    :cond_50
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v3

    :try_start_53
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_86

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->setValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    move v0, v1

    goto :goto_18

    :catchall_86
    move-exception v0

    :try_start_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v0

    :cond_89
    move v0, v2

    goto :goto_18
.end method

.method private isRegistered(Ljava/lang/String;)Z
    .registers 5

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    monitor-exit v1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_21

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method private registerMessages(Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;[I)V
    .registers 8

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RegisterMessages() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-eqz p2, :cond_32

    array-length v1, p2

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v1, :cond_32

    aget v2, p2, v0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_32
    return-void
.end method

.method private walkDependencyTree(Lcom/nuance/connect/service/manager/interfaces/Manager;)V
    .registers 6

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->incrementDependentCount()V

    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependencies()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_1b

    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/ManagerRegistry;->walkDependencyTree(Lcom/nuance/connect/service/manager/interfaces/Manager;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addService("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/nuance/connect/internal/common/ManagerService;->managerForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->addManager(Ljava/lang/String;)Z

    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public allStarted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->allManagersStarted:Z

    return v0
.end method

.method public complete()Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ManagerRegistry.complete() Currently: ["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "] valid: ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    if-nez v0, :cond_33

    move v0, v2

    :goto_32
    return v0

    :cond_33
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ManagerRegistry.complete(): init happening"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_3e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_6a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4a
    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->init()V

    instance-of v1, v0, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    if-eqz v1, :cond_4a

    move-object v1, v0

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;->getMessageIDs()[I

    move-result-object v1

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->registerMessages(Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;[I)V

    goto :goto_4a

    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0

    :cond_6d
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->calculateSortOrder()V

    iput-boolean v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    move v0, v3

    goto :goto_32
.end method

.method public deregister()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->deregister()V

    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1b
    return-void
.end method

.method public destroy()V
    .registers 4

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_22

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->destroy()V

    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0

    :cond_25
    return-void
.end method

.method public dispatchReceivedMessage(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/comm/Response;)V
    .registers 9

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_56

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    instance-of v1, v0, Lcom/nuance/connect/service/manager/interfaces/CommandManager;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/CommandManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/CommandManager;->getRealTimeSubscriptions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_f

    const/4 v1, 0x0

    move v2, v1

    :goto_29
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_f

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0, p3}, Lcom/nuance/connect/service/manager/interfaces/CommandManager;->onResponse(Lcom/nuance/connect/comm/Response;)V

    :cond_52
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_29

    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0

    :cond_59
    return-void
.end method

.method public getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    return-object v0
.end method

.method public getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;
    .registers 6

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    monitor-exit v2

    :goto_22
    return-object v0

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_27
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_22

    :catchall_2a
    move-exception v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public getManagerReferenceByClass(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;
    .registers 5

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_29
    return-object v0

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public getMinimumPollInterval()I
    .registers 5

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_34

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_POLLING_INTERVAL_NO_FEATURES:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerPollInterval()I

    move-result v3

    if-ge v3, v1, :cond_37

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerPollInterval()I

    move-result v0

    :goto_32
    move v1, v0

    goto :goto_1c

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    :cond_37
    move v0, v1

    goto :goto_32

    :cond_39
    return v1
.end method

.method public getNextPendingManager()Lcom/nuance/connect/service/manager/interfaces/Manager;
    .registers 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v2

    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_2c

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v3, v4, :cond_2f

    move-object v0, v1

    goto :goto_6

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v3, v4, :cond_16

    goto :goto_6

    :cond_38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->allManagersStarted:Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->checkIdle()V

    move-object v0, v1

    goto :goto_6
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    const-string/jumbo v3, "handleMessage"

    invoke-virtual {v0, v3}, Lcom/nuance/connect/util/Logger$Trace;->enterMethod(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->processingMessage:Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->checkIdle()V

    :try_start_11
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    if-eqz v0, :cond_5a

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;->onHandleMessage(Landroid/os/Message;)Z
    :try_end_46
    .catchall {:try_start_11 .. :try_end_46} :catchall_6b

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    const-string/jumbo v3, "handleMessage"

    invoke-virtual {v0, v3}, Lcom/nuance/connect/util/Logger$Trace;->exitMethod(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->processingMessage:Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->checkIdle()V

    move v0, v1

    :goto_59
    return v0

    :cond_5a
    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    const-string/jumbo v1, "handleMessage"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Logger$Trace;->exitMethod(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->processingMessage:Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->checkIdle()V

    move v0, v2

    goto :goto_59

    :catchall_6b
    move-exception v0

    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v1

    const-string/jumbo v3, "handleMessage"

    invoke-virtual {v1, v3}, Lcom/nuance/connect/util/Logger$Trace;->exitMethod(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->processingMessage:Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->checkIdle()V

    throw v0
.end method

.method public isCurrentlyProcessing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    return v0
.end method

.method public isValid()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    return v0
.end method

.method public postStart()V
    .registers 4

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1f

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->postStart()V

    goto :goto_f

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->versionUpgrade()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->bPostStartComplete:Z

    return-void
.end method

.method public rebind()Z
    .registers 4

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_25

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->rebind()V

    goto :goto_15

    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0

    :cond_28
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public setup(Lcom/nuance/connect/service/ConnectClient;Z)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->allManagersStarted:Z

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->bPostStartComplete:Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v0
.end method

.method public versionUpdate(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;Z)V
    .registers 5

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->versionFrom:Lcom/nuance/connect/util/VersionUtils$Version;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->versionTo:Lcom/nuance/connect/util/VersionUtils$Version;

    iput-boolean p3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->oemIdChange:Z

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->bPostStartComplete:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->versionUpgrade()V

    :cond_d
    return-void
.end method

.method protected versionUpgrade()V
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->versionFrom:Lcom/nuance/connect/util/VersionUtils$Version;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->versionTo:Lcom/nuance/connect/util/VersionUtils$Version;

    if-eqz v0, :cond_35

    :cond_9
    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    monitor-enter v1

    :try_start_c
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_2e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/Manager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->versionFrom:Lcom/nuance/connect/util/VersionUtils$Version;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->versionTo:Lcom/nuance/connect/util/VersionUtils$Version;

    iget-boolean v4, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->oemIdChange:Z

    invoke-interface {v0, v2, v3, v4}, Lcom/nuance/connect/service/manager/interfaces/Manager;->onUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;Z)V

    goto :goto_18

    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    iput-object v5, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->versionFrom:Lcom/nuance/connect/util/VersionUtils$Version;

    iput-object v5, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->versionTo:Lcom/nuance/connect/util/VersionUtils$Version;

    :cond_35
    return-void
.end method
