.class public Lcom/nuance/connect/service/manager/DeviceManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/DeviceManager$2;,
        Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;
    }
.end annotation


# static fields
.field public static final COMMAND_CONFIG:Ljava/lang/String; = "getConfig"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_GET_SWYPER_ID:Ljava/lang/String; = "getSwyperId"

.field public static final COMMAND_REGISTER:Ljava/lang/String; = "register"

.field public static final COMMAND_UPDATE:Ljava/lang/String; = "update"

.field public static final COMMAND_VALIDATE:Ljava/lang/String; = "validate"

.field public static final COMMAND_VERSION:I = 0x9

.field public static final DEVICE_PREFERENCE:Ljava/lang/String; = "DEVICE_ID"

.field private static final DEVICE_PROPERTIES_KEY_PREFIX:Ljava/lang/String; = "DEVICE_PROPERTIES_"

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field public static final REGISTRATION_COMMANDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWYPER_ID_PREFERENCE:Ljava/lang/String; = "SWYPER_ID"

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private volatile deviceId:Ljava/lang/String;

.field private final deviceProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isUpgrade:Z

.field private volatile pendingPropertyUpdate:Z

.field private volatile runningPropertyUpdate:Z

.field private volatile swyperId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->MANAGER_NAME:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "register"

    aput-object v1, v0, v2

    const-string/jumbo v1, "ack"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->REGISTRATION_COMMANDS:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_REQUEST_TIMERS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_CONFIG:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SEND_DEVICE_PROPERTIES:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/service/manager/DeviceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 8

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->runningPropertyUpdate:Z

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->pendingPropertyUpdate:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    const/16 v0, 0x9

    iput v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->version:I

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->commandFamily:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "register"

    new-array v2, v5, [I

    fill-array-data v2, :array_6e

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "validate"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_78

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "ack"

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_80

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "update"

    new-array v2, v5, [I

    fill-array-data v2, :array_8c

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "getSwyperId"

    new-array v2, v4, [I

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "getConfig"

    new-array v2, v4, [I

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    return-void

    nop

    :array_6e
    .array-data 4
        0x1
        0x4
        0xf
    .end array-data

    :array_78
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_80
    .array-data 4
        0x1
        0x0
        0x6
        0xf
    .end array-data

    :array_8c
    .array-data 4
        0x1
        0x4
        0x0
    .end array-data
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/DeviceManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/connect/service/manager/DeviceManager;->deviceRegistrationComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private deviceRegistrationComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Device registration complete! DeviceId["

    const-string/jumbo v3, "] swyperId["

    const-string/jumbo v5, "]"

    move-object v2, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_11
    iput-object p1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->savePreferences()V

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_5b

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->removeMessages(Lcom/nuance/connect/internal/common/InternalMessages;)V

    if-eqz p3, :cond_5e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5e

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processRegisterDeviceAckResponse() sessionId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/service/ConnectClient;->resetSession(Ljava/lang/String;)V

    :goto_42
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->requestConfiguration()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, p2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->managerStartComplete()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->updateDeviceRegistration(Z)Z

    return-void

    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    :cond_5e
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->resetSession(Ljava/lang/String;)V

    goto :goto_42
.end method

.method private isSame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-eqz p1, :cond_f

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_f
    move v0, v1

    goto :goto_6
.end method

.method private loadPreferences()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "DEVICE_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "SWYPER_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_35

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_25
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->retrieveSerializedProperties()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_38

    return-void

    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0

    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method private processRequestConfigurationResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 16

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "processRequestConfigurationResponse"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    if-eq v0, v4, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v6

    iget-object v7, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v0, "80"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_342

    const-string/jumbo v0, "80"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    :goto_2b
    if-eqz v5, :cond_222

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :cond_31
    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_222

    :try_start_37
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_3d} :catch_71
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_3d} :catch_d3

    :try_start_3d
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_40} :catch_73
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_40} :catch_71

    move-result v2

    :goto_41
    :try_start_41
    sget-object v9, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Configuration: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v9, "53"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_76

    const-string/jumbo v0, "DEFAULT_DELAY"

    invoke-virtual {v6, v0, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_31

    :catch_71
    move-exception v0

    goto :goto_31

    :catch_73
    move-exception v2

    move v2, v3

    goto :goto_41

    :cond_76
    const-string/jumbo v9, "138"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cd

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_31

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_8f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_9b} :catch_71
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_9b} :catch_d3

    :try_start_9b
    sget-object v2, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Configuration: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_bf
    .catch Lorg/json/JSONException; {:try_start_9b .. :try_end_bf} :catch_d6
    .catch Ljava/lang/NumberFormatException; {:try_start_9b .. :try_end_bf} :catch_71

    :goto_bf
    const/4 v2, -0x1

    :try_start_c0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_346

    :cond_c7
    :goto_c7
    packed-switch v2, :pswitch_data_364

    sget-object v2, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v11, "Server returned an unknown config "

    invoke-interface {v2, v11, v0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8f

    :catch_d3
    move-exception v0

    goto/16 :goto_31

    :catch_d6
    move-exception v2

    sget-object v2, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v11, "Configuration: "

    const-string/jumbo v12, " return a non-int value: "

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v11, v0, v12, v13}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_bf

    :sswitch_eb
    const-string/jumbo v11, "139"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c7

    move v2, v3

    goto :goto_c7

    :sswitch_f6
    const-string/jumbo v11, "140"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c7

    move v2, v4

    goto :goto_c7

    :sswitch_101
    const-string/jumbo v11, "141"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c7

    const/4 v2, 0x2

    goto :goto_c7

    :sswitch_10c
    const-string/jumbo v11, "142"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c7

    const/4 v2, 0x3

    goto :goto_c7

    :sswitch_117
    const-string/jumbo v11, "143"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c7

    const/4 v2, 0x4

    goto :goto_c7

    :sswitch_122
    const-string/jumbo v11, "144"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c7

    const/4 v2, 0x5

    goto :goto_c7

    :sswitch_12d
    const-string/jumbo v11, "145"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_133
    .catch Ljava/lang/NumberFormatException; {:try_start_c0 .. :try_end_133} :catch_71
    .catch Lorg/json/JSONException; {:try_start_c0 .. :try_end_133} :catch_d3

    move-result v11

    if-eqz v11, :cond_c7

    const/4 v2, 0x6

    goto :goto_c7

    :pswitch_138
    :try_start_138
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v11, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_SYNC:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V
    :try_end_147
    .catch Lorg/json/JSONException; {:try_start_138 .. :try_end_147} :catch_149
    .catch Ljava/lang/NumberFormatException; {:try_start_138 .. :try_end_147} :catch_71

    goto/16 :goto_8f

    :catch_149
    move-exception v0

    goto/16 :goto_8f

    :pswitch_14c
    :try_start_14c
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v11, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_CHINESE_DATABASE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V
    :try_end_15b
    .catch Lorg/json/JSONException; {:try_start_14c .. :try_end_15b} :catch_15d
    .catch Ljava/lang/NumberFormatException; {:try_start_14c .. :try_end_15b} :catch_71

    goto/16 :goto_8f

    :catch_15d
    move-exception v0

    goto/16 :goto_8f

    :pswitch_160
    :try_start_160
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v11, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_LIVING_LANGUAGE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V
    :try_end_16f
    .catch Lorg/json/JSONException; {:try_start_160 .. :try_end_16f} :catch_171
    .catch Ljava/lang/NumberFormatException; {:try_start_160 .. :try_end_16f} :catch_71

    goto/16 :goto_8f

    :catch_171
    move-exception v0

    goto/16 :goto_8f

    :pswitch_174
    :try_start_174
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v11, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_LANGUAGE_DOWNLOAD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V
    :try_end_183
    .catch Lorg/json/JSONException; {:try_start_174 .. :try_end_183} :catch_185
    .catch Ljava/lang/NumberFormatException; {:try_start_174 .. :try_end_183} :catch_71

    goto/16 :goto_8f

    :catch_185
    move-exception v0

    goto/16 :goto_8f

    :pswitch_188
    :try_start_188
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v11, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_CATALOG:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V
    :try_end_197
    .catch Lorg/json/JSONException; {:try_start_188 .. :try_end_197} :catch_199
    .catch Ljava/lang/NumberFormatException; {:try_start_188 .. :try_end_197} :catch_71

    goto/16 :goto_8f

    :catch_199
    move-exception v0

    goto/16 :goto_8f

    :pswitch_19c
    :try_start_19c
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v11, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_PLATFORM_UPDATE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V
    :try_end_1ab
    .catch Lorg/json/JSONException; {:try_start_19c .. :try_end_1ab} :catch_1ad
    .catch Ljava/lang/NumberFormatException; {:try_start_19c .. :try_end_1ab} :catch_71

    goto/16 :goto_8f

    :catch_1ad
    move-exception v0

    goto/16 :goto_8f

    :pswitch_1b0
    :try_start_1b0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v11, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MANUAL_REFRESH_THROTTLE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V
    :try_end_1bf
    .catch Lorg/json/JSONException; {:try_start_1b0 .. :try_end_1bf} :catch_1c1
    .catch Ljava/lang/NumberFormatException; {:try_start_1b0 .. :try_end_1bf} :catch_71

    goto/16 :goto_8f

    :catch_1c1
    move-exception v0

    goto/16 :goto_8f

    :cond_1c4
    :try_start_1c4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_RECALCULATE_POLLING:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    goto/16 :goto_31

    :cond_1cd
    const-string/jumbo v9, "67"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1de

    const-string/jumbo v0, "REPORTING_FREQUENCY"

    invoke-virtual {v6, v0, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto/16 :goto_31

    :cond_1de
    const-string/jumbo v9, "68"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ef

    const-string/jumbo v0, "AGGREGATE_FREQUENCY"

    invoke-virtual {v6, v0, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto/16 :goto_31

    :cond_1ef
    const-string/jumbo v9, "69"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_200

    const-string/jumbo v0, "UDB_UPLOAD_FREQUENCY"

    invoke-virtual {v6, v0, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto/16 :goto_31

    :cond_200
    const-string/jumbo v9, "84"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_211

    const-string/jumbo v0, "DLM_SYNC_FREQUENCY"

    invoke-virtual {v6, v0, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto/16 :goto_31

    :cond_211
    const-string/jumbo v9, "85"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, "DLM_ADD_WORD_FREQUENCY"

    invoke-virtual {v6, v0, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V
    :try_end_220
    .catch Ljava/lang/NumberFormatException; {:try_start_1c4 .. :try_end_220} :catch_71
    .catch Lorg/json/JSONException; {:try_start_1c4 .. :try_end_220} :catch_d3

    goto/16 :goto_31

    :cond_222
    const-string/jumbo v0, "81"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33f

    const-string/jumbo v0, "81"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    :goto_235
    if-eqz v2, :cond_30c

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_23b
    :goto_23b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a9

    :try_start_241
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v5, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "MQTT Configuration: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v5, "92"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_272

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "MQTT_KEEP_ALIVE"

    invoke-virtual {v6, v5, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_23b

    :catch_270
    move-exception v0

    goto :goto_23b

    :cond_272
    const-string/jumbo v5, "82"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23b

    const-string/jumbo v0, "82"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    const-string/jumbo v5, ","

    invoke-static {v0, v5}, Lcom/nuance/connect/util/StringUtils;->implode(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "MQTT_HOSTS: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v5, "MQTT_HOSTS"

    invoke-virtual {v6, v5, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a6
    .catch Ljava/lang/NumberFormatException; {:try_start_241 .. :try_end_2a6} :catch_270
    .catch Lorg/json/JSONException; {:try_start_241 .. :try_end_2a6} :catch_2a7

    goto :goto_23b

    :catch_2a7
    move-exception v0

    goto :goto_23b

    :cond_2a9
    const-string/jumbo v0, "MQTT_ENABLED"

    invoke-virtual {v6, v0, v4}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Z)V

    :goto_2af
    const-string/jumbo v0, "93"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33d

    const-string/jumbo v0, "93"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    :goto_2c2
    if-eqz v2, :cond_335

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c8
    :goto_2c8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_2ce
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Key Configuration: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " value: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v4, "95"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_313

    const-string/jumbo v0, "KEY_DEVICE"

    invoke-virtual {v6, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_309
    .catch Ljava/lang/NumberFormatException; {:try_start_2ce .. :try_end_309} :catch_30a
    .catch Lorg/json/JSONException; {:try_start_2ce .. :try_end_309} :catch_323

    goto :goto_2c8

    :catch_30a
    move-exception v0

    goto :goto_2c8

    :cond_30c
    const-string/jumbo v0, "MQTT_ENABLED"

    invoke-virtual {v6, v0, v3}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Z)V

    goto :goto_2af

    :cond_313
    :try_start_313
    const-string/jumbo v4, "96"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_325

    const-string/jumbo v0, "KEY_BUILD"

    invoke-virtual {v6, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c8

    :catch_323
    move-exception v0

    goto :goto_2c8

    :cond_325
    const-string/jumbo v4, "97"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c8

    const-string/jumbo v0, "KEY_ACCOUNT"

    invoke-virtual {v6, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_334
    .catch Ljava/lang/NumberFormatException; {:try_start_313 .. :try_end_334} :catch_30a
    .catch Lorg/json/JSONException; {:try_start_313 .. :try_end_334} :catch_323

    goto :goto_2c8

    :cond_335
    const-string/jumbo v0, "MQTT_ENABLED"

    invoke-virtual {v6, v0, v4}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Z)V

    goto/16 :goto_f

    :cond_33d
    move-object v2, v1

    goto :goto_2c2

    :cond_33f
    move-object v2, v1

    goto/16 :goto_235

    :cond_342
    move-object v5, v1

    goto/16 :goto_2b

    nop

    :sswitch_data_346
    .sparse-switch
        0xbe57 -> :sswitch_eb
        0xbe6d -> :sswitch_f6
        0xbe6e -> :sswitch_101
        0xbe6f -> :sswitch_10c
        0xbe70 -> :sswitch_117
        0xbe71 -> :sswitch_122
        0xbe72 -> :sswitch_12d
    .end sparse-switch

    :pswitch_data_364
    .packed-switch 0x0
        :pswitch_138
        :pswitch_14c
        :pswitch_160
        :pswitch_174
        :pswitch_188
        :pswitch_19c
        :pswitch_1b0
    .end packed-switch
.end method

.method private processRequestSwyperIdResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 5

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    monitor-enter p0

    :try_start_6
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "32"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->savePreferences()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    monitor-exit p0

    :cond_29
    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private processUpdateDeviceRegistrationResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 8

    const/4 v5, 0x0

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->preProcessResponse(Lcom/nuance/connect/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    packed-switch v0, :pswitch_data_b0

    :cond_13
    :goto_13
    :pswitch_13
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_15
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->runningPropertyUpdate:Z

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_ac

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->pendingPropertyUpdate:Z

    if-eqz v0, :cond_d

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->pendingPropertyUpdate:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->removeMessages(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto :goto_d

    :pswitch_2f
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "31"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz v0, :cond_66

    :try_start_41
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :catchall_63
    move-exception v0

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_41 .. :try_end_65} :catchall_63

    throw v0

    :cond_66
    :try_start_66
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_63

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->saveSerializedProperties(Ljava/util/HashMap;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->isUpgrade:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POSSIBLE_UPGRADE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->managerStartComplete()V

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->isUpgrade:Z

    goto :goto_13

    :pswitch_84
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "update"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->lastCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->lastCommandRetryCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_13

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto/16 :goto_13

    :pswitch_a7
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    goto/16 :goto_13

    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v0

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_84
        :pswitch_2f
        :pswitch_13
        :pswitch_13
        :pswitch_a7
    .end packed-switch
.end method

.method private processValidateDeviceRegistrationResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 4

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Device validation is currently unsupported."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized resetDevice()V
    .registers 4

    monitor-enter p0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_42

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->savePreferences()V

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3f

    const/4 v0, 0x2

    :try_start_d
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SWYPER_ID"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->removePreferences([Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->getActiveTransaction(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Lcom/nuance/connect/comm/Transaction;->cancel()V
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_42

    :cond_3d
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private retrieveSerializedProperties()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "DEVICE_PROPERTIES_"

    invoke-interface {v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_16
    return-object v0
.end method

.method private declared-synchronized savePreferences()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "SWYPER_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_13
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "DEVICE_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2e

    :goto_25
    monitor-exit p0

    return-void

    :cond_27
    :try_start_27
    const-string/jumbo v0, "SWYPER_ID"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->removePreference(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2e

    goto :goto_13

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_31
    :try_start_31
    const-string/jumbo v0, "DEVICE_ID"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->removePreference(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_2e

    goto :goto_25
.end method

.method private saveSerializedProperties(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "DEVICE_PROPERTIES_"

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method private updateDeviceRegistration(Z)Z
    .registers 15

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Lcom/nuance/connect/util/BuildProps;->compareDeviceProperties(Ljava/util/HashMap;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lcom/nuance/connect/util/BuildProps;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v11

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    if-eqz v10, :cond_1d

    array-length v0, v10

    if-nez v0, :cond_1e

    :cond_1d
    :goto_1d
    return v7

    :cond_1e
    move v6, v7

    move v2, v7

    :goto_20
    array-length v0, v10

    if-ge v6, v0, :cond_13e

    aget-object v1, v10, v6

    aget-object v0, v10, v6

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    if-eqz v3, :cond_190

    const-string/jumbo v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_190

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Updated property detected "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SDK_VERSION:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->isSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "SDK_VERSION has updated. new SDK_VERSION: "

    const-string/jumbo v4, " old SDK_VERSION: "

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v8

    :goto_8d
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v2, v1

    goto :goto_20

    :cond_92
    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CUSTOMER_STRING:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->isSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bf

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "CUSTOMER_STRING has updated. new CUSTOMER_STRING: "

    const-string/jumbo v4, " old CUSTOMER_STRING: "

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v8

    goto :goto_8d

    :cond_bf
    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->APPLICATION_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->isSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ec

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "APPLICATION_ID has updated. new APPLICATION_ID: "

    const-string/jumbo v4, " old APPLICATION_ID: "

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v8

    goto :goto_8d

    :cond_ec
    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_ALPHA:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_CHINESE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_JAPANESE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_KOREAN:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    :cond_11c
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->isSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_190

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, " has updated. new: "

    const-string/jumbo v4, " old: "

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v8

    goto/16 :goto_8d

    :cond_13e
    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18a

    if-nez p1, :cond_154

    invoke-interface {v9}, Lcom/nuance/connect/util/BuildProps;->getCriticalProperties()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_18a

    :cond_154
    monitor-enter p0

    :try_start_155
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->runningPropertyUpdate:Z

    if-eqz v0, :cond_162

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->pendingPropertyUpdate:Z

    monitor-exit p0

    goto/16 :goto_1d

    :catchall_15f
    move-exception v0

    monitor-exit p0
    :try_end_161
    .catchall {:try_start_155 .. :try_end_161} :catchall_15f

    throw v0

    :cond_162
    const/4 v0, 0x1

    :try_start_163
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->runningPropertyUpdate:Z

    monitor-exit p0
    :try_end_166
    .catchall {:try_start_163 .. :try_end_166} :catchall_15f

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "31"

    invoke-virtual {v1, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_18d

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    :goto_175
    const-string/jumbo v3, "update"

    invoke-virtual {p0, v3, v0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iput-boolean v7, v0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    iput-boolean v8, v0, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    iput-boolean v7, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    new-instance v1, Lcom/nuance/connect/service/manager/DeviceManager$1;

    invoke-direct {v1, p0, v0, v12}, Lcom/nuance/connect/service/manager/DeviceManager$1;-><init>(Lcom/nuance/connect/service/manager/DeviceManager;Lcom/nuance/connect/comm/Command;Ljava/util/HashMap;)V

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    :cond_18a
    move v7, v2

    goto/16 :goto_1d

    :cond_18d
    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    goto :goto_175

    :cond_190
    move v1, v2

    goto/16 :goto_8d
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public deregister()V
    .registers 3

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "deregister()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->deregister()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->resetDevice()V

    return-void
.end method

.method public destroy()V
    .registers 1

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getDependencies()[Lcom/nuance/connect/internal/common/ManagerService;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_e
    if-ge v0, v4, :cond_1c

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDeviceId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->loadPreferences()V

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DeviceManager.onHandleMessage("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v2, Lcom/nuance/connect/service/manager/DeviceManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_7a

    move v0, v1

    :cond_32
    :goto_32
    return v0

    :pswitch_33
    sget-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "onHandleMessage(MESSAGE_COMMAND_DEVICE_REGISTER)"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    goto :goto_32

    :pswitch_3f
    sget-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "onHandleMessage(MESSAGE_COMMAND_DEVICE_UPDATE)"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->updateDeviceRegistration(Z)Z

    goto :goto_32

    :pswitch_5c
    sget-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "onHandleMessage(MESSAGE_COMMAND_DEVICE_CONFIG)"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->requestConfiguration()V

    goto :goto_32

    :pswitch_68
    sget-object v2, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "onHandleMessage(MESSAGE_CLIENT_SEND_DEVICE_PROPERTIES)"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->updateDeviceRegistration(Z)Z

    goto :goto_32

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_3f
        :pswitch_5c
        :pswitch_68
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "update"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processUpdateDeviceRegistrationResponse(Lcom/nuance/connect/comm/Response;)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "validate"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processValidateDeviceRegistrationResponse(Lcom/nuance/connect/comm/Response;)V

    goto :goto_14

    :cond_2a
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "getConfig"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processRequestConfigurationResponse(Lcom/nuance/connect/comm/Response;)V

    goto :goto_14

    :cond_3f
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "getSwyperId"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processRequestSwyperIdResponse(Lcom/nuance/connect/comm/Response;)V

    goto :goto_14

    :cond_54
    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Server returned unknown command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/nuance/connect/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public onUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;Z)V
    .registers 7

    invoke-static {p1, p2}, Lcom/nuance/connect/util/VersionUtils;->isDataCleanupRequiredOnUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Upgrading from version "

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/util/StringUtils;->isValidUUID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Device id is invalid. Resetting device."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->invalidateDevice()V

    :cond_2d
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/util/StringUtils;->isValidSwyperId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3b
    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    const-string/jumbo v0, "SWYPER_ID"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_48

    :cond_44
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->requestConfiguration()V

    return-void

    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public postStart()V
    .registers 1

    return-void
.end method

.method public rebind()V
    .registers 4

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DeviceManager.rebind()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method public registerDevice()V
    .registers 4

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Attempting to register device before DeviceManager has started"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    :goto_14
    return-void

    :cond_15
    monitor-enter p0

    :try_start_16
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Attempting to register device when it is already registered.  If this is intentional, please de-register before registering."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_14

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/register"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->getActiveTransaction(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;

    move-result-object v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Attempting to register device when command is already being processed"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto :goto_14

    :cond_4d
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/util/BuildProps;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5a
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_71

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->saveSerializedProperties(Ljava/util/HashMap;)V

    new-instance v1, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;

    invoke-direct {v1, p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;-><init>(Lcom/nuance/connect/service/manager/DeviceManager;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    goto :goto_14

    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0
.end method

.method public requestConfiguration()V
    .registers 3

    const-string/jumbo v0, "getConfig"

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->sendCommand(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method

.method public requestSwyperId()V
    .registers 3

    const-string/jumbo v0, "getSwyperId"

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->sendCommand(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method

.method public start()V
    .registers 4

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "start()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->updateDeviceRegistration(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->isUpgrade:Z

    monitor-enter p0

    :try_start_1e
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->requestSwyperId()V

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_45

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->isUpgrade:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->managerStartComplete()V

    goto :goto_15

    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_25

    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_45

    throw v0
.end method
