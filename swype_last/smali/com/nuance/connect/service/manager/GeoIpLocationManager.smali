.class public Lcom/nuance/connect/service/manager/GeoIpLocationManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/GeoIpLocationManager$5;
    }
.end annotation


# static fields
.field public static final ALARM_TYPE_NEXT_LOOKUP:Ljava/lang/String; = "NEXT_LOOKUP"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field private static final COMMAND_GEO_IP:Ljava/lang/String; = "geoIP"

.field public static final COMMAND_VERSION:I = 0x1

.field private static final DEFAULT_LOOKUP_INTERVAL:I = 0x93a80

.field private static final HEADER_CLIENT_CUSTOMER:Ljava/lang/String; = "X_ClientCustomer"

.field private static final HEADER_CLIENT_TYPE:Ljava/lang/String; = "X_ClientType"

.field private static final HEADER_CLIENT_VERSION:Ljava/lang/String; = "X_ClientVersion"

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final MIN_LOOKUP_INTERVAL:I = 0xe10

.field public static final PREF_LAST_GEO_LOCATION_TIMESTAMP:Ljava/lang/String;


# instance fields
.field private final booleanValueListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

.field private enabled:Z

.field private final integerValueListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;

.field private lastCountry:Ljava/lang/String;

.field private lastTimestamp:J

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private lookupInterval:I

.field private lookupOnStart:Z

.field private serverUrl:Ljava/lang/String;

.field private final stringValueListener:Lcom/nuance/connect/internal/Property$StringValueListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->LOCATION_BASED_SERVICE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->MANAGER_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_PREF_LAST_GEO_LOCATION_TIMESTAMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->PREF_LAST_GEO_LOCATION_TIMESTAMP:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_FORCE_GEO_IP_LOOKUP:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    new-instance v0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager$1;-><init>(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->booleanValueListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    new-instance v0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager$2;-><init>(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->integerValueListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    new-instance v0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager$3;-><init>(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->stringValueListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->version:I

    sget-object v0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->commandFamily:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "geoIP"

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/connect/service/manager/GeoIpLocationManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->enabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lookupInterval:I

    return v0
.end method

.method static synthetic access$202(Lcom/nuance/connect/service/manager/GeoIpLocationManager;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lookupInterval:I

    return p1
.end method

.method static synthetic access$302(Lcom/nuance/connect/service/manager/GeoIpLocationManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->serverUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/service/manager/GeoIpLocationManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastCountry:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastTimestamp:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/nuance/connect/service/manager/GeoIpLocationManager;J)J
    .registers 4

    iput-wide p1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastTimestamp:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/GeoIpLocationManager;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->setNextLookupAlarm(J)V

    return-void
.end method

.method private loadPreferences()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->PREF_LAST_GEO_LOCATION_TIMESTAMP:Ljava/lang/String;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastTimestamp:J

    return-void
.end method

.method private requestGeoLocation(Z)V
    .registers 12

    const-wide/high16 v8, -0x8000000000000000L

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "requestGeoLocation("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Manager has not started, ignoring geolocation request."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->enabled:Z

    if-eqz v0, :cond_ce

    if-nez p1, :cond_4b

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastCountry:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastTimestamp:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastTimestamp:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lookupInterval:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_ce

    :cond_4b
    const-string/jumbo v0, "geoIP"

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->serverUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/nuance/connect/comm/Command;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    iput-boolean v6, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    iput-boolean v6, v0, Lcom/nuance/connect/comm/Command;->hasBody:Z

    const-string/jumbo v1, "GET"

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->method:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->extraHeaders:Ljava/util/Map;

    iget-object v1, v0, Lcom/nuance/connect/comm/Command;->extraHeaders:Ljava/util/Map;

    const-string/jumbo v2, "X_ClientType"

    const-string/jumbo v3, "SC-SDK"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/nuance/connect/comm/Command;->extraHeaders:Ljava/util/Map;

    const-string/jumbo v2, "X_ClientCustomer"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v3, v4}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/nuance/connect/comm/Command;->extraHeaders:Ljava/util/Map;

    const-string/jumbo v2, "X_ClientVersion"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->SDK_VERSION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v3, v4}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v6, v0, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    iput-boolean v6, v0, Lcom/nuance/connect/comm/Command;->needDevice:Z

    iput-boolean v6, v0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "url: "

    iget-object v3, v0, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;

    invoke-direct {v1, p0, v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;-><init>(Lcom/nuance/connect/service/manager/GeoIpLocationManager;Lcom/nuance/connect/comm/Command;)V

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    goto/16 :goto_26

    :cond_ce
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->enabled:Z

    if-eqz v0, :cond_26

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastTimestamp:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastTimestamp:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lookupInterval:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastTimestamp:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->setNextLookupAlarm(J)V

    goto/16 :goto_26
.end method

.method private setNextLookupAlarm(J)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "NEXT_LOOKUP"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->getAlarmBuilder(Ljava/lang/Class;Ljava/lang/String;)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Alarm$Builder;->millis(I)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->cancel()V

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->set()V

    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "NEXT_LOOKUP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->requestGeoLocation(Z)V

    :cond_d
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->LOCATION_BASED_SERVICE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getDependencies()[Lcom/nuance/connect/internal/common/ManagerService;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_1b

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLatestGeoIPCountry()Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastCountry:Ljava/lang/String;

    if-eqz v0, :cond_12

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastCountry:Ljava/lang/String;

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public init()V
    .registers 4

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->loadPreferences()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->booleanValueListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_LOOKUP_INTERVAL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->integerValueListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_SERVER_URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->stringValueListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_GEO_IP_COUNTRY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->stringValueListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/service/manager/GeoIpLocationManager$5;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_30

    move v0, v1

    :goto_14
    return v0

    :pswitch_15
    iget-object v1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "MESSAGE_COMMAND_FORCE_GEO_IP_LOOKUP"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lookupOnStart:Z

    goto :goto_14

    :cond_2c
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->requestGeoLocation(Z)V

    goto :goto_14

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method

.method public onUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;Z)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "LOCATION_COUNTRY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_GEO_IP_COUNTRY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "LOCATION_TIME_EPOC"

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATALOG_LOCATION_CHANGED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    return-void
.end method

.method public start()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lookupOnStart:Z

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->requestGeoLocation(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lookupOnStart:Z

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->managerStartComplete()V

    return-void
.end method
