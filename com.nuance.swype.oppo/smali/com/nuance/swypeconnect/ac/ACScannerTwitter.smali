.class public final Lcom/nuance/swypeconnect/ac/ACScannerTwitter;
.super Lcom/nuance/swypeconnect/ac/ACScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;
    }
.end annotation


# static fields
.field public static final HTTP_FAILURE:I = 0x44c

.field private static final MAX_DEFAULT:I = 0x64

.field public static final PARSE_RESPONSE_FAILURE:I = 0x44d

.field private static final SCANNER_TWITTER_LAST_RUN_CALENDAR:Ljava/lang/String; = "SCANNER_TWITTER_LAST_RUN_CALENDAR"

.field protected static final TWITTER_DATE:Ljava/lang/String; = "EEE MMM dd HH:mm:ss ZZZZZ yyyy"

.field static final TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private accessTokenSecret:Ljava/lang/String;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private scanType:[Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

.field private final service:Lcom/nuance/swypeconnect/ac/ACScannerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->TWITTER:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V
    .locals 1

    const-string v0, "SCANNER_TWITTER_LAST_RUN_CALENDAR"

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACScanner;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    const/16 v0, 0x64

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->maxToProcess:I

    return-void
.end method

.method private static getTwitterDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM dd HH:mm:ss ZZZZZ yyyy"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final fail(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method final getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method final scan()V
    .locals 11

    const/16 v0, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->startScan()V

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "scan"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->scanCoreList:[I

    invoke-virtual {p0, v3, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v4

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->maxToProcess:I

    if-le v3, v0, :cond_2

    :goto_0
    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->maxToProcess:I

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerSecret:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessTokenSecret:Ljava/lang/String;

    iget v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->maxToProcess:I

    invoke-static {v0, v3, v5, v6, v7}, Lcom/nuance/connect/util/HttpUtils;->getTwitterTimelineStatuses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->maxToProcess:I

    if-lez v0, :cond_3

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    move v3, v0

    move v0, v2

    :goto_2
    if-eqz v3, :cond_5

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "user"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    sget-object v7, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Tweet: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "screen_name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "text"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "created_at"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->lastRunCalendar:Ljava/util/Calendar;

    if-eqz v6, :cond_0

    const-string v6, "created_at"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->getTwitterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->lastRunCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    :cond_0
    const-string v6, "text"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->currentProcess:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->currentProcess:I

    :cond_1
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->currentProcess:I

    iget v6, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->maxToProcess:I

    if-ge v0, v6, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lcom/nuance/connect/util/HttpUtils$HttpUtilsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v3, v0, :cond_4

    move v0, v1

    :goto_3
    move v10, v3

    move v3, v0

    move v0, v10

    goto/16 :goto_2

    :cond_2
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->maxToProcess:I

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    invoke-interface {v4}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    :goto_4
    invoke-virtual {p0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->endScan(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed scan: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/util/HttpUtils$HttpUtilsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v3, 0x44c

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to connect to twitter: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/util/HttpUtils$HttpUtilsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v4}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed scan: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v3, 0x44d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Scanning response failed (JSON): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v4}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed scan: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v3, 0x44d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Scanning response failed (JSON-Date): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v4}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    throw v0
.end method

.method public final setScanType([Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->scanType:[Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    return-void
.end method

.method public final setTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerSecret:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessTokenSecret:Ljava/lang/String;

    return-void
.end method

.method public final start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerSecret:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessTokenSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x67

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
