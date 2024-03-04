.class public final Lcom/nuance/swypeconnect/ac/ACScannerFacebook;
.super Lcom/nuance/swypeconnect/ac/ACScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;,
        Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookUtil;
    }
.end annotation


# static fields
.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final FACEBOOK_MAX_DEFAULT:I = 0x64

.field public static final HTTP_FAILURE:I = 0x44c

.field public static final PARSE_RESPOSE_FAILURE:I = 0x44d

.field private static final SCANNER_FACEBOOK_LAST_RUN_CALENDAR:Ljava/lang/String; = "SCANNER_FACEBOOK_LAST_RUN_CALENDAR"

.field static final TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private accessExpires:J

.field private accessToken:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private final service:Lcom/nuance/swypeconnect/ac/ACScannerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACScannerSms;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->FACEBOOK:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V
    .locals 2

    const-string v0, "SCANNER_FACEBOOK_LAST_RUN_CALENDAR"

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACScanner;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessExpires:J

    const/16 v0, 0x64

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->maxToProcess:I

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method private extractNames(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->maxToProcess:I

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->currentProcess:I

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->currentProcess:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->currentProcess:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method final fail(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getAuthorizationUrl([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->appId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessExpires:J

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessExpires(J)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->getAuthorizationUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method public final isSessionValid()Z
    .locals 4

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->appId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessExpires:J

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessExpires(J)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method final scan()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "scan"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->startScan()V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->scanCoreList:[I

    invoke-virtual {p0, v2, v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v2

    :try_start_0
    new-instance v3, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->appId:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessToken(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessExpires:J

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessExpires(J)V

    const-string v4, "me/friends"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "GET"

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "scan response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->extractNames(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->endScan(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v4, 0x44c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FileNotFoundException-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v4, 0x44c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MalformedURLException-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v2}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v4, 0x44c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IOException-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v2}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    move v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_4
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v4, 0x44d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " JSONException-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v2}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    throw v0
.end method

.method public final setAccessExpires(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessExpires:J

    return-void
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->appId:Ljava/lang/String;

    return-void
.end method

.method public final start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x67

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
