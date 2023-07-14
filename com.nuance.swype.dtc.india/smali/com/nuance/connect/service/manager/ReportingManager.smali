.class public Lcom/nuance/connect/service/manager/ReportingManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/ReportingManager$3;,
        Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;
    }
.end annotation


# static fields
.field public static final COMMAND_AGGREGATE:Ljava/lang/String; = "aggregate"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "report"

.field public static final COMMAND_INDIVIDUAL:Ljava/lang/String; = "individual"

.field public static final COMMAND_TRACKING:Ljava/lang/String; = "tracking"

.field public static final COMMAND_VERSION:I = 0x5

.field public static final MANAGER_NAME:Ljava/lang/String; = "report"

.field private static final MESSAGES_HANDLED:[I

.field public static final METRICS_ALLOWED_PREF:Ljava/lang/String; = "REPORTING_METRICS_ALLOWED"

.field public static final REPORTING_EXPIRATION:Ljava/lang/String; = "REPORTING_EXPIRATION"

.field public static final REPORTING_GENERIC:Ljava/lang/String; = "REPORTING_GENERIC"

.field private static final REPORTING_LAST_RUN:Ljava/lang/String; = "REPORTING_LAST_RUN"

.field public static final REPORTING_LIMIT:Ljava/lang/String; = "REPORTING_LIMIT"

.field public static final REPORTING_TIMER:Ljava/lang/String; = "REPORTING_TIMER"

.field private static final TRACKING_INTERVAL:I = 0x3c

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final booleanPropertyListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

.field private dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

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

.field private lastReportingTime:J

.field private metricsAllowed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reportingDataExpriation:I

.field private reportingInterval:I

.field private trackingNextRun:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_SEND_REPORTING_NOW:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_GET_ALLOWED_REPORTING_METRICS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->MESSAGES_HANDLED:[I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    const v0, 0x54600

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingInterval:I

    const v0, 0x76a700

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingDataExpriation:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->trackingNextRun:J

    new-instance v0, Lcom/nuance/connect/service/manager/ReportingManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ReportingManager$1;-><init>(Lcom/nuance/connect/service/manager/ReportingManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/service/manager/ReportingManager$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ReportingManager$2;-><init>(Lcom/nuance/connect/service/manager/ReportingManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->booleanPropertyListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->version:I

    const-string/jumbo v0, "report"

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->commandFamily:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->messages:[I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "aggregate"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "individual"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "tracking"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_ALLOWED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->booleanPropertyListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/nuance/connect/service/manager/ReportingManager;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingInterval:I

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/ReportingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/connect/service/manager/ReportingManager;)Lcom/nuance/connect/sqlite/ReportingDataSource;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/connect/service/manager/ReportingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->setLastRunToNow()V

    return-void
.end method

.method static synthetic access$200()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/ReportingManager;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/service/manager/ReportingManager;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/ReportingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendAllowedMetricsToHost()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/ReportingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->savePreferences()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/manager/ReportingManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->trackingNextRun:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/nuance/connect/service/manager/ReportingManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->trackingNextRun:J

    return-wide p1
.end method

.method private cleanStoredReports(J)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cleanStoredReports() dataSource is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearAggregate(J)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearIndividual(J)V

    goto :goto_0
.end method

.method private clearStoredAggregate()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearAggregate(J)V

    :cond_0
    return-void
.end method

.method private clearStoredIndividual()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearIndividual(J)V

    :cond_0
    return-void
.end method

.method private determineUsageNextRun()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "REPORTING_LAST_RUN"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingInterval:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v3, Lcom/nuance/connect/service/manager/ReportingManager;

    const-string/jumbo v4, "REPORTING_GENERIC"

    invoke-virtual {v2, v3, v4}, Lcom/nuance/connect/service/ConnectClient;->getAlarmBuilder(Ljava/lang/Class;Ljava/lang/String;)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/nuance/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/util/Alarm;->cancel()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "determineUsageNextRun running now"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendReportTracking(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "determineUsageNextRun "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/nuance/connect/util/Alarm;->set()V

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "REPORTING_METRICS_ALLOWED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashSet;

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method private savePreferences()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "REPORTING_METRICS_ALLOWED"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    const-string/jumbo v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "REPORTING_METRICS_ALLOWED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private sendAllowedMetricsToHost()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_ALLOWED_REPORTING_METRICS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    return-void
.end method

.method private sendReportTracking(Z)V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-nez v1, :cond_1

    sget-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "data source is null. Exitting..."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "sendReportTracking hasAggregate="

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->hasAggregate()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "sendReportTracking hasIndividual="

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->hasIndividual()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->hasAggregate()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->hasIndividual()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->setLastRunToNow()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun()V

    const/4 v0, 0x0

    :cond_2
    sget-object v1, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "sendReportTracking("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, "): "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;-><init>(Lcom/nuance/connect/service/manager/ReportingManager;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/ReportingManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    goto :goto_0
.end method

.method private setLastRunToNow()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "REPORTING_LAST_RUN"

    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alarmNotification type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendReportTracking(Z)V

    :cond_0
    return-void
.end method

.method public deregister()V
    .locals 0

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->deregister()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->clearStoredAggregate()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->clearStoredIndividual()V

    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->REPORTING:Lcom/nuance/connect/internal/common/ManagerService;

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

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->initializeData()V

    :cond_0
    return-void
.end method

.method protected initializeData()V
    .locals 2

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/service/manager/ReportingManager$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendReportingNow()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendAllowedMetricsToHost()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;Z)V
    .locals 1

    invoke-static {p1, p2}, Lcom/nuance/connect/util/VersionUtils;->isDataCleanupRequiredOnUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    const-string/jumbo v0, "REPORTING_METRICS_ALLOWED"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/ReportingManager;->removePreference(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected sendReportingNow()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "REPORTING_LAST_RUN"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v1, Lcom/nuance/connect/service/manager/ReportingManager;

    const-string/jumbo v2, "REPORTING_GENERIC"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->getAlarmBuilder(Ljava/lang/Class;Ljava/lang/String;)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->cancel()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun()V

    return-void
.end method

.method public start()V
    .locals 4

    sget-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "start"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->initializeData()V

    :cond_0
    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    iget v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingDataExpriation:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/manager/ReportingManager;->cleanStoredReports(J)V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->trackingNextRun:J

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->loadPreferences()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendAllowedMetricsToHost()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->managerStartComplete()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun()V

    return-void
.end method
