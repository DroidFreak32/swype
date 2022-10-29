.class public final Lcom/nuance/swypeconnect/ac/ACScannerCalllog;
.super Lcom/nuance/swypeconnect/ac/ACScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACScannerCalllog$1;,
        Lcom/nuance/swypeconnect/ac/ACScannerCalllog$CallLogReader;
    }
.end annotation


# static fields
.field private static final CALLLOG_MAX_DEFAULT:I = 0x3c

.field private static final MAX_WORD_LENGTH:I = 0x20

.field private static final MIN_WORD_LENGTH:I = 0x1

.field private static final SCANNER_CALLLOG_LAST_RUN_CALENDAR:Ljava/lang/String; = "SCANNER_CALLLOG_LAST_RUN_CALENDAR"

.field static final TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->CALL_LOG:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V
    .registers 3

    const-string/jumbo v0, "SCANNER_CALLLOG_LAST_RUN_CALENDAR"

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACScanner;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->maxToProcess:I

    return-void
.end method


# virtual methods
.method final fail(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method final getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .registers 2

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method final scan()V
    .registers 7

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_CALLLOG:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->startScan()V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->lastRunCalendar:Ljava/util/Calendar;

    if-eqz v2, :cond_23

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->lastRunCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :cond_23
    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "scan since:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACScannerCalllog$CallLogReader;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog$CallLogReader;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerCalllog$1;)V

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog$CallLogReader;->read(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_a5

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "getting buckets..."

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->scanCoreList:[I

    invoke-virtual {p0, v0, v5, v5}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v2

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "done getting buckets..."

    invoke-interface {v0, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_60
    :try_start_60
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->currentProcess:I

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->maxToProcess:I

    if-ge v0, v3, :cond_9f

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog$CallLogReader;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->currentProcess:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->currentProcess:I

    if-eqz v0, :cond_60

    invoke-interface {v2, v0}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-static {v0, v3, v4}, Lcom/nuance/connect/util/StringUtils;->scanWordsTokens(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_87
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_60 .. :try_end_96} :catchall_97

    goto :goto_87

    :catchall_97
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    throw v0

    :cond_9f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    :cond_a5
    invoke-virtual {p0, v5}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->endScan(Z)V

    return-void
.end method

.method public final start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x10

    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/connect/util/PermissionUtils;->checkPermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_1f
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
