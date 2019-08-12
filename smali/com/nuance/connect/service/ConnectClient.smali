.class public Lcom/nuance/connect/service/ConnectClient;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/ConnectClient$9;,
        Lcom/nuance/connect/service/ConnectClient$MessageHandler;,
        Lcom/nuance/connect/service/ConnectClient$ResponseListener;
    }
.end annotation


# static fields
.field public static final ALARM_CLASS:Ljava/lang/String; = "ALARM_CLASS"

.field public static final ALARM_TYPE:Ljava/lang/String; = "ALARM_TYPE"

.field public static final CONNECTION_TYPE:Ljava/lang/String; = "CONNECTION_TYPE"

.field public static final DEFAULT_MESSAGE_DELAY:I = 0x5dc

.field protected static final DELAY_NOTIFY_TASKS_COMPLETE:I = 0xbb8

.field public static final MAJOR_VERSION:Ljava/lang/String; = "6"

.field private static final MINIMUM_DELAY:I = 0x2710

.field private static final SERVICE_SPINUP_TIME:I = 0x1388


# instance fields
.field private accountListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/AccountListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private activeLocale:Ljava/util/Locale;

.field protected alarmUniqueId:I

.field private bindCount:I

.field private boolListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected buildProperties:Lcom/nuance/connect/util/BuildProps;

.field private clientStartComplete:Z

.field private commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

.field private connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

.field private connectivity:Lcom/nuance/connect/system/Connectivity;

.field private datamgr:Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

.field private defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

.field private idleStatus:Lcom/nuance/connect/internal/Property$BooleanValueListener;

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

.field private isLicensed:Z

.field private languageCoreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private languageListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/LanguageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected lastIdleSnoozeAt:J

.field private lastMessageProcessed:J

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private mHostMessenger:Landroid/os/Messenger;

.field protected final messenger:Landroid/os/Messenger;

.field protected msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

.field nextCheckin:Ljava/lang/Long;

.field private oemIdListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;

.field protected registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

.field private sendStopMessage:Ljava/lang/Runnable;

.field private taskToProcess:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final triggerTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->taskToProcess:Ljava/util/HashSet;

    iput-wide v2, p0, Lcom/nuance/connect/service/ConnectClient;->lastMessageProcessed:J

    iput-wide v2, p0, Lcom/nuance/connect/service/ConnectClient;->lastIdleSnoozeAt:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/ConnectClient;->isLicensed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->nextCheckin:Ljava/lang/Long;

    const v0, 0x42f48590

    iput v0, p0, Lcom/nuance/connect/service/ConnectClient;->alarmUniqueId:I

    new-instance v0, Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$MessageHandler;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->messenger:Landroid/os/Messenger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->accountListeners:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->languageListeners:Ljava/util/HashSet;

    new-instance v0, Lcom/nuance/connect/service/ConnectClient$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$1;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->oemIdListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/service/ConnectClient$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$2;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/service/ConnectClient$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$3;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/service/ConnectClient$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$4;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->idleStatus:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    new-instance v0, Lcom/nuance/connect/service/ConnectClient$5;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$5;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->sendStopMessage:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/service/ConnectClient$8;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$8;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->datamgr:Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/service/configuration/ConnectConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/ConnectClient;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/ConnectClient;->reconfigureLogger(ZI)V

    return-void
.end method

.method static synthetic access$202(Lcom/nuance/connect/service/ConnectClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/service/ConnectClient;->isLicensed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/ConnectClient;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->sendStopMessage:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/ConnectClient;)J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/service/ConnectClient;->lastMessageProcessed:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/service/comm/CommandQueue;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/ConnectClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/store/PersistentDataStore;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    return-object v0
.end method

.method private calculateNextCheckin()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "calculateNextCheckin()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/ConnectClient;->isLicensed:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_SERVER_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LAST_CHECKIN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->getLong(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LAST_CHECKIN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Long;)V

    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "calculateNextCheckin() lastCheckin: "

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v1, :cond_3

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->nextCheckin:Ljava/lang/Long;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->nextCheckin:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "nextCheckin: "

    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient;->nextCheckin:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    if-lez v1, :cond_4

    int-to-long v2, v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->nextCheckin:Ljava/lang/Long;

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    if-ne v1, v0, :cond_5

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->nextCheckin:Ljava/lang/Long;

    goto :goto_0

    :cond_5
    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->nextCheckin:Ljava/lang/Long;

    goto :goto_0
