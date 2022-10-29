.class public Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;
.implements Lcom/nuance/connect/service/manager/interfaces/SubManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$5;,
        Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;
    }
.end annotation


# static fields
.field private static final CATALOG_ENABLED_PREF:Ljava/lang/String;

.field private static final CATALOG_WEIGHT_LIST_PREF:Ljava/lang/String;

.field private static final LOCALE_FOR_CATALOG:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[I

.field private static final catalogDeviceProperties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final typesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final categoriesManaged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

.field private final client:Lcom/nuance/connect/service/ConnectClient;

.field private enabled:Z

.field private final integerListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;

.field private lastGeoIPCountry:Ljava/lang/String;

.field private lastGeoIPTimeEpoc:J

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

.field private minWaitBetweenCatalogListRefresh:I

.field private final oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private final parent:Lcom/nuance/connect/service/manager/CategoryManager;

.field private sendConfigRequest:Z

.field private final stringListener:Lcom/nuance/connect/internal/Property$StringValueListener;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->typesSupported:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATALOG_PURCHASED_SKUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aput v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CATALOG_LIST_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->MESSAGES_HANDLED:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "CatalogWeightList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->CATALOG_WEIGHT_LIST_PREF:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "CatalogEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->CATALOG_ENABLED_PREF:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "LocaleForCatalog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->LOCALE_FOR_CATALOG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "CUSTOMER_PAYMENT_PROCESSOR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "CUSTOMER_THEME_ENGINE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->catalogDeviceProperties:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->lastGeoIPTimeEpoc:J

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    const v0, 0x36ee80

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->minWaitBetweenCatalogListRefresh:I

    new-instance v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;-><init>(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->stringListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    new-instance v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$2;-><init>(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->integerListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v0, p1, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->typesSupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allCategoryIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_50

    :cond_72
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_GEO_IP_COUNTRY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->stringListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {p2, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVICE_PROPERTIES_UPDATED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->stringListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {p2, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CATALOG_LIST_REFRESH_MINIMUM_WAIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->integerListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    invoke-virtual {p2, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-virtual {p2}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->CATALOG_ENABLED_PREF:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    if-eqz v0, :cond_9a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->sendConfigRequest:Z

    :cond_9a
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Lcom/nuance/connect/service/ConnectClient;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->lastGeoIPCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->lastGeoIPCountry:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)J
    .registers 3

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->lastGeoIPTimeEpoc:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;J)J
    .registers 4

    iput-wide p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->lastGeoIPTimeEpoc:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->minWaitBetweenCatalogListRefresh:I

    return v0
.end method

.method static synthetic access$302(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->minWaitBetweenCatalogListRefresh:I

    return p1
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->postRefreshMessage(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->catalogDeviceProperties:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Lcom/nuance/connect/service/manager/CategoryManager;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    return-object v0
.end method

.method private catalogCatDbReset()V
    .registers 9

    const/4 v7, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "catalogCatDbReset() enabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    if-nez v0, :cond_21

    :cond_20
    return-void

    :cond_21
    new-array v0, v5, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4c
    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v3, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getStep(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    if-gt v3, v5, :cond_4c

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v4, v0, v6}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    if-ge v3, v5, :cond_4c

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v4, "FILE_LOCATION"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_4c
.end method

.method private declared-synchronized postRefreshMessage(J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CATALOG_LIST_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CATALOG_LIST_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_22
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CATALOG_LIST_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, p1, p2}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_39

    :goto_2f
    monitor-exit p0

    return-void

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CATALOG_LIST_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_39

    goto :goto_2f

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public categoriesManagedCount()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public createSubscribeTransaction(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "130"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$4;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$4;-><init>(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    return-object v1
.end method

.method public getManagerPollInterval()I
    .registers 3

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_CATALOG:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_POLLING_INTERVAL_NO_FEATURES:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c
.end method

.method public getMessageIDs()[I
    .registers 2

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->MESSAGES_HANDLED:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CATALOG:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypesSupported()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->typesSupported:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "init()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    return-void
.end method

.method install(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_50

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "FILE_LOCATION"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v2, "130"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "  Catalog Item - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "filePath"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sku"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATALOG_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    :goto_4f
    return v0

    :cond_50
    const/4 v0, 0x0

    goto :goto_4f
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    return v0
.end method

.method public isSupported(I)Z
    .registers 4

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->typesSupported:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public languageUpdated([ILjava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public localeUpdated(Ljava/util/Locale;)V
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->LOCALE_FOR_CATALOG:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    if-eqz v2, :cond_39

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Catalog Pending Fetch of Items with new locale of:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    const/4 v2, 0x6

    invoke-virtual {v0, v4, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;I)V

    :cond_39
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->LOCALE_FOR_CATALOG:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3
.end method

.method public onDataUpdated()V
    .registers 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onDataUpdated()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->typesSupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allCategoryIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    :cond_37
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_4e
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v6, "130"

    invoke-virtual {v1, v0, v6}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_74

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :catch_72
    move-exception v0

    goto :goto_42

    :cond_74
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_7d} :catch_72

    goto :goto_42

    :cond_7e
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_84
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v4, "131"

    invoke-virtual {v1, v0, v4}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_db

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_db

    move v1, v2

    :goto_a2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_fc

    const-string/jumbo v1, "PROP_TYPE"

    sget-object v4, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->BUNDLE:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    invoke-virtual {v4}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_dd

    array-length v1, v10

    if-lez v1, :cond_dd

    array-length v11, v10

    move v4, v3

    :goto_c8
    if-ge v4, v11, :cond_dd

    aget-object v1, v10, v4

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_d7

    invoke-virtual {v9, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_d7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_c8

    :cond_db
    move v1, v3

    goto :goto_a2

    :cond_dd
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_f0

    const-string/jumbo v1, "PROP_BUNDLED_THEMES_CDB"

    const-string/jumbo v4, ","

    invoke-static {v9, v4}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f0
    const-string/jumbo v1, "PROP_BUNDLED_THEMES_SKUS"

    invoke-interface {v8, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f6
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v1, v0, v8}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProps(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_84

    :cond_fc
    const-string/jumbo v1, "PROP_TYPE"

    sget-object v4, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->KEYBOARD:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    invoke-virtual {v4}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f6

    :cond_109
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v1, :cond_12c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->catalogCatDbReset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->sendCatalogItemsChanged(Ljava/util/List;)V

    :cond_12c
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .registers 9

    const/4 v6, 0x1

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$5;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c8

    const/4 v0, 0x0

    :goto_13
    return v0

    :pswitch_14
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "MESSAGE_CLIENT_CATALOG_PURCHASED_SKUS "

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2c

    const-string/jumbo v2, ""

    :cond_2c
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CATALOG_SKU_LIST:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "new=["

    const-string/jumbo v3, "], old=["

    const-string/jumbo v5, "]"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    const-string/jumbo v0, ","

    invoke-static {v2, v0}, Lcom/nuance/connect/util/StringUtils;->stringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v0, ","

    invoke-static {v4, v0}, Lcom/nuance/connect/util/StringUtils;->stringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "New purchased skus: "

    invoke-interface {v0, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v5, "130"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_89
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Unknown skus: "

    const-string/jumbo v4, "; fetching list..."

    invoke-interface {v0, v3, v1, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->postRefreshMessage(J)V

    :cond_9f
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CATALOG_SKU_LIST:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    move v0, v6

    goto/16 :goto_13

    :pswitch_b2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "MESSAGE_COMMAND_CATALOG_LIST_REFRESH"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;I)V

    :cond_c5
    move v0, v6

    goto/16 :goto_13

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_14
        :pswitch_b2
    .end packed-switch
.end method

.method public onUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)V
    .registers 8

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/nuance/connect/util/VersionUtils;->isDataCleanupRequiredOnUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->CATALOG_WEIGHT_LIST_PREF:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    :try_start_1c
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->CATALOG_WEIGHT_LIST_PREF:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_30} :catch_34

    :cond_30
    :goto_30
    invoke-virtual {p0, v4}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->sendCatalogItemsChanged(Ljava/util/List;)V

    return-void

    :catch_34
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v4, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;I)V

    goto :goto_30
.end method

.method public parseJsonListResponse(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "parseJsonListResponse() -- TYPE_CATALOG"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-- "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_27
    const-string/jumbo v0, "16"

    const-string/jumbo v3, "16"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "98"

    const-string/jumbo v3, "98"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "17"

    const-string/jumbo v3, "17"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "18"

    const-string/jumbo v3, "18"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "132"

    const-string/jumbo v3, "132"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "127"

    const-string/jumbo v3, "127"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "129"

    const-string/jumbo v3, "129"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "113"

    const-string/jumbo v3, "113"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "26"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string/jumbo v0, "26"

    const-string/jumbo v3, "26"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a5
    const-string/jumbo v0, "27"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    const-string/jumbo v0, "27"

    const-string/jumbo v3, "27"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bb
    const-string/jumbo v0, "135"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    const-string/jumbo v0, "135"

    const-string/jumbo v3, "135"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d1
    const-string/jumbo v0, "130"

    const-string/jumbo v3, "130"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "131"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    const-string/jumbo v0, "131"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1ac

    const-string/jumbo v0, "131"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_fd
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_113

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_fd

    :cond_113
    const-string/jumbo v0, "131"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PROP_TYPE"

    sget-object v3, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->BUNDLE:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_129
    const-string/jumbo v0, "133"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getLabel(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "133"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v3, Lorg/json/JSONObject;

    const-string/jumbo v0, "133"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getLabel(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_17c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ba

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_18f} :catch_190

    goto :goto_17c

    :catch_190
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error in processing catalog item with error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1ab
    return-object v0

    :cond_1ac
    :try_start_1ac
    const-string/jumbo v0, "PROP_TYPE"

    sget-object v3, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->KEYBOARD:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_129

    :cond_1ba
    const-string/jumbo v0, "133"

    invoke-static {v4}, Lcom/nuance/connect/util/MapMarshal;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c4
    const-string/jumbo v0, "128"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_203

    const-string/jumbo v0, "128"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_203

    const-string/jumbo v0, "128"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_1e3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1f9

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e3

    :cond_1f9
    const-string/jumbo v0, "128"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_203
    const-string/jumbo v0, "136"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_242

    const-string/jumbo v0, "136"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_242

    const-string/jumbo v0, "136"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_222
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_238

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_222

    :cond_238
    const-string/jumbo v0, "136"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_242
    const-string/jumbo v0, "137"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_281

    const-string/jumbo v0, "137"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_281

    const-string/jumbo v0, "137"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_261
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_277

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_261

    :cond_277
    const-string/jumbo v0, "137"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_281
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_281} :catch_190

    :cond_281
    move-object v0, v1

    goto/16 :goto_1ab
.end method

.method declared-synchronized processNextCategory(I)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method sendCatalogItemsChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendCatalogItemsChanged() enabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "catalogList"

    const-string/jumbo v2, ","

    invoke-static {p1, v2}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "catalogCategoryList"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->CATALOG_WEIGHT_LIST_PREF:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    return-void
.end method

.method sendIfCatalogDictionary(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->sendCatalogItemsChanged(Ljava/util/List;)V

    :cond_15
    return-void
.end method

.method public setEnabled(Z)V
    .registers 7

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    if-ne p1, v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->CATALOG_ENABLED_PREF:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Updated "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " status to "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->catalogCatDbReset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->sendCatalogItemsChanged(Ljava/util/List;)V

    goto :goto_4
.end method

.method public setLabelList(Lorg/json/JSONArray;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "setLabelList: "

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_c
    invoke-static {p1}, Lcom/nuance/connect/util/MapMarshal;->toStringMapFromJSON(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/MapMarshal;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->CATALOG_WEIGHT_LIST_PREF:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error parsing label list from server, unable to provide categories for catalogs with list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1f
.end method

.method public start()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getLastGeoIP()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->lastGeoIPCountry:Ljava/lang/String;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->lastGeoIPTimeEpoc:J

    :cond_18
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->sendConfigRequest:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CATALOG_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_23
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->catalogCatDbReset()V

    :cond_3c
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "unsubscribe("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->typesSupported:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$3;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$3;-><init>(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method
