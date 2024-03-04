.class public Lcom/nuance/connect/service/manager/DeviceManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/DeviceManager$2;
    }
.end annotation


# static fields
.field public static final COMMAND_CONFIG:Ljava/lang/String; = "getConfig"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_GET_SWYPER_ID:Ljava/lang/String; = "getSwyperId"

.field public static final COMMAND_REGISTER:Ljava/lang/String; = "register"

.field public static final COMMAND_UPDATE:Ljava/lang/String; = "update"

.field public static final COMMAND_VALIDATE:Ljava/lang/String; = "validate"

.field public static final COMMAND_VERSION:I = 0x7

.field public static final DEVICE_PREFERENCE:Ljava/lang/String; = "DEVICE_ID"

.field private static final DEVICE_PROPERTIES_KEY_PREFIX:Ljava/lang/String; = "DEVICE_PROPERTIES_"

.field public static final DEVICE_TEMP_PREFERENCE:Ljava/lang/String; = "DEVICE_ACK_ID"

.field public static final DEVICE_TRANSACTION_PREFERENCE:Ljava/lang/String; = "DEVICE_TRANSID"

.field public static final DEVICE_TRIAL_PREFERENCE:Ljava/lang/String; = "DEVICE_LENGTH"

.field public static final KEY_ACCOUNT_PREFERENCE:Ljava/lang/String; = "KEY_ACCOUNT"

.field public static final KEY_BUILD_PREFERENCE:Ljava/lang/String; = "KEY_BUILD"

.field public static final KEY_DEVICE_PREFERENCE:Ljava/lang/String; = "KEY_DEVICE"

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field public static final MQTT_ENABLED_PREFERENCE:Ljava/lang/String; = "MQTT_ENABLED"

.field public static final MQTT_HOSTS_PREFERENCE:Ljava/lang/String; = "MQTT_HOSTS"

.field public static final MQTT_KEEPALIVE_PREFERENCE:Ljava/lang/String; = "MQTT_KEEPALIVE"

.field private static final REALTIME_MESSAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

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

.field public static final SWYPER_TEMP_PREFERENCE:Ljava/lang/String; = "TEMP_SWYPER_ID"

.field public static final TIMER_AGGREGATE_FREQUENCY_PREFERENCE:Ljava/lang/String; = "AGGREGATE_FREQUENCY"

.field public static final TIMER_DEFAULT_DELAY_PREFERENCE:Ljava/lang/String; = "DEFAULT_DELAY"

.field public static final TIMER_DEFAULT_DLM_ADD_FREQUENCY_PREFERENCE:Ljava/lang/String; = "DEFAULT_DLM_ADD_FREQUENCY"

.field public static final TIMER_POLLING_FREQUENCY_PREFERENCE:Ljava/lang/String; = "POLLING_FREQUENCY"

.field public static final TIMER_STATISTICS_FREQUENCY_PREFERENCE:Ljava/lang/String; = "STATISTICS_FREQUENCY"

.field public static final TIMER_UDB_UPLOAD_FREQUENCY_PREFERENCE:Ljava/lang/String; = "UDB_UPLOAD_FREQUENCY"


# instance fields
.field private volatile deviceId:Ljava/lang/String;

.field private deviceProperties:Ljava/util/HashMap;
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

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private volatile preAckDeviceId:Ljava/lang/String;

.field private volatile preAckSwyperId:Ljava/lang/String;

.field private volatile swyperId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->MANAGER_NAME:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "register"

    aput-object v1, v0, v2

    const-string v1, "ack"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->REGISTRATION_COMMANDS:Ljava/util/List;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_VALIDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_REQUEST_TIMERS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_GET_SWYPER:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_CONFIG:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->REALTIME_MESSAGES:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "d"

    const-string v3, "2"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x7

    iput v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->version:I

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->commandFamily:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "register"

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "update"

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getSwyperId"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getConfig"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x6
        0xf
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x4
        0x0
    .end array-data
.end method

.method private isSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_TRANSID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_ACK_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "SWYPER_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "TEMP_SWYPER_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->retrieveSerializedProperties()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    return-void
.end method