.end method

.method private getMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Landroid/os/Message;
    .locals 8

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v6

    :goto_0
    invoke-virtual {v7, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object v7

    :cond_0
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const-string v0, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object p2, v6

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v0, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object p2, v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "sendMessageToHost("

    const-string v3, ", "

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v5, ") Error attaching Object, unsupported type."

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v6

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private reconfigureLogger(ZI)V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/nuance/connect/util/Logger;->configure(ZILcom/nuance/connect/util/Logger$OutputMode;Ljava/io/File;)V

    return-void
.end method

.method private sendMessageToHost(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    goto :goto_0
.end method


# virtual methods
.method public addAlarm(J)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Alarm trigger in: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addLanguageListener(Lcom/nuance/connect/service/manager/interfaces/LanguageListener;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->languageListeners:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method public addListener(Lcom/nuance/connect/service/manager/interfaces/AccountListener;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->accountListeners:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getBuildProps()Lcom/nuance/connect/util/BuildProps;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->buildProperties:Lcom/nuance/connect/util/BuildProps;

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->ANONYMOUS_BUILD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nuance/connect/util/PrivateBuildProperties;

    invoke-direct {v0, p0}, Lcom/nuance/connect/util/PrivateBuildProperties;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->buildProperties:Lcom/nuance/connect/util/BuildProps;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->buildProperties:Lcom/nuance/connect/util/BuildProps;

    return-object v0

    :cond_1
    new-instance v0, Lcom/nuance/connect/util/BuildProperties;

    invoke-direct {v0, p0}, Lcom/nuance/connect/util/BuildProperties;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->buildProperties:Lcom/nuance/connect/util/BuildProps;

    goto :goto_0
.end method

.method public getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    return-object v0
.end method

.method public getConnectVersion()Ljava/lang/String;
    .locals 4

    const-string v0, "0"

    invoke-static {}, Lcom/nuance/connect/internal/common/InternalMessages;->values()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "6."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectivity()Lcom/nuance/connect/system/Connectivity;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectivity:Lcom/nuance/connect/system/Connectivity;

    return-object v0
.end method

.method public getCoreForLanguage(I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->languageCoreMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->languageCoreMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->languageCoreMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->activeLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->activeLocale:Ljava/util/Locale;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->datamgr:Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    return-object v0
.end method

.method public getDataStore()Lcom/nuance/connect/store/PersistentDataStore;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    return-object v0
.end method

.method public getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Long;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getLong(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getNextLicenseCheckin()Ljava/lang/Long;
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->isLicensed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->nextCheckin:Ljava/lang/Long;

    :goto_0
    return-object v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v1, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/SessionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleCommand(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "handleCommand() alarm class: "

    const-string v3, "ALARM_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "ALARM_CLASS"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALARM_TYPE"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    const-class v1, Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3, v2}, Lcom/nuance/connect/service/ConnectClient;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v1, Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v0, v3, v2}, Lcom/nuance/connect/system/Connectivity;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReferenceByClass(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v4, v1, Lcom/nuance/connect/service/manager/interfaces/CommandManager;

    if-eqz v4, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/CommandManager;

    invoke-interface {v0, v3, v2}, Lcom/nuance/connect/service/manager/interfaces/CommandManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Alarm handled by: "

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Unable to find reference for alarm. "

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/ConnectClient;->lastMessageProcessed:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/nuance/connect/service/ConnectClient$9;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Message is invalid ("

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "MESSAGE_CLIENT_REGISTER_CLIENT"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Registering with service"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget v0, p0, Lcom/nuance/connect/service/ConnectClient;->bindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/service/ConnectClient;->bindCount:I

    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    invoke-virtual {p2}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "SERVICES_LIST"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    :goto_1
    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BROADCAST_RESPONSE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    const-string v3, "ENABLE_BROADCAST_RESPONSE"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVELOPER_LOG_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    const-string v3, "DEVELOPER_LOG_ENABLED"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    const-string v1, "DEFAULT_DELAY"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    sget-object v3, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    :cond_2
    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->COLLECT_USER_PROPERTIES:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    const-string v3, "COLLECT_USER_PROPERTIES"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    :goto_2
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->isLicensed()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LICENSED_BUILD:Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->registerServices(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_INVALID_HANDLERS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConnectVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_HANDLERS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConnectVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/nuance/connect/service/ConnectClient;->bindCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->rebind()Z

    :cond_6
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->startNextManager()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "There are no managers registered!!!"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p2, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "MESSAGE_CLIENT_UNREGISTER_CLIENT"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "MESSAGE_CLIENT_START_IMMEDIDATELY"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->startNextManager()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "MESSAGE_HOST_DEREGISTER"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->deregister()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->startNextManager()V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    const/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "MESSAGE_CLIENT_PROCESS_RESPONSE_DELAYED"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subject"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "body"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/connect/service/comm/Response;

    invoke-virtual {p0, v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->processReceivedServerMessage(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "MESSAGE_CLIENT_UPDATE_CONFIGURATION"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Configuring Connect"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->updateFromString(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "MESSAGE_RETRY_CONNECTION"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Retrying Connection"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->retryConnection()V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public idleSnooze()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze(J)V

    return-void
.end method

.method public idleSnooze(J)V
    .locals 5

    const-wide/16 v2, 0x2710

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    add-long/2addr v0, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/nuance/connect/service/ConnectClient;->lastIdleSnoozeAt:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/nuance/connect/service/ConnectClient;->lastIdleSnoozeAt:J

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/ConnectClient;->sendStopMessage:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/ConnectClient;->sendStopMessage:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public invalidAccount()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->accountListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/AccountListener;->onInvalidated()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isAccountLinked()Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/AccountManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/AccountManager;->isAccountLinked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLicensed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/ConnectClient;->isLicensed:Z

    return v0
.end method

.method public isMQTTEnabled()Z
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MQTT_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public linkedAccount()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->accountListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/AccountListener;->onLinked()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public managerStartComplete(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "managerStartComplete("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/manager/SessionManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->startNextManager()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onBind()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "com.nuance.swype.connect.store.FilePreference"

    invoke-static {p0, v0}, Lcom/nuance/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVELOPER_LOG_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOGGING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->reconfigureLogger(ZI)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->oemIdListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOGGING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVELOPER_LOG_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LICENSED_BUILD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/ConnectClient;->calculateNextCheckin()V

    new-instance v0, Lcom/nuance/connect/system/Connectivity;

    invoke-direct {v0, p0}, Lcom/nuance/connect/system/Connectivity;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectivity:Lcom/nuance/connect/system/Connectivity;

    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    new-instance v0, Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-direct {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->idleStatus:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->start()V

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onDestroy thread="

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->stop()V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->destroy()V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->stop()V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->destroy()V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v0}, Lcom/nuance/connect/system/Connectivity;->destroy()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onLowMemory() called"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onRebind i="

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/ConnectClient;->handleCommand(Landroid/content/Intent;)V

    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->stopSelf()V

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "onUnbind() return="

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public onUnlicensed(I)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onUnlicensed("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LICENSED_BUILD:Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LICENSED_BUILD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_SERVER_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LAST_CHECKIN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Long;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/ConnectClient;->calculateNextCheckin()V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v1, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/SessionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/SessionManager;->onUnlicensed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LICENSED_BUILD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_SERVER_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LAST_CHECKIN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Long;)V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LICENSED_BUILD:Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public performTask(Ljava/lang/String;Z)V
    .locals 3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    const-string v0, "ACKNOWLEDGEMENT"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "MESSAGE_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_RETRIEVE_MESSAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "UPDATE_LICENSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DEFAULT_KEY"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_LICENSE_REQUEST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "SEND_REPORTING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_SEND_REPORTING_NOW:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "TIMERS_UPDATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_REQUEST_TIMERS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v0, "DLM_BACKUP_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "DLM_EVENT_CORE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DLM_BACKUP_REQUIRED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DLM_BACKUP_"

    const-string v2, " Could not parse task: "

    invoke-interface {v0, v1, v2, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string v0, "DLM_SYNC_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "DLM_EVENT_CORE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PULL_DLM_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DLM_SYNC_"

    const-string v2, " Could not parse task: "

    invoke-interface {v0, v1, v2, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string v0, "GET_CONFIG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_CONFIG:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "CDB_LIST_UPDATE_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    const/16 v2, 0x10

    :try_start_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    :goto_1
    if-lez v0, :cond_9

    const-string v2, "CATEGORY_TYPE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_LIST_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "CDB_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "TASK_UPDATE_DOCS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_UPDATE_DOCS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "LANGUAGE_LIST_UPDATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_LANGAUGE_LIST_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public performTasks(Lorg/json/JSONArray;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CDB_AVAILABLE"

    aput-object v3, v2, v0

    const-string v3, "CDB_LIST_UPDATE_"

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v4, "LANGUAGE_LIST_UPDATED"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->performTask(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/nuance/connect/service/ConnectClient;->taskToProcess:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->performTask(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->taskToProcess:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public postMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Landroid/os/Message;)V

    return-void
.end method

.method public postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/ConnectClient;->getMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Landroid/os/Message;)V

    return-void
.end method

.method public postMessageDelayed(Landroid/os/Message;J)V
    .locals 2

    invoke-virtual {p0, p2, p3}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze(J)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/ConnectClient;->getMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public processMQTTCommand(Lcom/nuance/connect/service/comm/Command;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public processReceivedServerMessage(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/connect/service/manager/ManagerRegistry;->dispatchReceivedMessage(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method public registerServices(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "registerServices()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/nuance/connect/service/ConnectClient;->clientStartComplete:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->isCurrentlyProcessing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v2, p0, v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->setup(Lcom/nuance/connect/service/ConnectClient;Z)V

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v4, v3}, Lcom/nuance/connect/service/manager/ManagerRegistry;->addService(Ljava/lang/String;)Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->complete()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public removeMessages(Lcom/nuance/connect/internal/common/InternalMessages;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->removeMessages(I)V

    return-void
.end method

.method public resetDevice()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DeviceManager;->resetDevice()V

    :cond_0
    return-void
.end method

.method public resetSession(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v1, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/SessionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/SessionManager;->resetSession(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendCommand(Lcom/nuance/connect/service/comm/Command;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/comm/CommandQueue;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method

.method public sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    return-void
.end method

.method public sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v0

    invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v6

    :goto_0
    invoke-virtual {v7, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-direct {p0, v7}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    return-void

    :cond_0
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const-string v0, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object p2, v6

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v0, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object p2, v6

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    const-string v0, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object p2, v6

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "sendMessageToHost("

    const-string v3, ", "

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    :cond_5
    const-string v5, ") Error attaching Object, unsupported type."

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v6

    goto :goto_0
.end method

.method public sendMessageToHostDelayed(Landroid/os/Message;I)V
    .locals 4

    new-instance v0, Lcom/nuance/connect/service/ConnectClient$7;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/ConnectClient$7;-><init>(Lcom/nuance/connect/service/ConnectClient;Landroid/os/Message;)V

    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze(J)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V
    .locals 4

    new-instance v0, Lcom/nuance/connect/service/ConnectClient$6;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/ConnectClient$6;-><init>(Lcom/nuance/connect/service/ConnectClient;Lcom/nuance/connect/internal/common/InternalMessages;)V

    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze(J)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public sendTransaction(Lcom/nuance/connect/service/comm/Transaction;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/comm/CommandQueue;->sendTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    return-void
.end method

.method public declared-synchronized setCurrentLanguageInfo([I[I)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->languageListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/service/manager/interfaces/LanguageListener;->onLanguageUpdate([I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public setCurrentLocaleInfo(Ljava/util/Locale;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->activeLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient;->activeLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->languageListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/manager/interfaces/LanguageListener;->onLocaleUpdate(Ljava/util/Locale;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLanguageCoreMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient;->languageCoreMap:Ljava/util/HashMap;

    return-void
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    return-void
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Long;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Long;)V

    return-void
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    return-void
.end method

.method protected startNextManager()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "startNextManager()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getNextPendingManager()Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "startNextManager() -- "

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->allStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/service/ConnectClient;->clientStartComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "All managers started. Notifying host."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CLIENT_START_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->postStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/ConnectClient;->clientStartComplete:Z

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ConnectClient started"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public taskCompletedAcknowledgement(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->taskToProcess:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->taskToProcess:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->taskToProcess:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method
