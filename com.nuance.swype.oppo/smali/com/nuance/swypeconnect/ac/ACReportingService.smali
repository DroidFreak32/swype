.class public final Lcom/nuance/swypeconnect/ac/ACReportingService;
.super Lcom/nuance/swypeconnect/ac/ACService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACReportingService$2;,
        Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;,
        Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;,
        Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;,
        Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;,
        Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;,
        Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;,
        Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;,
        Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;,
        Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;
    }
.end annotation


# static fields
.field private static final BUNDLE_AGGREGATE_TYPE:Z = true

.field private static final BUNDLE_INDIVIDUAL_TYPE:Z = false

.field public static final INPUT_TYPE_HANDWRITTEN:I

.field public static final INPUT_TYPE_SPOKEN:I

.field public static final INPUT_TYPE_SWYPED:I

.field public static final INPUT_TYPE_TAPPED:I

.field public static final MAXIMUM_DATABASE_ENTRIES:I = 0x186a0

.field private static final MAX_TRANSMISSION_RETRIES:I = 0x3

.field public static final MINIMUM_DATABASE_ENTRIES:I = 0x2710

.field public static final MINIMUM_DATABASE_SIZE:I = 0xc800

.field public static final REASON_DATA_POINT_IDENTIFIER_NOT_FOUND:I = 0xbb8

.field public static final REPORTING_CLEAR_USER_INITIATED:I = 0x1

.field public static final REPORTING_LOG_FAILURE_DATABASE:I = 0x4

.field public static final REPORTING_LOG_FAILURE_POINT_INVALID:I = 0x3

.field public static final REPORTING_LOG_FAILURE_POINT_NOT_ALLOWED:I = 0x2

.field public static final REPORTING_LOG_FAILURE_POINT_TOO_LARGE:I = 0x6

.field public static final REPORTING_TRANSMISSION_FAILURE:I = 0x5

.field public static final STRATEGY_PERSIST:I

.field public static final STRATEGY_PURGE:I

.field public static final STRATEGY_RETRANSMIT:I

.field private static final oemLog:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final appLogger:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;

.field private final callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private currentStrategy:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

.field private final logHelper:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

.field private final reportingService:Lcom/nuance/connect/api/ReportingService;

.field private final serviceCallback:Lcom/nuance/connect/api/ReportingService$Callback;

.field private final tracker:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;

.field private final writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->TAPPED:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->ordinal()I

    move-result v0

    sput v0, Lcom/nuance/swypeconnect/ac/ACReportingService;->INPUT_TYPE_TAPPED:I

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->SWYPED:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->ordinal()I

    move-result v0

    sput v0, Lcom/nuance/swypeconnect/ac/ACReportingService;->INPUT_TYPE_SWYPED:I

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->HANDWRITTEN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->ordinal()I

    move-result v0

    sput v0, Lcom/nuance/swypeconnect/ac/ACReportingService;->INPUT_TYPE_HANDWRITTEN:I

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->SPOKEN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->ordinal()I

    move-result v0

    sput v0, Lcom/nuance/swypeconnect/ac/ACReportingService;->INPUT_TYPE_SPOKEN:I

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->RETRANSMIT:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->ordinal()I

    move-result v0

    sput v0, Lcom/nuance/swypeconnect/ac/ACReportingService;->STRATEGY_RETRANSMIT:I

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->PERSIST:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->ordinal()I

    move-result v0

    sput v0, Lcom/nuance/swypeconnect/ac/ACReportingService;->STRATEGY_PERSIST:I

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->PURGE:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->ordinal()I

    move-result v0

    sput v0, Lcom/nuance/swypeconnect/ac/ACReportingService;->STRATEGY_PURGE:I

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/api/ReportingService;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Ljava/util/Set;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->PURGE:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->currentStrategy:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACReportingService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->serviceCallback:Lcom/nuance/connect/api/ReportingService$Callback;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->getIdentifiers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/ReportingService;->registerDataPoints(Ljava/util/Set;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;-><init>(Lcom/nuance/swypeconnect/ac/ACReportingService;Lcom/nuance/swypeconnect/ac/ACReportingService$1;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    :try_start_0
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->getLanguageSettings()Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->init(Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;Lcom/nuance/swypeconnect/ac/ACLanguage;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->logHelper:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->logHelper:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;-><init>(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->tracker:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    invoke-direct {v0, v1, p4, v2}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;-><init>(Landroid/content/Context;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->appLogger:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ReportingService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->logHelper:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->enable()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/connect/api/ReportingService;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->currentStrategy:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    return-object v0
.end method


# virtual methods
.method public final clearData()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ReportingService;->clearData()V

    return-void
.end method

.method public final disableReporting()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->logHelper:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->disable()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ReportingService;->disableReporting()V

    return-void
.end method

.method public final enableReporting()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ReportingService;->enableReporting()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->logHelper:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->enable()V

    return-void
.end method

.method public final getHelper()Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->logHelper:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    return-object v0
.end method

.method public final getIntervalTracker()Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->tracker:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;

    return-object v0
.end method

.method final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "REPORTING_SERVICE"

    return-object v0
.end method

.method public final getWriter()Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ReportingService;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final isEntryAllowed(Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->isEntryAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isEntryAllowed(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ReportingService;->isPointAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final log(Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ReportingService;->log(Landroid/os/Bundle;)V

    return-void
.end method

.method public final registerCallback(Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->serviceCallback:Lcom/nuance/connect/api/ReportingService$Callback;

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/ReportingService;->registerCallback(Lcom/nuance/connect/api/ReportingService$Callback;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final registerDataPoints(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->from(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0xbb8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Data point is unknown: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ReportingService;->registerDataPoints(Ljava/util/Set;)V

    return-void
.end method

.method final requiresDocument(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sendData()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ReportingService;->sendData()V

    return-void
.end method

.method public final setMaxEntries(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const v0, 0x186a0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x83

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Max entries was set outside of accepted parameters.  Entries: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ReportingService;->setMaxIndividualEntries(I)V

    return-void
.end method

.method public final setMaxSize(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const v0, 0xc800

    if-ge p1, v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x83

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Max size was set outside of accepted parameters.  Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/nuance/connect/api/ReportingService;->setMaxSize(J)V

    return-void
.end method

.method public final setTransmissionFailureStrategy(I)V
    .locals 1

    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->from(I)Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->currentStrategy:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    return-void
.end method

.method final shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->appLogger:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->onShutdown()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->unregisterCallbacks()V

    return-void
.end method

.method final start()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->appLogger:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->onStart()V

    return-void
.end method

.method public final unregisterCallback(Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;)V
    .locals 3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->serviceCallback:Lcom/nuance/connect/api/ReportingService$Callback;

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/ReportingService;->unregisterCallback(Lcom/nuance/connect/api/ReportingService$Callback;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final unregisterCallbacks()V
    .locals 2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService;->reportingService:Lcom/nuance/connect/api/ReportingService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ReportingService;->unregisterCallbacks()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
