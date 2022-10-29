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

.field public static final RATE_LIMIT_EXCEEDED:I = 0x44e

.field private static final SCANNER_TWITTER_LAST_RUN_CALENDAR:Ljava/lang/String; = "SCANNER_TWITTER_LAST_RUN_CALENDAR"

.field private static final SCANNER_TWITTER_LAST_SCANNED_ID:Ljava/lang/String; = "SCANNER_TWITTER_LAST_SCANNED_ID"

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
    .registers 2

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
    .registers 3

    const-string/jumbo v0, "SCANNER_TWITTER_LAST_RUN_CALENDAR"

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACScanner;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    const/16 v0, 0x64

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->maxToProcess:I

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method private scanDirectMessages(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    .registers 4

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "scan direct messages"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private scanFriends(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/nuance/connect/util/HttpUtils$HttpUtilsException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "scan friends list"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerSecret:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessTokenSecret:Ljava/lang/String;

    new-instance v4, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$2;

    invoke-direct {v4, p0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$2;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerTwitter;Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/HttpUtils;->friendsListCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/util/HttpUtils$FriendListCallback;)V

    return-void
.end method

.method private scanMemberships(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    .registers 4

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "scan memberships"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private scanStatus(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/nuance/connect/util/HttpUtils$HttpUtilsException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "scan status timeline"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string/jumbo v1, "SCANNER_TWITTER_LAST_SCANNED_ID"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v6

    new-instance v8, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$1;

    invoke-direct {v8, p0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$1;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerTwitter;Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerSecret:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessTokenSecret:Ljava/lang/String;

    iget v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->maxToProcess:I

    invoke-static/range {v1 .. v8}, Lcom/nuance/connect/util/HttpUtils;->userTimelineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/nuance/connect/util/HttpUtils$TimelineCallback;)V

    return-void
.end method


# virtual methods
.method public final clearLastRun()V
    .registers 3

    invoke-super {p0}, Lcom/nuance/swypeconnect/ac/ACScanner;->clearLastRun()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string/jumbo v1, "SCANNER_TWITTER_LAST_SCANNED_ID"

    invoke-interface {v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    return-void
.end method

.method final fail(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method final getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .registers 2

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method final scan()V
    .registers 12

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_TWITTER:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->startScan()V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "scan"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->scanType:[Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    if-nez v0, :cond_30

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Scan type is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->endScan(Z)V

    :goto_2f
    return-void

    :cond_30
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->scanType:[Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    array-length v4, v3

    move v1, v2

    :goto_34
    if-ge v1, v4, :cond_11a

    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->scanCoreList:[I

    invoke-virtual {p0, v5, v10, v2}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v5

    :try_start_3e
    sget-object v6, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->STATUS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    invoke-virtual {v6, v0}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-direct {p0, v5}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->scanStatus(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    :try_end_49
    .catch Lcom/nuance/connect/util/HttpUtils$HttpUtilsException; {:try_start_3e .. :try_end_49} :catch_5c
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_49} :catch_a7
    .catchall {:try_start_3e .. :try_end_49} :catchall_ee

    :goto_49
    invoke-interface {v5}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    :goto_4c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    :cond_50
    :try_start_50
    sget-object v6, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->DIRECT_MESSAGES:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    invoke-virtual {v6, v0}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    invoke-direct {p0, v5}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->scanDirectMessages(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    :try_end_5b
    .catch Lcom/nuance/connect/util/HttpUtils$HttpUtilsException; {:try_start_50 .. :try_end_5b} :catch_5c
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_5b} :catch_a7
    .catchall {:try_start_50 .. :try_end_5b} :catchall_ee

    goto :goto_49

    :catch_5c
    move-exception v0

    :try_start_5d
    sget-object v6, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed scan: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/util/HttpUtils$HttpUtilsException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/nuance/connect/util/HttpUtils$HttpUtilsException;->rateIsExceeded()Z

    move-result v6

    if-eqz v6, :cond_fd

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v7, 0x44e

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Rate limit exceeded: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/util/HttpUtils$HttpUtilsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V
    :try_end_97
    .catchall {:try_start_5d .. :try_end_97} :catchall_ee

    :goto_97
    invoke-interface {v5}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    goto :goto_4c

    :cond_9b
    :try_start_9b
    sget-object v6, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->FRIENDS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    invoke-virtual {v6, v0}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e1

    invoke-direct {p0, v5}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->scanFriends(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    :try_end_a6
    .catch Lcom/nuance/connect/util/HttpUtils$HttpUtilsException; {:try_start_9b .. :try_end_a6} :catch_5c
    .catch Lorg/json/JSONException; {:try_start_9b .. :try_end_a6} :catch_a7
    .catchall {:try_start_9b .. :try_end_a6} :catchall_ee

    goto :goto_49

    :catch_a7
    move-exception v0

    :try_start_a8
    sget-object v6, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed scan: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v7, 0x44d

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Scanning response failed (JSON): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V
    :try_end_dc
    .catchall {:try_start_a8 .. :try_end_dc} :catchall_ee

    invoke-interface {v5}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    goto/16 :goto_4c

    :cond_e1
    :try_start_e1
    sget-object v6, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->MEMBERSHIPS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    invoke-virtual {v6, v0}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f3

    invoke-direct {p0, v5}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->scanMemberships(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    :try_end_ec
    .catch Lcom/nuance/connect/util/HttpUtils$HttpUtilsException; {:try_start_e1 .. :try_end_ec} :catch_5c
    .catch Lorg/json/JSONException; {:try_start_e1 .. :try_end_ec} :catch_a7
    .catchall {:try_start_e1 .. :try_end_ec} :catchall_ee

    goto/16 :goto_49

    :catchall_ee
    move-exception v0

    invoke-interface {v5}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    throw v0

    :cond_f3
    :try_start_f3
    sget-object v6, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "Type not supported: "

    invoke-interface {v6, v7, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_fb
    .catch Lcom/nuance/connect/util/HttpUtils$HttpUtilsException; {:try_start_f3 .. :try_end_fb} :catch_5c
    .catch Lorg/json/JSONException; {:try_start_f3 .. :try_end_fb} :catch_a7
    .catchall {:try_start_f3 .. :try_end_fb} :catchall_ee

    goto/16 :goto_49

    :cond_fd
    :try_start_fd
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v7, 0x44c

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Failed to connect to twitter: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/util/HttpUtils$HttpUtilsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V
    :try_end_118
    .catchall {:try_start_fd .. :try_end_118} :catchall_ee

    goto/16 :goto_97

    :cond_11a
    invoke-virtual {p0, v10}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->endScan(Z)V

    goto/16 :goto_2f
.end method

.method public final setScanType([Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->scanType:[Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    return-void
.end method

.method public final setTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerSecret:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessTokenSecret:Ljava/lang/String;

    return-void
.end method

.method public final start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerKey:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->consumerSecret:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->accessTokenSecret:Ljava/lang/String;

    if-nez v0, :cond_18

    :cond_10
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x67

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_18
    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
