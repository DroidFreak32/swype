.class public final Lcom/nuance/swypeconnect/ac/ACScannerList;
.super Lcom/nuance/swypeconnect/ac/ACScanner;


# static fields
.field private static final LIST_MAX_DEFAULT:I = -0x1

.field private static final MAX_WORD_LENGTH:I = 0x20

.field private static final MIN_WORD_LENGTH:I = 0x1

.field private static final SCANNER_LIST_LAST_RUN_LIST:Ljava/lang/String; = "SCANNER_LIST_LAST_RUN_LIST"

.field static final TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final scanContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wordQuality:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACScannerList;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerList;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->LIST:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerList;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V
    .registers 3

    const-string/jumbo v0, "SCANNER_LIST_LAST_RUN_LIST"

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACScanner;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->wordQuality:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->scanContent:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->maxToProcess:I

    return-void
.end method


# virtual methods
.method public final addCollection(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
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

    if-nez p1, :cond_d

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "Cannot pass in null to addCollection"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->scanContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final addItem(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    if-nez p1, :cond_d

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "Cannot pass in null to addItem"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->scanContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final fail(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method final getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .registers 2

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerList;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method final scan()V
    .registers 7

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerList;->startScan()V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->lastRunCalendar:Ljava/util/Calendar;

    if-eqz v2, :cond_10

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->lastRunCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :cond_10
    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerList;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "scan since:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerList;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "scanning items: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->scanContent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->scanContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_49

    :goto_48
    return-void

    :cond_49
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerList;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "getting buckets..."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->scanCoreList:[I

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->wordQuality:I

    invoke-virtual {p0, v0, v1, v5}, Lcom/nuance/swypeconnect/ac/ACScannerList;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerList;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "done getting buckets..."

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :try_start_61
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->scanContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->currentProcess:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->currentProcess:I

    if-eqz v0, :cond_67

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-static {v0, v3, v4}, Lcom/nuance/connect/util/StringUtils;->scanWordsTokens(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_61 .. :try_end_98} :catchall_99

    goto :goto_89

    :catchall_99
    move-exception v0

    invoke-interface {v1}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->scanContent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    throw v0

    :cond_a3
    invoke-interface {v1}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->scanContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, v5}, Lcom/nuance/swypeconnect/ac/ACScannerList;->endScan(Z)V

    goto :goto_48
.end method

.method public final setWordQuality(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "Word Quality must be high or low"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_10
    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->wordQuality:I

    return-void
.end method

.method public final start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerList;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
