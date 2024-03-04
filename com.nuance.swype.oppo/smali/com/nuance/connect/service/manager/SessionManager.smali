.class public Lcom/nuance/connect/service/manager/SessionManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/SessionManager$3;,
        Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;
    }
.end annotation


# static fields
.field public static final COMMAND_CREATE:Ljava/lang/String; = "create"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_INVALIDATE:Ljava/lang/String; = "invalidate"

.field public static final COMMAND_POLL:Ljava/lang/String; = "poll"

.field public static final COMMAND_VALIDATE:Ljava/lang/String; = "validate"

.field public static final COMMAND_VERSION:I = 0x2

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final MINIMUM_POLLING_INVERVAL:I = 0x1

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

.field private static final SESSION_ID_KEY:Ljava/lang/String; = "SESSION_ID"

.field private static final SESSION_LAST_POLL:Ljava/lang/String; = "SESSION_LAST_POLL"

.field private static final SESSION_TRANSID_KEY:Ljava/lang/String; = "SESSION_TRANSID"


# instance fields
.field private intListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastPollTime:J

.field private location:Ljava/lang/String;

.field private locationChanged:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private newLocation:Ljava/lang/String;

.field protected pollingInterval:I

.field private volatile sessionId:Ljava/lang/String;

.field private stringListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unlicensedPollingInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/SessionManager;->MANAGER_NAME:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_DEVICE_SESSION_PROCESSED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_CREATE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_POLL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_RESET_SESSION:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/SessionManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/nuance/connect/service/manager/SessionManager;->REALTIME_MESSAGES:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "d"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "b"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    new-instance v0, Lcom/nuance/connect/service/manager/SessionManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/SessionManager$1;-><init>(Lcom/nuance/connect/service/manager/SessionManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/service/manager/SessionManager$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/SessionManager$2;-><init>(Lcom/nuance/connect/service/manager/SessionManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->stringListener:Lcom/nuance/connect/internal/Property$ValueListener;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    iput v3, p0, Lcom/nuance/connect/service/manager/SessionManager;->version:I

    sget-object v0, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->commandFamily:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/SessionManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "create"

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "invalidate"

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "poll"

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x11
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->determineNextPoll()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->loadUnlicensedPollInterval()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/SessionManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getPollInterval()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/SessionManager;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->location:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nuance/connect/service/manager/SessionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager;->location:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->newLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/connect/service/manager/SessionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager;->newLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/nuance/connect/service/manager/SessionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/SessionManager;->locationChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/manager/SessionManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/SessionManager;->compareLocations(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private compareLocations(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/nuance/connect/location/ConnectLocationManager;->getLatLong(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {p2}, Lcom/nuance/connect/location/ConnectLocationManager;->getLatLong(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_0

    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-static {v1, v2, v0}, Lcom/nuance/connect/location/ConnectLocationManager;->compareLocations(Landroid/util/Pair;Landroid/util/Pair;F)Z

    move-result v0

    goto :goto_0
.end method

.method private createSession()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "create"

    sget-object v1, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/SessionManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method

.method private determineNextPoll()V
    .locals 6

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getPollInterval()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    new-instance v2, Lcom/nuance/connect/util/Alarm$Builder;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v4, Lcom/nuance/connect/service/manager/SessionManager;

    const-string v5, "poll"

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/connect/util/Alarm$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/nuance/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->cancel()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getPollInterval()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->set()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "determineNextPoll "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getPollInterval()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "polling manually; not scheduling next poll"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getPollInterval()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->isLicensed()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->unlicensedPollingInterval:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    goto :goto_0
.end method

.method private invalidateSession()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "3"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "invalidate"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2, v0}, Lcom/nuance/connect/service/manager/SessionManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "SESSION_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    const-string v1, "SESSION_TRANSID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->transactionId:Ljava/lang/String;

    const-string v1, "SESSION_LAST_POLL"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_LAST_SENT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->location:Ljava/lang/String;

    return-void
.end method

.method private loadUnlicensedPollInterval()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_SERVER_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->unlicensedPollingInterval:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->unlicensedPollingInterval:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->unlicensedPollingInterval:I

    goto :goto_0
.end method

.method private poll(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "poll("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getPollInterval()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;

    iget-boolean v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->locationChanged:Z

    invoke-direct {v0, p0, p2, v1}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;-><init>(Lcom/nuance/connect/service/manager/SessionManager;ZZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->locationChanged:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_REQUESTED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->determineNextPoll()V

    return-void
.end method

.method private processCreateSessionResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_CREATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/SessionManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager;->managerStartComplete()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v2}, Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private processInvalidateSessionResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->resetSession(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->invalidateSession()V

    goto :goto_0
.end method

.method private savePreferences()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "SESSION_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "SESSION_TRANSID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "SESSION_LAST_POLL"

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "poll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V

    :cond_0
    return-void
.end method

.method public deregister()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->transactionId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

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

    sget-object v0, Lcom/nuance/connect/service/manager/SessionManager;->REALTIME_MESSAGES:Ljava/util/List;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->loadPreferences()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLLING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_SERVER_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->stringListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/service/manager/SessionManager$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Message: Command Session Create from Device"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Message: Command Session Create"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->createSession()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Message: Command Session Poll"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ACKNOWLEDGEMENT"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Message: MESSAGE_RESET_SESSION"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->resetSession(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->transactionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "create"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/SessionManager;->processCreateSessionResponse(Lcom/nuance/connect/service/comm/Response;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "invalidate"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/SessionManager;->processInvalidateSessionResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0
.end method

.method public onUnlicensed()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->loadUnlicensedPollInterval()V

    return-void
.end method

.method public resetSession(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->transactionId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->createSession()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getPollInterval()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, v1}, Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager;->managerStartComplete()V

    goto :goto_0
.end method
