.class public Lcom/nuance/connect/service/comm/HttpConnector;
.super Ljava/lang/Object;


# static fields
.field private static final COMPRESSION_THRESHOLD:I = 0xc8

.field private static final DEFAULT_READ_TIMEOUT:I = 0x78

.field private static final SEND_PERCENT_UPDATE_INTERVAL:I = 0x1f4

.field private static final encoding:Ljava/lang/String; = "UTF-8"


# instance fields
.field private analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

.field private client:Lcom/nuance/connect/service/ConnectClient;

.field private connectionStatus:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

.field private connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

.field private delayTimeoutSeconds:I

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

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private serverURL:Ljava/lang/String;

.field private serverUrlChangeListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/service/comm/ConnectorCallback;Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const/16 v0, 0x78

    iput v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->delayTimeoutSeconds:I

    new-instance v0, Lcom/nuance/connect/service/comm/HttpConnector$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/HttpConnector$1;-><init>(Lcom/nuance/connect/service/comm/HttpConnector;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->serverUrlChangeListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/service/comm/HttpConnector$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/HttpConnector$2;-><init>(Lcom/nuance/connect/service/comm/HttpConnector;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    iput-object p1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    iput-object p2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectionStatus:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

    iput-object p3, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    iput-object p4, p0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->serverUrlChangeListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->NETWORK_TIMEOUT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/comm/HttpConnector;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/connect/service/comm/HttpConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->serverURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/nuance/connect/service/comm/HttpConnector;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->delayTimeoutSeconds:I

    return p1
.end method

.method private allowsOutput()Z
    .locals 3

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private commandToURL(Lcom/nuance/connect/service/comm/Command;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->serverURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/nuance/connect/service/comm/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private connectToUrl(Lcom/nuance/connect/service/comm/Command;)Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    :goto_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v7}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    :goto_1
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    :goto_2
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/comm/HttpConnector;->commandToURL(Lcom/nuance/connect/service/comm/Command;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2
.end method

.method private generateBody(Lcom/nuance/connect/service/comm/Command;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v0, p1, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    if-eqz v0, :cond_0

    const-string v0, "5"

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/service/comm/ConnectorCallback;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-boolean v0, p1, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    if-eqz v0, :cond_1

    const-string v0, "3"

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/service/comm/ConnectorCallback;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "0"

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/service/comm/ConnectorCallback;->getRequestKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "4"

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_5
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_6
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_8

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_7
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_8
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_9

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_9
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_a

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Error: unusable key type key="

    const-string v6, " value="

    invoke-interface {v2, v5, v0, v6, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    return-object v3
.end method

.method private hasSufficientSpace(I)Z
    .locals 4

    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processFileResult(Lcom/nuance/connect/service/comm/Command;Ljava/io/File;)V
    .locals 6

    new-instance v0, Lcom/nuance/connect/service/comm/Response;

    invoke-direct {v0}, Lcom/nuance/connect/service/comm/Response;-><init>()V

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Response;->commandFamily:Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/nuance/connect/service/comm/Response;->status:I

    iput-object p1, v0, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Response;->fileLocation:Ljava/lang/String;

    iput-object p2, v0, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v1, v0}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onResponse(Lcom/nuance/connect/service/comm/Response;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Downloaded File: \n"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\nSize: "

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private processResult(Lcom/nuance/connect/service/comm/Command;Lorg/json/JSONObject;)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v3, 0x1

    new-instance v6, Lcom/nuance/connect/service/comm/Response;

    invoke-direct {v6}, Lcom/nuance/connect/service/comm/Response;-><init>()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, ""

    :try_start_0
    const-string v1, "6"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "6"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "6"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    iput v1, v6, Lcom/nuance/connect/service/comm/Response;->status:I

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    iput-object v2, v6, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    iput-object v2, v6, Lcom/nuance/connect/service/comm/Response;->commandFamily:Ljava/lang/String;

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    iput-object v2, v6, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "5"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/nuance/connect/service/comm/Response;->deviceId:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    const-string v2, "3"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "3"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/nuance/connect/service/comm/Response;->sessionId:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    const-string v2, "4"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "4"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    const-string v2, "51"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "51"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    const-string v2, "51"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    const-string v2, "0"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "0"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    const-string v2, "64"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Debug Info: "

    const-string v8, "64"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    const-string v2, "117"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "117"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v7, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v7, v2}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onUnlicensed(I)V

    iget-object v7, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "This build has been unlicensed for "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v9, " seconds."

    invoke-interface {v7, v8, v2, v9}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    sparse-switch v1, :sswitch_data_0

    iget-object v2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "processResult() UNKNOWN COMMAND: ["

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v8, "]"

    invoke-interface {v2, v7, v1, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v0

    move v2, v3

    move v3, v5

    :goto_2
    :try_start_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v10, v0

    move v0, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v10

    :goto_4
    iget-object v7, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "processResult() - JSONException "

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v0, 0x5

    :cond_7
    move-object v10, v1

    move v1, v0

    move-object v0, v10

    :cond_8
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    iput-object p1, v6, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v0, v6}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onResponse(Lcom/nuance/connect/service/comm/Response;)V

    move v0, v5

    :goto_6
    return v0

    :cond_9
    :try_start_2
    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "No status sent back from server."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move v1, v5

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->isLicensed()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Build has been re-enabled as licensed"

    invoke-interface {v2, v7}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    const/high16 v7, -0x80000000

    invoke-interface {v2, v7}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onUnlicensed(I)V

    goto :goto_1

    :catch_1
    move-exception v1

    move v2, v5

    move-object v10, v0

    move v0, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v10

    goto :goto_4

    :sswitch_0
    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onDeviceInvalidated()V

    move-object v1, v0

    move v2, v3

    move v3, v5

    goto :goto_2

    :sswitch_1
    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onSessionInvalidated()V

    move-object v1, v0

    move v2, v3

    move v3, v5

    goto/16 :goto_2

    :sswitch_2
    const/4 v1, 0x0

    iput-object v1, v6, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, v0

    move v2, v3

    move v3, v5

    goto/16 :goto_2

    :sswitch_3
    const/16 v3, 0x9

    move-object v1, v0

    move v2, v3

    move v3, v5

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "8"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "8"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Server requested delay for "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    :goto_7
    const/4 v3, 0x3

    move v2, v3

    move v3, v1

    move-object v1, v0

    goto/16 :goto_2

    :cond_b
    :try_start_4
    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/service/comm/ConnectorCallback;->getDefaultDelay()I

    move-result v1

    goto :goto_7

    :sswitch_5
    const-string v1, "9"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "9"

    const-string v7, "9"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v6, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    :cond_c
    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v1, v6}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onValidateDeviceProperties(Lcom/nuance/connect/service/comm/Response;)V

    move-object v1, v0

    move v2, v3

    move v3, v5

    goto/16 :goto_2

    :sswitch_6
    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Client recieved Invalid Argument."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, v0

    move v2, v3

    move v3, v5

    goto/16 :goto_2

    :sswitch_7
    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onAccountInvalidated()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, v0

    move v2, v3

    move v3, v5

    goto/16 :goto_2

    :sswitch_8
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v4

    move-object v1, v0

    move v2, v3

    move v3, v5

    goto/16 :goto_2

    :cond_d
    :try_start_5
    iput-object v7, v6, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v1

    move v1, v2

    move v2, v3

    move-object v3, v4

    goto/16 :goto_5

    :catch_2
    move-exception v1

    move v2, v5

    move v10, v3

    move-object v3, v4

    move-object v4, v1

    move v1, v10

    :goto_8
    iget-object v7, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "processResult() - Exception "

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v1, 0x2

    goto/16 :goto_5

    :cond_e
    iget v3, p1, Lcom/nuance/connect/service/comm/Command;->retryCount:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p1, Lcom/nuance/connect/service/comm/Command;->retryCount:I

    if-gez v3, :cond_f

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Command;->requestType:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {v3, v4}, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    iget-object v3, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v3, p1, v2, v1, v0}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onRetry(Lcom/nuance/connect/service/comm/Command;IILjava/lang/String;)Z

    move-result v0

    goto/16 :goto_6

    :cond_10
    iget-object v2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v2, p1, v1, v0}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onFailure(Lcom/nuance/connect/service/comm/Command;ILjava/lang/String;)V

    move v0, v5

    goto/16 :goto_6

    :catch_3
    move-exception v2

    move-object v10, v2

    move v2, v1

    move v1, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_8

    :catch_5
    move-exception v2

    move-object v10, v2

    move v2, v1

    move-object v1, v0

    move v0, v3

    move-object v3, v4

    move-object v4, v10

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_8
        0x0 -> :sswitch_8
        0x1 -> :sswitch_8
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_8
        0xb -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0xf -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_8
        0x13 -> :sswitch_8
        0x14 -> :sswitch_8
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
        0x1a -> :sswitch_8
        0x1fa -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public destroyConnection()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    invoke-interface {v0}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;->flush()V

    return-void
.end method

.method public processCommand(Lcom/nuance/connect/service/comm/Command;Lcom/nuance/connect/service/comm/Transaction;Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;)Z
    .locals 31

    const/16 v19, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/service/comm/Command;->shortString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    invoke-interface {v2}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;->mark()V

    const/4 v11, 0x1

    const-string v9, ""

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->start()V

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/nuance/connect/service/comm/HttpConnector;->connectToUrl(Lcom/nuance/connect/service/comm/Command;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_29
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_26
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_23
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v17

    :try_start_1
    new-instance v2, Lcom/nuance/connect/service/comm/HttpConnector$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/nuance/connect/service/comm/HttpConnector$3;-><init>(Lcom/nuance/connect/service/comm/HttpConnector;Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->setExpirer(Ljava/lang/Runnable;)V

    const-string v2, "http.keepAlive"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->delayTimeoutSeconds:I

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->delayTimeoutSeconds:I

    :goto_0
    if-gtz v2, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/service/comm/Transaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {v3, v4}, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_0
    :goto_1
    mul-int/lit16 v2, v2, 0x3e8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/service/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/service/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v6, Ljava/io/File;

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/service/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_2d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2a
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_27
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_17

    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Seeking to: "

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2e
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2b
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_28
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_25
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_22
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_18

    :cond_2
    move-object v14, v6

    :cond_3
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/comm/HttpConnector;->allowsOutput()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "] processCommand()  URL: ["

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    const-string v7, "]"

    invoke-interface/range {v2 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    const-string v3, "PUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->sendFileLocation:Ljava/lang/String;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "] PUT request "

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/connect/service/comm/Command;->sendFileLocation:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/nuance/connect/service/comm/Command;->sendFileLocation:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v2, Ljava/io/IOException;

    const-string v3, "File does not exists!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_19

    :catch_0
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v9, v17

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v11, "] processCommand() - send - SSLException "

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v7, v8, v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x1

    const/4 v7, 0x1

    const/4 v3, 0x4

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v11, v3

    move-wide v12, v4

    move-object v14, v6

    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v9

    move-object v9, v2

    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->tick()V

    if-nez v16, :cond_36

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "] serverConn.getResponseCode("

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ") command: "

    move-object v8, v10

    invoke-interface/range {v2 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sparse-switch v18, :sswitch_data_0

    const/16 v16, 0x1

    const/4 v11, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    move-result-object v9

    :cond_5
    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v11

    move-object v11, v9

    :goto_4
    if-nez v18, :cond_35

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    const-string v2, "Content-Range"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v2, -0x80000000

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    int-to-long v8, v6

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v8, v9}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;->writeResponse(Lcom/nuance/connect/service/comm/Command;J)V

    if-eqz v6, :cond_1a

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v12

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v12, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v4, 0x400

    invoke-direct {v9, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "] "

    const-string v7, " JSON response: "

    move-object v6, v10

    invoke-interface/range {v2 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/service/comm/HttpConnector;->processResult(Lcom/nuance/connect/service/comm/Command;Lorg/json/JSONObject;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-result v19

    move-object/from16 v21, v9

    move-object/from16 v22, v12

    move/from16 v2, v18

    move/from16 v3, v19

    :goto_5
    if-eqz v20, :cond_6

    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    :cond_6
    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v21, :cond_2e

    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12

    move/from16 v4, v16

    move v5, v2

    move v6, v3

    move v3, v15

    move-object v2, v11

    :goto_6
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->complete()V

    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    if-eqz v7, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onCancel(Lcom/nuance/connect/service/comm/Command;)V

    :cond_9
    :goto_7
    if-nez v6, :cond_33

    const/4 v2, 0x1

    :goto_8
    return v2

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x78

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x1

    :try_start_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-direct/range {p0 .. p1}, Lcom/nuance/connect/service/comm/HttpConnector;->generateBody(Lcom/nuance/connect/service/comm/Command;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "X-Swype-Connect"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_19

    move-result-wide v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v20, 0x0

    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    move-result-object v5

    :try_start_b
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x1000

    invoke-direct {v3, v8, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    :cond_d
    :goto_9
    if-ltz v2, :cond_10

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->getInterval()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v22, v0

    rem-long v22, v20, v22

    const-wide/16 v24, 0x0

    cmp-long v4, v22, v24

    if-nez v4, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->tick()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v2

    move-object v4, v5

    :goto_a
    if-eqz v4, :cond_e

    :try_start_d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_f
    throw v2
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_19

    :catch_1
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v11, "] processCommand() - send - JSONException "

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v7, v9, v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/4 v3, 0x5

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    move v11, v3

    move-wide v12, v4

    move-object v14, v6

    move/from16 v16, v7

    move-object/from16 v17, v8

    goto/16 :goto_3

    :cond_10
    :try_start_e
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v5, :cond_11

    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_11
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "] sendingFile() --- "

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide v2, v6

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v2, v3}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;->writeRequest(Lcom/nuance/connect/service/comm/Command;J)V

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_f
    .catch Ljavax/net/ssl/SSLException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_19

    goto/16 :goto_3

    :catch_2
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v11, "] processCommand() - send - ProtocolException "

    invoke-virtual {v2}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v7, v9, v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/4 v3, 0x6

    invoke-virtual {v2}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    move v11, v3

    move-wide v12, v4

    move-object v14, v6

    move/from16 v16, v7

    move-object/from16 v17, v8

    goto/16 :goto_3

    :cond_12
    :try_start_10
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->sendFileLocation:Ljava/lang/String;

    if-eqz v2, :cond_16

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/nuance/connect/service/comm/Command;->sendFileLocation:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_13

    new-instance v2, Ljava/io/IOException;

    const-string v3, "File does not exists!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_19

    :catch_3
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v11, "] processCommand() - send - URISyntaxException "

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v7, v9, v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/4 v3, 0x6

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    move v11, v3

    move-wide v12, v4

    move-object v14, v6

    move/from16 v16, v7

    move-object/from16 v17, v8

    goto/16 :goto_3

    :cond_13
    const/4 v3, 0x1

    :try_start_11
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v3, "Content-Type"

    const-string v4, "text/json"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_11
    .catch Ljavax/net/ssl/SSLException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_19

    move-result-object v8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v20, 0x0

    :try_start_12
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :try_start_13
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    :cond_14
    :goto_f
    if-ltz v2, :cond_15

    invoke-virtual {v8, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->getInterval()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    rem-long v22, v20, v22

    const-wide/16 v24, 0x0

    cmp-long v5, v22, v24

    if-nez v5, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->tick()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_f

    :catchall_1
    move-exception v2

    :goto_10
    :try_start_15
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    throw v2
    :try_end_15
    .catch Ljavax/net/ssl/SSLException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_19

    :catch_4
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v11, "] processCommand() - send - MalformedURLException "

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v7, v9, v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/4 v3, 0x6

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    move v11, v3

    move-wide v12, v4

    move-object v14, v6

    move/from16 v16, v7

    move-object/from16 v17, v8

    goto/16 :goto_3

    :cond_15
    :try_start_16
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :try_start_17
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    move-wide v2, v6

    goto/16 :goto_c

    :cond_16
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-direct/range {p0 .. p1}, Lcom/nuance/connect/service/comm/HttpConnector;->generateBody(Lcom/nuance/connect/service/comm/Command;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v2, "UTF-8"

    invoke-virtual {v8, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    const-string v2, "Content-Type"

    const-string v3, "text/json"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    array-length v2, v0

    int-to-long v0, v2

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "] Size of content: "

    move-object/from16 v0, v18

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xc8

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_17

    const-string v7, " compressing"

    :goto_12
    invoke-interface/range {v2 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xc8

    move-object/from16 v0, v18

    array-length v3, v0

    if-ge v2, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Compressing Content"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_17
    .catch Ljavax/net/ssl/SSLException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_19

    move-result-object v5

    const/4 v4, 0x0

    :try_start_18
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v3, v5, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :try_start_19
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :try_start_1a
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "] sendingBody() --- "

    const-string v7, " --- "

    move-object v6, v10

    invoke-interface/range {v2 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v2, v20

    goto/16 :goto_c

    :cond_17
    const-string v7, " not compressing"

    goto :goto_12

    :catchall_2
    move-exception v2

    move-object v3, v4

    :goto_14
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_18
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    throw v2
    :try_end_1a
    .catch Ljavax/net/ssl/SSLException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1a .. :try_end_1a} :catch_4
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_19

    :catch_5
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v9, v17

    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v11, "] processCommand() - send - IOException "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v7, v8, v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x1

    const/4 v7, 0x1

    const/4 v3, 0x2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v11, v3

    move-wide v12, v4

    move-object v14, v6

    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v9

    move-object v9, v2

    goto/16 :goto_3

    :cond_19
    :try_start_1b
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljavax/net/ssl/SSLException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1b .. :try_end_1b} :catch_4
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_19

    goto :goto_13

    :catch_6
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    :goto_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v11, "] processCommand() - send - NullPointerException "

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v7, v9, v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/4 v3, 0x2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    move v11, v3

    move-wide v12, v4

    move-object v14, v6

    move/from16 v16, v7

    move-object/from16 v17, v8

    goto/16 :goto_3

    :catch_7
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v11, "] processCommand() - send - Exception "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v7, v9, v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/4 v3, 0x2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    move v11, v3

    move-wide v12, v4

    move-object v14, v6

    move/from16 v16, v7

    move-object/from16 v17, v8

    goto/16 :goto_3

    :sswitch_0
    const/4 v15, 0x1

    const/4 v11, 0x7

    :try_start_1c
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1c
    .catch Ljavax/net/ssl/SSLException; {:try_start_1c .. :try_end_1c} :catch_8
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b

    move-result-object v9

    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v11

    move-object v11, v9

    goto/16 :goto_4

    :sswitch_1
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gtz v2, :cond_5

    const/4 v15, 0x1

    const/16 v11, 0x8

    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v11

    move-object v11, v9

    goto/16 :goto_4

    :sswitch_2
    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v11

    move-object v11, v9

    goto/16 :goto_4

    :catch_8
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "] SSLException trying to get response code "

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v16, 0x1

    const/4 v15, 0x1

    const/4 v11, 0x4

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v11

    move-object v11, v9

    goto/16 :goto_4

    :catch_9
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "] IOException trying to get response code "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v16, 0x1

    const/4 v15, 0x1

    const/4 v11, 0x2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v11

    move-object v11, v9

    goto/16 :goto_4

    :catch_a
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "] NPE trying to get response code "

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v16, 0x1

    const/4 v11, 0x2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v9

    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v11

    move-object v11, v9

    goto/16 :goto_4

    :catch_b
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "] Exception trying to get response code "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v16, 0x1

    const/4 v11, 0x2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v11

    move-object v11, v9

    goto/16 :goto_4

    :cond_1a
    if-gtz v6, :cond_1b

    const/4 v4, -0x1

    if-ne v6, v4, :cond_2b

    :cond_1b
    :try_start_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/nuance/connect/service/comm/HttpConnector;->hasSufficientSpace(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-lez v4, :cond_1c

    if-eqz v3, :cond_1c

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    move-result v4

    if-eqz v4, :cond_1c

    :try_start_1e
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_f
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    move-result v2

    :cond_1c
    :goto_18
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-lez v3, :cond_21

    int-to-long v4, v6

    cmp-long v3, v12, v4

    if-eqz v3, :cond_1d

    int-to-long v2, v2

    cmp-long v2, v12, v2

    if-nez v2, :cond_21

    :cond_1d
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Download already complete!"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    move-object/from16 v3, v20

    move-object/from16 v4, v22

    :goto_19
    :try_start_20
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/nuance/connect/service/comm/HttpConnector;->processFileResult(Lcom/nuance/connect/service/comm/Command;Ljava/io/File;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    move/from16 v2, v18

    move/from16 v3, v19

    goto/16 :goto_5

    :catch_c
    move-exception v3

    :try_start_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Invalid range to get total from. NFE"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    goto :goto_18

    :catchall_3
    move-exception v2

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    :goto_1a
    if-eqz v3, :cond_1e

    :try_start_22
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1e
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_1f
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_20
    throw v2
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_22 .. :try_end_22} :catch_15
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_14
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_13

    :catch_d
    move-exception v2

    move/from16 v5, v19

    :goto_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "] processCommand() - receive - JSONException "

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v4, v6, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v3, 0x5

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v6, v5

    move v5, v4

    move/from16 v4, v16

    goto/16 :goto_6

    :catch_e
    move-exception v3

    :try_start_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Invalid range to get total from. NPE"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_18

    :catch_f
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Invalid substring?"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_21
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    move/from16 v27, v0

    long-to-int v0, v12

    move/from16 v26, v0

    const/16 v23, 0x0

    long-to-int v2, v12

    add-int v28, v6, v2

    div-int/lit8 v29, v28, 0x64

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "] Downloading file now. total size is: ["

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "]["

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] "

    invoke-interface/range {v2 .. v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v14, :cond_22

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/nuance/connect/service/comm/Transaction;->createDownloadFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_22
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    :try_start_24
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v2, v14, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    const/4 v2, 0x0

    move-wide/from16 v6, v24

    move/from16 v5, v23

    move/from16 v8, v26

    :goto_1c
    if-nez v2, :cond_2a

    :try_start_25
    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    if-eqz v9, :cond_23

    new-instance v2, Ljava/io/IOException;

    const-string v5, "download canceled"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_4
    move-exception v2

    move-object v5, v4

    move-object/from16 v4, v21

    goto/16 :goto_1a

    :cond_23
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_24

    invoke-virtual {v3, v9}, Ljava/io/BufferedOutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v30, v2

    move v2, v5

    move/from16 v5, v30

    :goto_1d
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v9

    if-eqz v9, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "network timed out"

    invoke-interface {v2, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v2, Ljava/io/IOException;

    const-string v5, "timeout occurred"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    const/4 v2, 0x1

    move/from16 v30, v2

    move v2, v5

    move/from16 v5, v30

    goto :goto_1d

    :cond_25
    if-eqz v27, :cond_27

    if-nez v5, :cond_26

    move/from16 v0, v29

    if-lt v2, v0, :cond_27

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v6

    const-wide/16 v22, 0x1f4

    cmp-long v9, v12, v22

    if-lez v9, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v2, v0, v8, v1}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onDownloadStatus(Lcom/nuance/connect/service/comm/Command;II)V

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    :cond_27
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->getInterval()I

    move-result v9

    rem-int v9, v8, v9

    if-nez v9, :cond_28

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->tick()V

    :cond_28
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectionStatus:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

    invoke-interface {v9}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;->isConnected()Z

    move-result v9

    if-nez v9, :cond_29

    new-instance v2, Ljava/io/IOException;

    const-string v5, "Connection lost"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    move/from16 v30, v5

    move v5, v2

    move/from16 v2, v30

    goto/16 :goto_1c

    :cond_2a
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    goto/16 :goto_19

    :cond_2b
    if-gtz v6, :cond_2c

    const/4 v2, -0x1

    if-ne v6, v2, :cond_2d

    :cond_2c
    :try_start_26
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/nuance/connect/service/comm/HttpConnector;->hasSufficientSpace(I)Z

    move-result v2

    if-nez v2, :cond_2d

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v6}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onDownloadStatus(Lcom/nuance/connect/service/comm/Command;II)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    move/from16 v2, v18

    move/from16 v3, v19

    goto/16 :goto_5

    :cond_2d
    const/16 v18, 0x1

    move/from16 v2, v18

    move/from16 v3, v19

    goto/16 :goto_5

    :cond_2e
    move/from16 v4, v16

    move v5, v2

    move v6, v3

    move v3, v15

    move-object v2, v11

    goto/16 :goto_6

    :catch_10
    move-exception v2

    move v6, v3

    :goto_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "] processCommand() - receive - SSLException "

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v4, v5, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x1

    const/4 v4, 0x1

    const/4 v3, 0x4

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :catch_11
    move-exception v2

    move v5, v3

    :goto_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "] processCommand() - receive - IOException "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v6, v7, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v3, 0x1

    const/4 v2, 0x2

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v11

    goto/16 :goto_6

    :catch_12
    move-exception v2

    move v5, v3

    :goto_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "] processCommand() - receive - Exception "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v4, v6, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v3, 0x2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v6, v5

    move v5, v4

    move/from16 v4, v16

    goto/16 :goto_6

    :cond_2f
    if-nez v5, :cond_30

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onSuccess(Lcom/nuance/connect/service/comm/Command;)V

    goto/16 :goto_7

    :cond_30
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v5

    if-nez v5, :cond_31

    if-eqz v4, :cond_32

    :cond_31
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    if-nez v4, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v3, v2}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onIOException(Lcom/nuance/connect/service/comm/Command;ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v3, v2}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onRetry(Lcom/nuance/connect/service/comm/Command;IILjava/lang/String;)Z

    move-result v6

    goto/16 :goto_7

    :cond_33
    const/4 v2, 0x0

    goto/16 :goto_8

    :catch_13
    move-exception v2

    move/from16 v5, v19

    goto :goto_20

    :catch_14
    move-exception v2

    move/from16 v5, v19

    goto/16 :goto_1f

    :catch_15
    move-exception v2

    move/from16 v6, v19

    goto/16 :goto_1e

    :catch_16
    move-exception v2

    move v5, v3

    goto/16 :goto_1b

    :catchall_5
    move-exception v2

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object v5, v12

    goto/16 :goto_1a

    :catchall_6
    move-exception v2

    move-object/from16 v3, v20

    move-object v4, v9

    move-object v5, v12

    goto/16 :goto_1a

    :catchall_7
    move-exception v2

    move-object/from16 v3, v20

    move-object v5, v4

    move-object/from16 v4, v21

    goto/16 :goto_1a

    :catch_17
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    goto/16 :goto_17

    :catch_18
    move-exception v2

    move-wide v4, v12

    move-object/from16 v8, v17

    goto/16 :goto_17

    :catch_19
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    goto/16 :goto_17

    :catch_1a
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    goto/16 :goto_16

    :catch_1b
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    goto/16 :goto_16

    :catch_1c
    move-exception v2

    move-wide v4, v12

    move-object/from16 v8, v17

    goto/16 :goto_16

    :catch_1d
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v9, v17

    goto/16 :goto_15

    :catch_1e
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v9, v17

    goto/16 :goto_15

    :catch_1f
    move-exception v2

    move-wide v4, v12

    move-object/from16 v9, v17

    goto/16 :goto_15

    :catch_20
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    goto/16 :goto_11

    :catch_21
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    goto/16 :goto_11

    :catch_22
    move-exception v2

    move-wide v4, v12

    move-object/from16 v8, v17

    goto/16 :goto_11

    :catch_23
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    goto/16 :goto_e

    :catch_24
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    goto/16 :goto_e

    :catch_25
    move-exception v2

    move-wide v4, v12

    move-object/from16 v8, v17

    goto/16 :goto_e

    :catch_26
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    goto/16 :goto_d

    :catch_27
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    goto/16 :goto_d

    :catch_28
    move-exception v2

    move-wide v4, v12

    move-object/from16 v8, v17

    goto/16 :goto_d

    :catch_29
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    goto/16 :goto_b

    :catch_2a
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v8, v17

    goto/16 :goto_b

    :catch_2b
    move-exception v2

    move-wide v4, v12

    move-object/from16 v8, v17

    goto/16 :goto_b

    :catch_2c
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v9, v17

    goto/16 :goto_2

    :catch_2d
    move-exception v2

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v9, v17

    goto/16 :goto_2

    :catch_2e
    move-exception v2

    move-wide v4, v12

    move-object/from16 v9, v17

    goto/16 :goto_2

    :catchall_8
    move-exception v2

    goto/16 :goto_14

    :catchall_9
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_10

    :catchall_a
    move-exception v2

    move-object v4, v5

    goto/16 :goto_10

    :catchall_b
    move-exception v2

    move-object/from16 v30, v4

    move-object v4, v3

    move-object/from16 v3, v30

    goto/16 :goto_a

    :catchall_c
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_a

    :cond_34
    move/from16 v2, v18

    move/from16 v3, v19

    goto/16 :goto_5

    :cond_35
    move-object v2, v11

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v18

    move/from16 v6, v19

    goto/16 :goto_6

    :cond_36
    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v11

    move-object v11, v9

    goto/16 :goto_4

    :cond_37
    move-wide v2, v6

    goto/16 :goto_c

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0xce -> :sswitch_1
        0x193 -> :sswitch_0
        0x196 -> :sswitch_0
    .end sparse-switch
.end method