.method private processDeviceValidateRequest(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    return-void
.end method

.method private processRegisterDeviceAckResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DEVICE_ACK_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TEMP_SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DEVICE_TRANSID"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->removePreferences([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processRegisterDeviceAckResponse() sessionId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->resetSession(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processRegisterDeviceAckResponse() swyperId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->savePreferences()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->requestConfiguration()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->managerStartComplete()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0, v4}, Lcom/nuance/connect/service/ConnectClient;->resetSession(Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private processRegisterDeviceResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->savePreferences()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDeviceAck()V

    goto :goto_0

    :sswitch_1
    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DEVICE_ACK_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const-string v1, "TEMP_SWYPER_ID"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "DEVICE_TRANSID"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->removePreferences([Ljava/lang/String;)V

    iget v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->lastCommandRetryCount:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method private processRequestConfigurationResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "processRequestConfigurationResponse"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-eq v0, v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v3

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v0, "80"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "80"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Configuration: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string v7, "53"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v0, "DEFAULT_DELAY"

    invoke-virtual {v3, v0, v6}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    const-string v7, "34"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v0, "POLLING_FREQUENCY"

    invoke-virtual {v3, v0, v6}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    const-string v7, "67"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v0, "REPORTING_FREQUENCY"

    invoke-virtual {v3, v0, v6}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    const-string v7, "68"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v0, "AGGREGATE_FREQUENCY"

    invoke-virtual {v3, v0, v6}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    const-string v7, "69"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v0, "UDB_UPLOAD_FREQUENCY"

    invoke-virtual {v3, v0, v6}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    const-string v7, "84"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v0, "DLM_SYNC_FREQUENCY"

    invoke-virtual {v3, v0, v6}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_8
    const-string v7, "85"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DLM_ADD_WORD_FREQUENCY"

    invoke-virtual {v3, v0, v6}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    :cond_9
    const-string v0, "81"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "81"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MQTT Configuration: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string v6, "92"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v6, "MQTT_KEEP_ALIVE"

    invoke-virtual {v3, v6, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_b
    const-string v6, "82"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "82"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    const-string v6, ","

    invoke-static {v0, v6}, Lcom/nuance/connect/util/StringUtils;->implode(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MQTT_HOSTS: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string v6, "MQTT_HOSTS"

    invoke-virtual {v3, v6, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_c
    const-string v0, "MQTT_ENABLED"

    invoke-virtual {v3, v0, v10}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Z)V

    :goto_5
    const-string v0, "93"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "93"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    :goto_6
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Key Configuration: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string v5, "95"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v0, "KEY_DEVICE"

    invoke-virtual {v3, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_e
    const-string v0, "MQTT_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_f
    :try_start_3
    const-string v5, "96"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v0, "KEY_BUILD"

    invoke-virtual {v3, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_7

    :cond_10
    const-string v5, "97"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "KEY_ACCOUNT"

    invoke-virtual {v3, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_7

    :cond_11
    const-string v0, "MQTT_ENABLED"

    invoke-virtual {v3, v0, v10}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_12
    move-object v2, v1

    goto :goto_6

    :cond_13
    move-object v2, v1

    goto/16 :goto_3

    :cond_14
    move-object v2, v1

    goto/16 :goto_1
.end method

.method private processRequestSwyperIdResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_GET_SWYPER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "32"

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

    goto :goto_0
.end method

.method private processUpdateDeviceRegistrationResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "update"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->lastCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->lastCommandRetryCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->saveSerializedProperties(Ljava/util/HashMap;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->isUpgrade:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POSSIBLE_UPGRADE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->managerStartComplete()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->isUpgrade:Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private processValidateDeviceRegistrationResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_VALIDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->lastCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->lastCommandRetryCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_VALIDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    :cond_1
    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0, v4}, Lcom/nuance/connect/service/ConnectClient;->resetSession(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private retrieveSerializedProperties()Ljava/util/HashMap;
    .locals 2
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

    const-string v1, "DEVICE_PROPERTIES_"

    invoke-interface {v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-object v0
.end method

.method private savePreferences()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_ACK_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_TRANSID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "TEMP_SWYPER_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "SWYPER_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void

    :cond_1
    const-string v0, "DEVICE_ACK_ID"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "DEVICE_TRANSID"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "TEMP_SWYPER_ID"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "SWYPER_ID"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private saveSerializedProperties(Ljava/util/HashMap;)V
    .locals 2
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

    const-string v1, "DEVICE_PROPERTIES_"

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public deregister()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "deregister()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->savePreferences()V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getDependencies()[Lcom/nuance/connect/internal/common/ManagerService;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRealTimeSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->REALTIME_MESSAGES:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->loadPreferences()V

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeviceManager.onHandleMessage("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    sget-object v2, Lcom/nuance/connect/service/manager/DeviceManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDeviceAck()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->updateDeviceRegistration()Z

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/nuance/connect/service/comm/Response;

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/connect/service/comm/Response;

    iget-object v2, v0, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->processDeviceValidateRequest(Lcom/nuance/connect/service/comm/Response;)V

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->requestSwyperId()V

    move v0, v1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->requestConfiguration()V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "register"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processRegisterDeviceResponse(Lcom/nuance/connect/service/comm/Response;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processRegisterDeviceAckResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "update"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processUpdateDeviceRegistrationResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processValidateDeviceRegistrationResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getConfig"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processRequestConfigurationResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getSwyperId"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processRequestSwyperIdResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server returned unknown command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public postStart()V
    .locals 0

    return-void
.end method

.method public rebind()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DeviceManager.rebind()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public registerDevice()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/util/BuildProps;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->saveSerializedProperties(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/BuildProps;->hasRequiredDeviceProperties(Ljava/util/HashMap;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing Required Device Properties required to register: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-static {v0, v3}, Lcom/nuance/connect/util/StringUtils;->implode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->calcDefaultMilliDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nuance/connect/util/UUIDFactory;->generateUUID(J)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "5"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "30"

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "31"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "register"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v2, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->needDevice:Z

    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method public registerDeviceAck()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "5"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ack"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->needDevice:Z

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEVICE_ACK_ID"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TEMP_SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DEVICE_TRANSID"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->removePreferences([Ljava/lang/String;)V

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    goto :goto_0
.end method

.method public requestConfiguration()V
    .locals 2

    const-string v0, "getConfig"

    sget-object v1, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method

.method public requestSwyperId()V
    .locals 2

    const-string v0, "getSwyperId"

    sget-object v1, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method

.method public resetDevice()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DEVICE_ACK_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TEMP_SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DEVICE_TRANSID"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->removePreferences([Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->getActiveTransaction(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/service/comm/Transaction;->cancel()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "start()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDeviceAck()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DeviceManager- deviceId state mismatch"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->updateDeviceRegistration()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->isUpgrade:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->requestSwyperId()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->isUpgrade:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->managerStartComplete()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public updateDeviceRegistration()Z
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/BuildProps;->compareDeviceProperties(Ljava/util/HashMap;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/util/BuildProps;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v10

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    if-eqz v9, :cond_0

    array-length v0, v9

    if-nez v0, :cond_2

    :cond_0
    move v2, v7

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v6, v7

    move v2, v7

    :goto_1
    array-length v0, v9

    if-ge v6, v0, :cond_7

    aget-object v1, v9, v6

    aget-object v0, v9, v6

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v11, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updated property detected "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

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

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->isSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "SDK_VERSION has updated. new SDK_VERSION: "

    const-string v4, " old SDK_VERSION: "

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v8

    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v2, v1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CUSTOMER_STRING:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->isSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "CUSTOMER_STRING has updated. new CUSTOMER_STRING: "

    const-string v4, " old CUSTOMER_STRING: "

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v8

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->APPLICATION_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->isSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "APPLICATION_ID has updated. new APPLICATION_ID: "

    const-string v4, " old APPLICATION_ID: "

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v8

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_ALPHA:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_CHINESE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_JAPANESE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_KOREAN:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->isSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, " has updated. new: "

    const-string v4, " old: "

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v8

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "5"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "31"

    invoke-virtual {v1, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_8

    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    :goto_3
    const-string v3, "update"

    invoke-virtual {p0, v3, v0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-boolean v7, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    iput-boolean v8, v0, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    iput-boolean v7, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    new-instance v1, Lcom/nuance/connect/service/manager/DeviceManager$1;

    invoke-direct {v1, p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager$1;-><init>(Lcom/nuance/connect/service/manager/DeviceManager;Lcom/nuance/connect/service/comm/Command;)V

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    goto :goto_3

    :cond_9
    move v1, v2

    goto/16 :goto_2
.end method

.method public validateDeviceData()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "31"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "validate"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method
