.class public Lcom/nuance/connect/service/manager/SessionManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/SessionManager$2;,
        Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;,
        Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;,
        Lcom/nuance/connect/service/manager/SessionManager$PollMode;
    }
.end annotation


# static fields
.field public static final COMMAND_CREATE:Ljava/lang/String; = "create"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_INVALIDATE:Ljava/lang/String; = "invalidate"

.field public static final COMMAND_POLL:Ljava/lang/String; = "poll"

.field public static final COMMAND_VALIDATE:Ljava/lang/String; = "validate"

.field public static final COMMAND_VERSION:I = 0x2

.field public static final DEFAULT_POLLING_INTERVAL_NO_FEATURES:I

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final POLLING_INTERVAL_NOT_SET:I = -0x1

.field private static final SESSION_ID_KEY:Ljava/lang/String; = "SESSION_ID"

.field private static final SESSION_LAST_POLL:Ljava/lang/String; = "SESSION_LAST_POLL"


# instance fields
.field private volatile customerPollingInterval:I

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

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private volatile pollMode:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

.field private volatile pollingInterval:I

.field private volatile sessionId:Ljava/lang/String;

.field private unlicensedPollingInterval:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/SessionManager;->MANAGER_NAME:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5a

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/nuance/connect/service/manager/SessionManager;->DEFAULT_POLLING_INTERVAL_NO_FEATURES:I

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_CREATE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_POLL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_MANUAL_POLL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/SessionManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 6

    const/4 v3, 0x2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    sget v0, Lcom/nuance/connect/service/manager/SessionManager;->DEFAULT_POLLING_INTERVAL_NO_FEATURES:I

    iput v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->customerPollingInterval:I

    sget-object v0, Lcom/nuance/connect/service/manager/SessionManager$PollMode;->AUTOMATIC:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollMode:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    new-instance v0, Lcom/nuance/connect/service/manager/SessionManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/SessionManager$1;-><init>(Lcom/nuance/connect/service/manager/SessionManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

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

    const-string/jumbo v1, "create"

    new-array v2, v3, [I

    fill-array-data v2, :array_66

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "validate"

    new-array v2, v3, [I

    fill-array-data v2, :array_6e

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "invalidate"

    new-array v2, v3, [I

    fill-array-data v2, :array_76

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "poll"

    new-array v2, v3, [I

    fill-array-data v2, :array_7e

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    return-void

    :array_66
    .array-data 4
        0x1
        0x11
    .end array-data

    :array_6e
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_76
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_7e
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method static synthetic access$002(Lcom/nuance/connect/service/manager/SessionManager;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/SessionManager;)I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->customerPollingInterval:I

    return v0
.end method

.method static synthetic access$202(Lcom/nuance/connect/service/manager/SessionManager;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/service/manager/SessionManager;->customerPollingInterval:I

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/service/manager/SessionManager$PollMode;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollMode:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nuance/connect/service/manager/SessionManager;Lcom/nuance/connect/service/manager/SessionManager$PollMode;)Lcom/nuance/connect/service/manager/SessionManager$PollMode;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollMode:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/SessionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->determineNextPoll()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/SessionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->loadUnlicensedPollInterval()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/SessionManager;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V

    return-void
.end method

.method private determineNextPoll()V
    .registers 6

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getPollInterval()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_52

    :goto_13
    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v3, Lcom/nuance/connect/service/manager/SessionManager;

    const-string/jumbo v4, "poll"

    invoke-virtual {v2, v3, v4}, Lcom/nuance/connect/service/ConnectClient;->getAlarmBuilder(Ljava/lang/Class;Ljava/lang/String;)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/nuance/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->cancel()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollMode:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    sget-object v2, Lcom/nuance/connect/service/manager/SessionManager$PollMode;->AUTOMATIC:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    if-ne v1, v2, :cond_5c

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getPollInterval()I

    move-result v1

    if-lez v1, :cond_5c

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->set()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "determineNextPoll "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    :goto_51
    return-void

    :cond_52
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getPollInterval()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(J)J

    move-result-wide v0

    goto :goto_13

    :cond_5c
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "polling manually; not scheduling next poll"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto :goto_51
.end method

.method private getPollInterval()I
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->isLicensed()Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->unlicensedPollingInterval:I

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->customerPollingInterval:I

    iget v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    if-le v0, v1, :cond_14

    iget v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->customerPollingInterval:I

    goto :goto_a

    :cond_14
    iget v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    goto :goto_a
.end method

.method private invalidateSession()V
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "3"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "invalidate"

    sget-object v2, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2, v0}, Lcom/nuance/connect/service/manager/SessionManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iput-boolean v3, v0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    iput-boolean v3, v0, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->sendCommand(Lcom/nuance/connect/comm/Command;)V

    goto :goto_7
.end method

.method private declared-synchronized loadPreferences()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "SESSION_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    const-string/jumbo v1, "SESSION_LAST_POLL"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadUnlicensedPollInterval()V
    .registers 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_SERVER_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v2, :cond_23

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_24

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->unlicensedPollingInterval:I

    :cond_23
    :goto_23
    return-void

    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_31

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->unlicensedPollingInterval:I

    goto :goto_23

    :cond_31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_23

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->unlicensedPollingInterval:I

    goto :goto_23
.end method

.method private poll(ZZ)V
    .registers 9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "poll("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "last poll: "

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-static {v2, v3}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "next poll: "

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getPollInterval()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getPollInterval()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_84

    if-eqz p2, :cond_82

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MANUAL_REFRESH_THROTTLE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_84

    :cond_82
    if-eqz p1, :cond_b3

    :cond_84
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_FORCE_GEO_IP_LOOKUP:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;

    invoke-direct {v0, p0, p2}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;-><init>(Lcom/nuance/connect/service/manager/SessionManager;Z)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_REQUESTED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_af
    :goto_af
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->determineNextPoll()V

    return-void

    :cond_b3
    if-eqz p2, :cond_af

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "DEFAULT_DELAY"

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getPollInterval()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    goto :goto_af
.end method

.method private processInvalidateSessionResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 4

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->resetSession(Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->invalidateSession()V

    goto :goto_9
.end method

.method private declared-synchronized savePreferences()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "SESSION_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "SESSION_LAST_POLL"

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x0

    const-string/jumbo v0, "poll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, v1, v1}, Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V

    :cond_d
    return-void
.end method

.method public createSession()V
    .registers 3

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "session already exists, ignoring createSession()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    :goto_e
    return-void

    :cond_f
    const-string/jumbo v0, "session/create"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "session/create transaction already being processed"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto :goto_e

    :cond_21
    new-instance v0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;-><init>(Lcom/nuance/connect/service/manager/SessionManager;Lcom/nuance/connect/service/manager/SessionManager$1;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    goto :goto_e
.end method

.method public deregister()V
    .registers 2

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->deregister()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
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

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

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

.method public declared-synchronized getSessionId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;
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
    .registers 4

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->loadPreferences()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLLING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CUSTOMER_POLLING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_SERVER_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/service/manager/SessionManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5a

    move v0, v1

    :goto_14
    return v0

    :pswitch_15
    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "MESSAGE_COMMAND_SESSION_CREATE"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager;->createSession()V

    goto :goto_14

    :pswitch_21
    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "MESSAGE_COMMAND_SESSION_POLL"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "ACKNOWLEDGEMENT"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V

    goto :goto_14

    :pswitch_43
    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "MESSAGE_CLIENT_MANUAL_POLL"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "ACKNOWLEDGEMENT"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V

    goto :goto_14

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_21
        :pswitch_43
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "invalidate"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/SessionManager;->processInvalidateSessionResponse(Lcom/nuance/connect/comm/Response;)V

    :cond_e
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    return-void
.end method

.method public onUnlicensed()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->loadUnlicensedPollInterval()V

    return-void
.end method

.method public onUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;Z)V
    .registers 6

    invoke-static {p1, p2}, Lcom/nuance/connect/util/VersionUtils;->isDataCleanupRequiredOnUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/util/StringUtils;->isValidUUID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    monitor-exit p0

    :goto_16
    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V

    goto :goto_16
.end method

.method public declared-synchronized resetSession(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "set sessionId to: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager;->createSession()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollMode:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    sget-object v1, Lcom/nuance/connect/service/manager/SessionManager$PollMode;->AUTOMATIC:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    if-ne v0, v1, :cond_18

    invoke-direct {p0, v2, v2}, Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V

    :cond_18
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager;->managerStartComplete()V

    goto :goto_e
.end method
