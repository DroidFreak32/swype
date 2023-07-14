.class public abstract Lcom/nuance/connect/comm/Connector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/comm/Connector$ResponseData;
    }
.end annotation


# static fields
.field protected static final DEFAULT_COMPRESSION_THRESHOLD:I = 0xc8

.field protected static final DEFAULT_DELAY_FOR:I = -0x1

.field protected static final ENCODING:Ljava/lang/String; = "UTF-8"

.field protected static final SEND_PERCENT_UPDATE_INTERVAL:I = 0x1f4

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field protected final analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

.field protected final client:Lcom/nuance/connect/comm/MessageSendingBus;

.field protected compressionThreshold:I

.field protected final connectionStatus:Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;

.field protected final connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

.field protected final requestKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/comm/Connector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getThreadLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/comm/ConnectorCallback;Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    iput-object p1, p0, Lcom/nuance/connect/comm/Connector;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    iput-object p2, p0, Lcom/nuance/connect/comm/Connector;->connectionStatus:Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;

    iput-object p3, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    iput-object p4, p0, Lcom/nuance/connect/comm/Connector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    iput-object p5, p0, Lcom/nuance/connect/comm/Connector;->requestKey:Ljava/lang/String;

    return-void
.end method

.method private commandToURL(Ljava/lang/String;Lcom/nuance/connect/comm/Command;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/nuance/connect/comm/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logServerResponse(Lcom/nuance/connect/comm/Command;[B)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v1}, Lcom/nuance/connect/comm/MessageSendingBus;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "server-sessions.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Unable to create server-sessions.txt"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\"/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/nuance/connect/comm/Command;->version:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\""

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    const-string/jumbo v0, "\"\n"

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private static processPbuffResult([BLcom/nuance/connect/comm/Response;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p0, p1, Lcom/nuance/connect/comm/Response;->responseArray:[B

    iput-boolean v0, p1, Lcom/nuance/connect/comm/Response;->processed:Z

    iput v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    return-void
.end method

.method private writeJsonValue(Landroid/util/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    goto :goto_0

    :cond_4
    instance-of v0, p2, Ljava/util/HashMap;

    if-eqz v0, :cond_7

    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    throw v0

    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_0

    :cond_7
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_9

    :try_start_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/comm/Connector;->writeJsonValue(Landroid/util/JsonWriter;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "json obj e: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    throw v0

    :cond_9
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_b

    :try_start_3
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    check-cast p2, Lorg/json/JSONArray;

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/nuance/connect/comm/Connector;->writeJsonValue(Landroid/util/JsonWriter;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "json array e: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    throw v0

    :cond_b
    instance-of v0, p2, Ljava/util/Iterator;

    if-eqz v0, :cond_d

    :try_start_5
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    check-cast p2, Ljava/util/Iterator;

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/comm/Connector;->writeJsonValue(Landroid/util/JsonWriter;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    throw v0

    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Error: unusable value="

    invoke-interface {v0, v1, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected allowsOutput()Z
    .locals 3

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method protected connectToUrl(Ljava/lang/String;Lcom/nuance/connect/comm/Command;)Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/nuance/connect/comm/Connector;->isThirdPartyRequest(Lcom/nuance/connect/comm/Command;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    :goto_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v7}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    :goto_1
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    :goto_2
    sget-object v2, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "connectToUrl: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/comm/Connector;->commandToURL(Ljava/lang/String;Lcom/nuance/connect/comm/Command;)Ljava/lang/String;

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

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2
.end method

.method public destroyConnection()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/Connector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    invoke-interface {v0}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->flush()V

    return-void
.end method

.method protected generateBody(Lcom/nuance/connect/comm/Command;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v1, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->JSON:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-boolean v0, p1, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "5"

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/comm/ConnectorCallback;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-boolean v0, p1, Lcom/nuance/connect/comm/Command;->requireSession:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "3"

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/comm/ConnectorCallback;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->requestKey:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "4"

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->transactionId:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :try_start_1
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_5
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_6
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_8

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_7
    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_8
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_9

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_9
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_a

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Error: unusable key type key="

    const-string/jumbo v7, " value="

    invoke-interface {v2, v6, v0, v7, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_b
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :try_start_3
    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "body: "

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    return-object v0

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_3
    sget-object v2, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Failed string encoding: "

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v1, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "generateBody for protobuffers"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->bufferData:[B

    if-eqz v0, :cond_d

    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "generateBody: "

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_d
    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "generateBody: null"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_2

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unknown Content being transmitted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method protected hasSufficientSpace(I)Z
    .locals 4

    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v1}, Lcom/nuance/connect/comm/MessageSendingBus;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

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

.method public isThirdPartyRequest(Lcom/nuance/connect/comm/Command;)Z
    .locals 2

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract processCommand(Lcom/nuance/connect/comm/Command;Lcom/nuance/connect/comm/Transaction;Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/comm/ConnectorException;
        }
    .end annotation
.end method

.method protected processFileResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;Ljava/io/File;)V
    .locals 6

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->command:Ljava/lang/String;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->commandFamily:Ljava/lang/String;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->transactionId:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->transactionId:Ljava/lang/String;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->identifier:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->identifier:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    iput-object p2, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->fileLocation:Ljava/lang/String;

    iput-object p3, p1, Lcom/nuance/connect/comm/Response;->file:Ljava/io/File;

    iget-object v0, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ConnectorCallback;->onResponse(Lcom/nuance/connect/comm/Response;)V

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Downloaded File: \n"

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\nSize: "

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected processJSONResult([BLcom/nuance/connect/comm/Response;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/comm/ConnectorException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "processJSONResult"

    invoke-interface {v0, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p2, Lcom/nuance/connect/comm/Response;->delayedFor:I

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v0, "UTF-8"

    invoke-direct {v4, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Error processing JSON result, failing"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v4, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Error processing HTTP response"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v3

    move-object v6, v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v4, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Error processing HTTP response"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v3

    move-object v6, v1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "5"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "5"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/nuance/connect/comm/Response;->deviceId:Ljava/lang/String;

    const-string/jumbo v0, "5"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v0, "3"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "3"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/nuance/connect/comm/Response;->sessionId:Ljava/lang/String;

    const-string/jumbo v0, "3"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v0, "4"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "4"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/nuance/connect/comm/Response;->transactionId:Ljava/lang/String;

    const-string/jumbo v0, "4"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    const-string/jumbo v0, "51"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "51"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/nuance/connect/comm/Response;->thirdPartyURL:Ljava/lang/String;

    const-string/jumbo v0, "51"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    const-string/jumbo v0, "0"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "0"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_5
    const-string/jumbo v0, "64"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Debug Info: "

    const-string/jumbo v8, "64"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v4, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    const-string/jumbo v0, "117"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "117"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v4, v0}, Lcom/nuance/connect/comm/ConnectorCallback;->onUnlicensed(I)V

    sget-object v4, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v8, "This build has been unlicensed for "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v9, " seconds."

    invoke-interface {v4, v8, v0, v9}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_2
    const-string/jumbo v0, "6"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "6"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    :try_start_2
    const-string/jumbo v0, "6"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_3
    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Server status for request: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "processResult() UNKNOWN COMMAND: ["

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v8, "]"

    invoke-interface {v0, v3, v5, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    move v3, v4

    :goto_4
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move-object v3, v10

    :goto_6
    sget-object v4, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "JSON Error: "

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    iput-boolean v1, p2, Lcom/nuance/connect/comm/Response;->processed:Z

    iput v2, p2, Lcom/nuance/connect/comm/Response;->status:I

    iput-object v0, p2, Lcom/nuance/connect/comm/Response;->statusMessage:Ljava/lang/String;

    iput-object v7, p2, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processJSONResult complete"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/nuance/connect/comm/Connector;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v0}, Lcom/nuance/connect/comm/MessageSendingBus;->isLicensed()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Build has been re-enabled as licensed"

    invoke-interface {v0, v4}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    const/high16 v4, -0x80000000

    invoke-interface {v0, v4}, Lcom/nuance/connect/comm/ConnectorCallback;->onUnlicensed(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p2, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/comm/Connector;->isThirdPartyRequest(Lcom/nuance/connect/comm/Command;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Third party request, success assumed"

    invoke-interface {v0, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move v4, v3

    goto/16 :goto_3

    :cond_a
    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "No status sent back from server."

    invoke-interface {v0, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move v4, v2

    goto/16 :goto_3

    :pswitch_1
    :try_start_5
    iget-object v0, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v0}, Lcom/nuance/connect/comm/ConnectorCallback;->onDeviceInvalidated()V

    move v3, v4

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v0}, Lcom/nuance/connect/comm/ConnectorCallback;->onSessionInvalidated()V

    move v3, v4

    goto :goto_4

    :pswitch_3
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/nuance/connect/comm/Response;->transactionId:Ljava/lang/String;

    move v2, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_4
    const/16 v4, 0x9

    move v3, v4

    goto/16 :goto_4

    :pswitch_5
    const-string/jumbo v0, "8"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "8"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/nuance/connect/comm/Response;->delayedFor:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Server requested delay for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p2, Lcom/nuance/connect/comm/Response;->delayedFor:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " seconds."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v1

    :try_start_6
    new-instance v0, Lcom/nuance/connect/comm/IOConnectorException;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    iget v3, p2, Lcom/nuance/connect/comm/Response;->delayedFor:I

    invoke-virtual {v0, v3}, Lcom/nuance/connect/comm/IOConnectorException;->setDelaySeconds(I)V

    throw v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move v1, v2

    move v2, v4

    goto/16 :goto_6

    :cond_b
    move v3, v5

    goto/16 :goto_4

    :pswitch_6
    :try_start_7
    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "Client recieved Invalid Argument."

    invoke-interface {v0, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move v2, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_7
    iget-object v0, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v0}, Lcom/nuance/connect/comm/ConnectorCallback;->onAccountInvalidated()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    move v2, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_8
    move v2, v3

    move v3, v4

    goto/16 :goto_4

    :cond_c
    move-object v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_7

    :catch_4
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move v1, v2

    move v2, v4

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method protected processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;I)Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processResult starting"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->command:Ljava/lang/String;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->commandFamily:Ljava/lang/String;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->identifier:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->identifier:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/nuance/connect/comm/Response;->processed:Z

    iput p3, p1, Lcom/nuance/connect/comm/Response;->status:I

    iput-object p2, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ConnectorCallback;->onResponse(Lcom/nuance/connect/comm/Response;)V

    return v2
.end method

.method protected processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/comm/ConnectorException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processResult starting"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->command:Ljava/lang/String;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->commandFamily:Ljava/lang/String;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->identifier:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->identifier:Ljava/lang/String;

    iput-object p2, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->dataResponse:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v1, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p1}, Lcom/nuance/connect/comm/Connector;->processPbuffResult([BLcom/nuance/connect/comm/Response;)V

    :goto_0
    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processResult processed:"

    iget-boolean v2, p1, Lcom/nuance/connect/comm/Response;->processed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p1, Lcom/nuance/connect/comm/Response;->processed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ConnectorCallback;->onResponse(Lcom/nuance/connect/comm/Response;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, p3, p1}, Lcom/nuance/connect/comm/Connector;->processJSONResult([BLcom/nuance/connect/comm/Response;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCompressionThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    return-void
.end method

.method protected shouldCompress(J)Z
    .locals 5

    iget v0, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v2, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Size of content: "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-eqz v0, :cond_1

    const-string/jumbo v1, " compressing"

    :goto_1
    invoke-interface {v2, v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, " not compressing"

    goto :goto_1
.end method

.method protected shouldCompress(Lcom/nuance/connect/comm/Command;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    if-gez v0, :cond_1

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, " not compressing"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v1, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->bufferData:[B

    array-length v0, v0

    iget v1, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    if-le v0, v1, :cond_0

    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    if-ge v1, v0, :cond_3

    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Size of content: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, " compressing"

    invoke-interface {v1, v2, v0, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v3, v4

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Size of content: "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v4, " not compressing"

    invoke-interface {v0, v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected writeJsonBody(Lcom/nuance/connect/comm/Command;Landroid/util/JsonWriter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Write JSON command="

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v1, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->JSON:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "writeJsonBody without JSON source!"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-boolean v0, p1, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "5"

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/comm/ConnectorCallback;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_1
    iget-boolean v0, p1, Lcom/nuance/connect/comm/Command;->requireSession:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "3"

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/comm/ConnectorCallback;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_2
    const-string/jumbo v0, "0"

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->requestKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "4"

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_3
    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "    Output key="

    const-string/jumbo v5, " value="

    invoke-interface {v3, v4, v0, v5, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-direct {p0, p2, v2}, Lcom/nuance/connect/comm/Connector;->writeJsonValue(Landroid/util/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "IO Error streaming json: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    throw v0

    :cond_4
    :try_start_3
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    return-void

    :catch_1
    move-exception v0

    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error writing endObject: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v1

    sget-object v2, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error writing endObject: "

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected writeProtocolBufferBody(Lcom/nuance/connect/comm/Command;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->bufferData:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "IO Error streaming protocol buffer: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
