.class public Lcom/nuance/connect/comm/HttpConnector;
.super Lcom/nuance/connect/comm/Connector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_READ_TIMEOUT:I = 0x78

.field private static final HTTP_INVALID_RANGE:I = 0x1a0


# instance fields
.field private delayTimeoutSeconds:I

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private serverURL:Ljava/lang/String;

.field private socketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/comm/ConnectorCallback;Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/comm/Connector;-><init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/comm/ConnectorCallback;Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;Ljava/lang/String;)V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getThreadLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const/16 v0, 0x78

    iput v0, p0, Lcom/nuance/connect/comm/HttpConnector;->delayTimeoutSeconds:I

    invoke-virtual {p0, p5}, Lcom/nuance/connect/comm/HttpConnector;->updateMinimumSSLProtocol(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public processCommand(Lcom/nuance/connect/comm/Command;Lcom/nuance/connect/comm/Transaction;Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;)Z
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/comm/ConnectorException;
        }
    .end annotation

    const/4 v10, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/comm/Command;->shortString()Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    invoke-interface {v4}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->mark()V

    const-string/jumbo v24, ""

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->start()V

    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->serverURL:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/nuance/connect/comm/HttpConnector;->connectToUrl(Ljava/lang/String;Lcom/nuance/connect/comm/Command;)Ljava/net/HttpURLConnection;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v4, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_68

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_68

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "processCommand() - could not find a compatible SSL protocol"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v4, Lcom/nuance/connect/comm/IOConnectorException;

    const-string/jumbo v5, "Could not find a compatible SSL protocol"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_44
    .catch Ljavax/net/ssl/SSLException; {:try_start_18 .. :try_end_44} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_18 .. :try_end_44} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_44} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_18 .. :try_end_44} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_44} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_44} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_44} :catch_448
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_44} :catch_4ac
    .catchall {:try_start_18 .. :try_end_44} :catchall_5e

    :catch_44
    move-exception v4

    :try_start_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "processCommand() - send - SSLException "

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v4

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->complete()V

    if-eqz v16, :cond_67

    :try_start_64
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_939

    :cond_67
    :goto_67
    throw v4

    :cond_68
    :try_start_68
    move-object/from16 v0, v16

    instance-of v4, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_7a

    move-object/from16 v0, v16

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_7a
    const-string/jumbo v4, "http.keepAlive"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/connect/comm/HttpConnector;->delayTimeoutSeconds:I

    if-lez v4, :cond_167

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/connect/comm/HttpConnector;->delayTimeoutSeconds:I

    :goto_93
    if-gtz v4, :cond_a1

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/comm/Transaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v5

    sget-object v9, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {v5, v9}, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16a

    :cond_a1
    :goto_a1
    mul-int/lit16 v4, v4, 0x3e8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9cd

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9cd

    new-instance v17, Ljava/io/File;

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9ca

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_cd
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_100

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "Seeking to: "

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v7, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v6, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "bytes="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_100
    move-wide/from16 v22, v4

    :goto_102
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/connect/comm/HttpConnector;->allowsOutput()Z

    move-result v4

    if-eqz v4, :cond_10e

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_10e
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->method:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->extraHeaders:Ljava/util/Map;

    if-eqz v4, :cond_16e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->extraHeaders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14c
    .catch Ljavax/net/ssl/SSLException; {:try_start_68 .. :try_end_14c} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_68 .. :try_end_14c} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_68 .. :try_end_14c} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_68 .. :try_end_14c} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_14c} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_68 .. :try_end_14c} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_14c} :catch_448
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_14c} :catch_4ac
    .catchall {:try_start_68 .. :try_end_14c} :catchall_5e

    goto :goto_12f

    :catch_14d
    move-exception v4

    :try_start_14e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "processCommand() - send - ProtocolException "

    invoke-virtual {v4}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_167
    .catchall {:try_start_14e .. :try_end_167} :catchall_5e

    :cond_167
    const/4 v4, 0x0

    goto/16 :goto_93

    :cond_16a
    const/16 v4, 0x78

    goto/16 :goto_a1

    :cond_16e
    :try_start_16e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "processCommand()  URL: ["

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-interface {v4, v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->method:Ljava/lang/String;

    const-string/jumbo v5, "PUT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    if-eqz v4, :cond_2c6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "PUT request "

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1d4

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "File does not exists!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1ba
    .catch Ljavax/net/ssl/SSLException; {:try_start_16e .. :try_end_1ba} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_16e .. :try_end_1ba} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_16e .. :try_end_1ba} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_16e .. :try_end_1ba} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_1ba} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_16e .. :try_end_1ba} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_16e .. :try_end_1ba} :catch_448
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_1ba} :catch_4ac
    .catchall {:try_start_16e .. :try_end_1ba} :catchall_5e

    :catch_1ba
    move-exception v4

    :try_start_1bb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "processCommand() - send - URISyntaxException "

    invoke-virtual {v4}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_1d4
    .catchall {:try_start_1bb .. :try_end_1d4} :catchall_5e

    :cond_1d4
    const/4 v5, 0x1

    :try_start_1d5
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string/jumbo v5, "Content-Type"

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/comm/Command;->getContentType()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->JSON:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v5, v6}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_206

    const-string/jumbo v5, "X-Swype-Connect"

    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/nuance/connect/comm/HttpConnector;->generateBody(Lcom/nuance/connect/comm/Command;)[B

    move-result-object v7

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v6, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_206
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_213
    .catch Ljavax/net/ssl/SSLException; {:try_start_1d5 .. :try_end_213} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_1d5 .. :try_end_213} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_1d5 .. :try_end_213} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_1d5 .. :try_end_213} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_213} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_1d5 .. :try_end_213} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_1d5 .. :try_end_213} :catch_448
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_213} :catch_4ac
    .catchall {:try_start_1d5 .. :try_end_213} :catchall_5e

    move-result-wide v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_216
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_219
    .catchall {:try_start_216 .. :try_end_219} :catchall_29b

    move-result-object v7

    :try_start_21a
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x1000

    invoke-direct {v5, v9, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_226
    .catchall {:try_start_21a .. :try_end_226} :catchall_9b8

    :try_start_226
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    :goto_22a
    if-ltz v4, :cond_234

    invoke-virtual {v7, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    goto :goto_22a

    :cond_234
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_237
    .catchall {:try_start_226 .. :try_end_237} :catchall_9bd

    if-eqz v7, :cond_23c

    :try_start_239
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_23c
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "sendingFile() --- "

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-wide v4, v12

    :goto_24a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v4, v5}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->writeRequest(Lcom/nuance/connect/comm/Command;J)V

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_256
    .catch Ljavax/net/ssl/SSLException; {:try_start_239 .. :try_end_256} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_239 .. :try_end_256} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_239 .. :try_end_256} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_239 .. :try_end_256} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_239 .. :try_end_256} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_239 .. :try_end_256} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_239 .. :try_end_256} :catch_448
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_256} :catch_4ac
    .catchall {:try_start_239 .. :try_end_256} :catchall_5e

    :try_start_256
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->tick()V

    new-instance v25, Lcom/nuance/connect/comm/Response;

    invoke-direct/range {v25 .. v25}, Lcom/nuance/connect/comm/Response;-><init>()V
    :try_end_25e
    .catchall {:try_start_256 .. :try_end_25e} :catchall_5e

    :try_start_25e
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "serverConn.getResponseCode("

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v9, ") command: "

    invoke-interface {v5, v6, v7, v9, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sparse-switch v4, :sswitch_data_9d2

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_281
    .catch Ljavax/net/ssl/SSLException; {:try_start_25e .. :try_end_281} :catch_281
    .catch Ljava/io/IOException; {:try_start_25e .. :try_end_281} :catch_4d8
    .catch Ljava/lang/NullPointerException; {:try_start_25e .. :try_end_281} :catch_580
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_25e .. :try_end_281} :catch_5a5
    .catch Ljava/lang/Exception; {:try_start_25e .. :try_end_281} :catch_5b2
    .catchall {:try_start_25e .. :try_end_281} :catchall_5e

    :catch_281
    move-exception v4

    :try_start_282
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "SSLException trying to get response code "

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_29b
    .catchall {:try_start_282 .. :try_end_29b} :catchall_5e

    :catchall_29b
    move-exception v4

    move-object/from16 v29, v6

    move-object v6, v5

    move-object/from16 v5, v29

    :goto_2a1
    if-eqz v6, :cond_2a6

    :try_start_2a3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_2a6
    if-eqz v5, :cond_2ab

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    :cond_2ab
    throw v4
    :try_end_2ac
    .catch Ljavax/net/ssl/SSLException; {:try_start_2a3 .. :try_end_2ac} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_2a3 .. :try_end_2ac} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_2a3 .. :try_end_2ac} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_2a3 .. :try_end_2ac} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_2a3 .. :try_end_2ac} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_2a3 .. :try_end_2ac} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_2a3 .. :try_end_2ac} :catch_448
    .catch Ljava/lang/Exception; {:try_start_2a3 .. :try_end_2ac} :catch_4ac
    .catchall {:try_start_2a3 .. :try_end_2ac} :catchall_5e

    :catch_2ac
    move-exception v4

    :try_start_2ad
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "processCommand() - send - MalformedURLException "

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_2c6
    .catchall {:try_start_2ad .. :try_end_2c6} :catchall_5e

    :cond_2c6
    :try_start_2c6
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nuance/connect/comm/Command;->hasBody:Z

    if-eqz v4, :cond_3ac

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    if-eqz v4, :cond_3ac

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_304

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "File does not exists!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2ea
    .catch Ljavax/net/ssl/SSLException; {:try_start_2c6 .. :try_end_2ea} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_2c6 .. :try_end_2ea} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_2c6 .. :try_end_2ea} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_2c6 .. :try_end_2ea} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_2c6 .. :try_end_2ea} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_2c6 .. :try_end_2ea} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_2c6 .. :try_end_2ea} :catch_448
    .catch Ljava/lang/Exception; {:try_start_2c6 .. :try_end_2ea} :catch_4ac
    .catchall {:try_start_2c6 .. :try_end_2ea} :catchall_5e

    :catch_2ea
    move-exception v4

    :try_start_2eb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "processCommand() - send - IOException "

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_304
    .catchall {:try_start_2eb .. :try_end_304} :catchall_5e

    :cond_304
    const/4 v5, 0x1

    :try_start_305
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string/jumbo v5, "Content-Type"

    const-string/jumbo v6, "text/json"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "Content-Encoding"

    const-string/jumbo v6, "gzip"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_32d
    .catch Ljavax/net/ssl/SSLException; {:try_start_305 .. :try_end_32d} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_305 .. :try_end_32d} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_305 .. :try_end_32d} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_305 .. :try_end_32d} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_305 .. :try_end_32d} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_305 .. :try_end_32d} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_305 .. :try_end_32d} :catch_448
    .catch Ljava/lang/Exception; {:try_start_305 .. :try_end_32d} :catch_4ac
    .catchall {:try_start_305 .. :try_end_32d} :catchall_5e

    move-result-object v9

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v14, 0x0

    :try_start_332
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_337
    .catchall {:try_start_332 .. :try_end_337} :catchall_9af

    :try_start_337
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_33c
    .catchall {:try_start_337 .. :try_end_33c} :catchall_9b4

    :try_start_33c
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    :cond_340
    if-ltz v4, :cond_39d

    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    const-wide/16 v18, 0x1

    add-long v14, v14, v18

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->getInterval()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    rem-long v18, v14, v18

    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-nez v7, :cond_35f

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->tick()V

    :cond_35f
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v7

    if-eqz v7, :cond_340

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "network timed out"

    invoke-interface {v4, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v7, "timeout occurred"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_378
    .catchall {:try_start_33c .. :try_end_378} :catchall_378

    :catchall_378
    move-exception v4

    :goto_379
    :try_start_379
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    throw v4
    :try_end_383
    .catch Ljavax/net/ssl/SSLException; {:try_start_379 .. :try_end_383} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_379 .. :try_end_383} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_379 .. :try_end_383} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_379 .. :try_end_383} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_379 .. :try_end_383} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_379 .. :try_end_383} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_379 .. :try_end_383} :catch_448
    .catch Ljava/lang/Exception; {:try_start_379 .. :try_end_383} :catch_4ac
    .catchall {:try_start_379 .. :try_end_383} :catchall_5e

    :catch_383
    move-exception v4

    :try_start_384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "processCommand() - send - NullPointerException "

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_39d
    .catchall {:try_start_384 .. :try_end_39d} :catchall_5e

    :cond_39d
    :try_start_39d
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_3a0
    .catchall {:try_start_39d .. :try_end_3a0} :catchall_378

    :try_start_3a0
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    move-wide v4, v12

    goto/16 :goto_24a

    :cond_3ac
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nuance/connect/comm/Command;->hasBody:Z

    if-eqz v4, :cond_41d

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string/jumbo v4, "Content-Type"

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/comm/Command;->getContentType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/nuance/connect/comm/HttpConnector;->shouldCompress(Lcom/nuance/connect/comm/Command;)Z

    move-result v4

    if-eqz v4, :cond_462

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "Compressing Content"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v4, "Content-Encoding"

    const-string/jumbo v5, "gzip"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3e8
    .catch Ljavax/net/ssl/SSLException; {:try_start_3a0 .. :try_end_3e8} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_3a0 .. :try_end_3e8} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_3a0 .. :try_end_3e8} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_3a0 .. :try_end_3e8} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_3a0 .. :try_end_3e8} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_3a0 .. :try_end_3e8} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_3a0 .. :try_end_3e8} :catch_448
    .catch Ljava/lang/Exception; {:try_start_3a0 .. :try_end_3e8} :catch_4ac
    .catchall {:try_start_3a0 .. :try_end_3e8} :catchall_5e

    const/4 v6, 0x0

    :try_start_3e9
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v5, v7, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3f0
    .catchall {:try_start_3e9 .. :try_end_3f0} :catchall_9ab

    :try_start_3f0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v6, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    if-ne v4, v6, :cond_420

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/nuance/connect/comm/HttpConnector;->writeProtocolBufferBody(Lcom/nuance/connect/comm/Command;Ljava/io/OutputStream;)V
    :try_end_3ff
    .catchall {:try_start_3f0 .. :try_end_3ff} :catchall_43b

    :goto_3ff
    :try_start_3ff
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v7}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->close()V

    invoke-virtual {v7}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size()J

    move-result-wide v12

    :goto_409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "["

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "]sendingBody() --- "

    const-string/jumbo v9, " --- "

    invoke-interface/range {v4 .. v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_41d
    .catch Ljavax/net/ssl/SSLException; {:try_start_3ff .. :try_end_41d} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_3ff .. :try_end_41d} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_3ff .. :try_end_41d} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_3ff .. :try_end_41d} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_3ff .. :try_end_41d} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_3ff .. :try_end_41d} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_3ff .. :try_end_41d} :catch_448
    .catch Ljava/lang/Exception; {:try_start_3ff .. :try_end_41d} :catch_4ac
    .catchall {:try_start_3ff .. :try_end_41d} :catchall_5e

    :cond_41d
    move-wide v4, v12

    goto/16 :goto_24a

    :cond_420
    :try_start_420
    new-instance v4, Landroid/util/JsonWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v6, v5, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/nuance/connect/comm/HttpConnector;->writeJsonBody(Lcom/nuance/connect/comm/Command;Landroid/util/JsonWriter;)V

    invoke-virtual {v4}, Landroid/util/JsonWriter;->flush()V

    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V
    :try_end_43a
    .catchall {:try_start_420 .. :try_end_43a} :catchall_43b

    goto :goto_3ff

    :catchall_43b
    move-exception v4

    :goto_43c
    if-eqz v5, :cond_441

    :try_start_43e
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_441
    invoke-virtual {v7}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->close()V

    invoke-virtual {v7}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size()J

    throw v4
    :try_end_448
    .catch Ljavax/net/ssl/SSLException; {:try_start_43e .. :try_end_448} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_43e .. :try_end_448} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_43e .. :try_end_448} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_43e .. :try_end_448} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_43e .. :try_end_448} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_43e .. :try_end_448} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_43e .. :try_end_448} :catch_448
    .catch Ljava/lang/Exception; {:try_start_43e .. :try_end_448} :catch_4ac
    .catchall {:try_start_43e .. :try_end_448} :catchall_5e

    :catch_448
    move-exception v4

    :try_start_449
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "processCommand() - send - RuntimeException "

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_462
    .catchall {:try_start_449 .. :try_end_462} :catchall_5e

    :cond_462
    :try_start_462
    new-instance v5, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_46b
    .catch Ljavax/net/ssl/SSLException; {:try_start_462 .. :try_end_46b} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_462 .. :try_end_46b} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_462 .. :try_end_46b} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_462 .. :try_end_46b} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_462 .. :try_end_46b} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_462 .. :try_end_46b} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_462 .. :try_end_46b} :catch_448
    .catch Ljava/lang/Exception; {:try_start_462 .. :try_end_46b} :catch_4ac
    .catchall {:try_start_462 .. :try_end_46b} :catchall_5e

    :try_start_46b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v6, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    if-ne v4, v6, :cond_482

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/nuance/connect/comm/HttpConnector;->writeProtocolBufferBody(Lcom/nuance/connect/comm/Command;Ljava/io/OutputStream;)V
    :try_end_47a
    .catchall {:try_start_46b .. :try_end_47a} :catchall_4a4

    :goto_47a
    :try_start_47a
    invoke-virtual {v5}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->close()V

    invoke-virtual {v5}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size()J
    :try_end_480
    .catch Ljavax/net/ssl/SSLException; {:try_start_47a .. :try_end_480} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_47a .. :try_end_480} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_47a .. :try_end_480} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_47a .. :try_end_480} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_47a .. :try_end_480} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_47a .. :try_end_480} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_47a .. :try_end_480} :catch_448
    .catch Ljava/lang/Exception; {:try_start_47a .. :try_end_480} :catch_4ac
    .catchall {:try_start_47a .. :try_end_480} :catchall_5e

    move-result-wide v12

    goto :goto_409

    :cond_482
    :try_start_482
    new-instance v4, Landroid/util/JsonWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v7, v5, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v6, v7, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/nuance/connect/comm/HttpConnector;->writeJsonBody(Lcom/nuance/connect/comm/Command;Landroid/util/JsonWriter;)V

    invoke-virtual {v4}, Landroid/util/JsonWriter;->flush()V

    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V
    :try_end_4a3
    .catchall {:try_start_482 .. :try_end_4a3} :catchall_4a4

    goto :goto_47a

    :catchall_4a4
    move-exception v4

    :try_start_4a5
    invoke-virtual {v5}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->close()V

    invoke-virtual {v5}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size()J

    throw v4
    :try_end_4ac
    .catch Ljavax/net/ssl/SSLException; {:try_start_4a5 .. :try_end_4ac} :catch_44
    .catch Ljava/net/ProtocolException; {:try_start_4a5 .. :try_end_4ac} :catch_14d
    .catch Ljava/net/URISyntaxException; {:try_start_4a5 .. :try_end_4ac} :catch_1ba
    .catch Ljava/net/MalformedURLException; {:try_start_4a5 .. :try_end_4ac} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_4a5 .. :try_end_4ac} :catch_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_4a5 .. :try_end_4ac} :catch_383
    .catch Ljava/lang/RuntimeException; {:try_start_4a5 .. :try_end_4ac} :catch_448
    .catch Ljava/lang/Exception; {:try_start_4a5 .. :try_end_4ac} :catch_4ac
    .catchall {:try_start_4a5 .. :try_end_4ac} :catchall_5e

    :catch_4ac
    move-exception v4

    :try_start_4ad
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "processCommand() - send - Exception "

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_4c6
    .catchall {:try_start_4ad .. :try_end_4c6} :catchall_5e

    :sswitch_4c6
    const-wide/16 v6, 0x0

    cmp-long v5, v22, v6

    if-gtz v5, :cond_4fc

    :try_start_4cc
    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_4d8
    .catch Ljavax/net/ssl/SSLException; {:try_start_4cc .. :try_end_4d8} :catch_281
    .catch Ljava/io/IOException; {:try_start_4cc .. :try_end_4d8} :catch_4d8
    .catch Ljava/lang/NullPointerException; {:try_start_4cc .. :try_end_4d8} :catch_580
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_4cc .. :try_end_4d8} :catch_5a5
    .catch Ljava/lang/Exception; {:try_start_4cc .. :try_end_4d8} :catch_5b2
    .catchall {:try_start_4cc .. :try_end_4d8} :catchall_5e

    :catch_4d8
    move-exception v4

    :try_start_4d9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "IOException trying to get response code "

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_4f2
    .catchall {:try_start_4d9 .. :try_end_4f2} :catchall_5e

    :sswitch_4f2
    :try_start_4f2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "HTTP_INVALID_RANGE the file may already be downloaded"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_4fc
    .catch Ljavax/net/ssl/SSLException; {:try_start_4f2 .. :try_end_4fc} :catch_281
    .catch Ljava/io/IOException; {:try_start_4f2 .. :try_end_4fc} :catch_4d8
    .catch Ljava/lang/NullPointerException; {:try_start_4f2 .. :try_end_4fc} :catch_580
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_4f2 .. :try_end_4fc} :catch_5a5
    .catch Ljava/lang/Exception; {:try_start_4f2 .. :try_end_4fc} :catch_5b2
    .catchall {:try_start_4f2 .. :try_end_4fc} :catchall_5e

    :cond_4fc
    :sswitch_4fc
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    :try_start_4ff
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v11

    const-string/jumbo v4, "Content-Range"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/high16 v4, -0x80000000

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    int-to-long v14, v11

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v14, v15}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->writeResponse(Lcom/nuance/connect/comm/Command;J)V

    if-eqz v11, :cond_677

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "json"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_677

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_52a
    .catchall {:try_start_4ff .. :try_end_52a} :catchall_78e

    move-result-object v9

    :try_start_52b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v10, v9, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v11, 0x400

    invoke-direct {v6, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_53f
    .catchall {:try_start_52b .. :try_end_53f} :catchall_999

    :goto_53f
    :try_start_53f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_602

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_548
    .catchall {:try_start_53f .. :try_end_548} :catchall_549

    goto :goto_53f

    :catchall_549
    move-exception v4

    move-object v7, v9

    :goto_54b
    if-eqz v5, :cond_550

    :try_start_54d
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_550
    if-eqz v7, :cond_555

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_555
    if-eqz v6, :cond_55a

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_55a
    throw v4
    :try_end_55b
    .catch Ljavax/net/ssl/SSLException; {:try_start_54d .. :try_end_55b} :catch_55b
    .catch Ljava/io/IOException; {:try_start_54d .. :try_end_55b} :catch_8d9
    .catch Lcom/nuance/connect/comm/TransactionException; {:try_start_54d .. :try_end_55b} :catch_8f3
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_54d .. :try_end_55b} :catch_90d
    .catch Ljava/lang/Exception; {:try_start_54d .. :try_end_55b} :catch_90f
    .catchall {:try_start_54d .. :try_end_55b} :catchall_5e

    :catch_55b
    move-exception v4

    :try_start_55c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "processCommand() - receive - SSLException "

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_575
    .catchall {:try_start_55c .. :try_end_575} :catchall_5e

    :sswitch_575
    :try_start_575
    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_580
    .catch Ljavax/net/ssl/SSLException; {:try_start_575 .. :try_end_580} :catch_281
    .catch Ljava/io/IOException; {:try_start_575 .. :try_end_580} :catch_4d8
    .catch Ljava/lang/NullPointerException; {:try_start_575 .. :try_end_580} :catch_580
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_575 .. :try_end_580} :catch_5a5
    .catch Ljava/lang/Exception; {:try_start_575 .. :try_end_580} :catch_5b2
    .catchall {:try_start_575 .. :try_end_580} :catchall_5e

    :catch_580
    move-exception v4

    :try_start_581
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "NPE trying to get response code "

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_59a
    .catchall {:try_start_581 .. :try_end_59a} :catchall_5e

    :sswitch_59a
    :try_start_59a
    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_5a5
    .catch Ljavax/net/ssl/SSLException; {:try_start_59a .. :try_end_5a5} :catch_281
    .catch Ljava/io/IOException; {:try_start_59a .. :try_end_5a5} :catch_4d8
    .catch Ljava/lang/NullPointerException; {:try_start_59a .. :try_end_5a5} :catch_580
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_59a .. :try_end_5a5} :catch_5a5
    .catch Ljava/lang/Exception; {:try_start_59a .. :try_end_5a5} :catch_5b2
    .catchall {:try_start_59a .. :try_end_5a5} :catchall_5e

    :catch_5a5
    move-exception v4

    :try_start_5a6
    throw v4
    :try_end_5a7
    .catchall {:try_start_5a6 .. :try_end_5a7} :catchall_5e

    :sswitch_5a7
    :try_start_5a7
    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_5b2
    .catch Ljavax/net/ssl/SSLException; {:try_start_5a7 .. :try_end_5b2} :catch_281
    .catch Ljava/io/IOException; {:try_start_5a7 .. :try_end_5b2} :catch_4d8
    .catch Ljava/lang/NullPointerException; {:try_start_5a7 .. :try_end_5b2} :catch_580
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_5a7 .. :try_end_5b2} :catch_5a5
    .catch Ljava/lang/Exception; {:try_start_5a7 .. :try_end_5b2} :catch_5b2
    .catchall {:try_start_5a7 .. :try_end_5b2} :catchall_5e

    :catch_5b2
    move-exception v4

    :try_start_5b3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Exception trying to get response code "

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_5cc
    .catchall {:try_start_5b3 .. :try_end_5cc} :catchall_5e

    :sswitch_5cc
    :try_start_5cc
    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5

    :sswitch_5d7
    const-string/jumbo v5, "Retry-After"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5df
    .catch Ljavax/net/ssl/SSLException; {:try_start_5cc .. :try_end_5df} :catch_281
    .catch Ljava/io/IOException; {:try_start_5cc .. :try_end_5df} :catch_4d8
    .catch Ljava/lang/NullPointerException; {:try_start_5cc .. :try_end_5df} :catch_580
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_5cc .. :try_end_5df} :catch_5a5
    .catch Ljava/lang/Exception; {:try_start_5cc .. :try_end_5df} :catch_5b2
    .catchall {:try_start_5cc .. :try_end_5df} :catchall_5e

    move-result-object v5

    :try_start_5e0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v25

    iput v5, v0, Lcom/nuance/connect/comm/Response;->delayedFor:I
    :try_end_5e8
    .catch Ljava/lang/NumberFormatException; {:try_start_5e0 .. :try_end_5e8} :catch_5fa
    .catch Ljavax/net/ssl/SSLException; {:try_start_5e0 .. :try_end_5e8} :catch_281
    .catch Ljava/io/IOException; {:try_start_5e0 .. :try_end_5e8} :catch_4d8
    .catch Ljava/lang/NullPointerException; {:try_start_5e0 .. :try_end_5e8} :catch_580
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_5e0 .. :try_end_5e8} :catch_5a5
    .catch Ljava/lang/Exception; {:try_start_5e0 .. :try_end_5e8} :catch_5b2
    .catchall {:try_start_5e0 .. :try_end_5e8} :catchall_5e

    :goto_5e8
    :try_start_5e8
    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v25

    iget v4, v0, Lcom/nuance/connect/comm/Response;->delayedFor:I

    invoke-virtual {v5, v4}, Lcom/nuance/connect/comm/IOConnectorException;->setDelaySeconds(I)V

    throw v5

    :catch_5fa
    move-exception v5

    sget v5, Lcom/nuance/connect/comm/CommandQueue;->MAX_DELAY_SECONDS:I

    move-object/from16 v0, v25

    iput v5, v0, Lcom/nuance/connect/comm/Response;->delayedFor:I
    :try_end_601
    .catch Ljavax/net/ssl/SSLException; {:try_start_5e8 .. :try_end_601} :catch_281
    .catch Ljava/io/IOException; {:try_start_5e8 .. :try_end_601} :catch_4d8
    .catch Ljava/lang/NullPointerException; {:try_start_5e8 .. :try_end_601} :catch_580
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_5e8 .. :try_end_601} :catch_5a5
    .catch Ljava/lang/Exception; {:try_start_5e8 .. :try_end_601} :catch_5b2
    .catchall {:try_start_5e8 .. :try_end_601} :catchall_5e

    goto :goto_5e8

    :cond_602
    :try_start_602
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, " JSON response begin"

    invoke-interface {v7, v8, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, " JSON response:"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v8, v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v4}, Lcom/nuance/connect/comm/HttpConnector;->processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;[B)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, " JSON response finish"

    invoke-interface {v7, v8, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_63f
    .catchall {:try_start_602 .. :try_end_63f} :catchall_549

    :goto_63f
    if-eqz v5, :cond_644

    :try_start_641
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_644
    if-eqz v9, :cond_649

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_649
    if-eqz v6, :cond_64e

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_64e
    .catch Ljavax/net/ssl/SSLException; {:try_start_641 .. :try_end_64e} :catch_55b
    .catch Ljava/io/IOException; {:try_start_641 .. :try_end_64e} :catch_8d9
    .catch Lcom/nuance/connect/comm/TransactionException; {:try_start_641 .. :try_end_64e} :catch_8f3
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_641 .. :try_end_64e} :catch_90d
    .catch Ljava/lang/Exception; {:try_start_641 .. :try_end_64e} :catch_90f
    .catchall {:try_start_641 .. :try_end_64e} :catchall_5e

    :cond_64e
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->complete()V

    if-eqz v16, :cond_656

    :try_start_653
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_656
    .catch Ljava/lang/Exception; {:try_start_653 .. :try_end_656} :catch_92c

    :cond_656
    :goto_656
    if-eqz v4, :cond_946

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "command processed successfully: "

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string/jumbo v8, "/"

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Lcom/nuance/connect/comm/ConnectorCallback;->onSuccess(Lcom/nuance/connect/comm/Command;)V

    :goto_676
    return v4

    :cond_677
    if-eqz v11, :cond_6cf

    :try_start_679
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "protobuff"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6cf

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_689
    .catchall {:try_start_679 .. :try_end_689} :catchall_78e

    move-result-object v9

    :try_start_68a
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v4, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v10, 0x400

    invoke-direct {v6, v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_699
    .catchall {:try_start_68a .. :try_end_699} :catchall_999

    :try_start_699
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x800

    invoke-direct {v4, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v7, 0x400

    new-array v7, v7, [B

    :goto_6a4
    invoke-virtual {v9, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6af

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_6a4

    :cond_6af
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, " protobuff response"

    invoke-interface {v7, v8, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v4}, Lcom/nuance/connect/comm/HttpConnector;->processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;[B)Z
    :try_end_6cc
    .catchall {:try_start_699 .. :try_end_6cc} :catchall_549

    move-result v4

    goto/16 :goto_63f

    :cond_6cf
    :try_start_6cf
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "text/plain"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_729

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_6df
    .catchall {:try_start_6cf .. :try_end_6df} :catchall_78e

    move-result-object v9

    :try_start_6e0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v10, v9, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v11, 0x400

    invoke-direct {v6, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_6f4
    .catchall {:try_start_6e0 .. :try_end_6f4} :catchall_999

    :goto_6f4
    :try_start_6f4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6fe

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6f4

    :cond_6fe
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, " text/plain response"

    invoke-interface {v7, v8, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v8, "status: "

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v4}, Lcom/nuance/connect/comm/HttpConnector;->processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;I)Z
    :try_end_726
    .catchall {:try_start_6f4 .. :try_end_726} :catchall_549

    move-result v4

    goto/16 :goto_63f

    :cond_729
    if-gtz v11, :cond_72e

    const/4 v12, -0x1

    if-ne v11, v12, :cond_8ad

    :cond_72e
    :try_start_72e
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/nuance/connect/comm/HttpConnector;->hasSufficientSpace(I)Z

    move-result v12

    if-eqz v12, :cond_8ad

    const-wide/16 v12, 0x0

    cmp-long v10, v22, v12

    if-lez v10, :cond_758

    if-eqz v9, :cond_758

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_744
    .catchall {:try_start_72e .. :try_end_744} :catchall_78e

    move-result v10

    if-eqz v10, :cond_758

    :try_start_747
    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_757
    .catch Ljava/lang/NumberFormatException; {:try_start_747 .. :try_end_757} :catch_782
    .catch Ljava/lang/NullPointerException; {:try_start_747 .. :try_end_757} :catch_796
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_747 .. :try_end_757} :catch_7a2
    .catchall {:try_start_747 .. :try_end_757} :catchall_78e

    move-result v4

    :cond_758
    :goto_758
    const-wide/16 v12, 0x0

    cmp-long v9, v22, v12

    if-lez v9, :cond_7ae

    int-to-long v12, v11

    cmp-long v9, v22, v12

    if-eqz v9, :cond_768

    int-to-long v12, v4

    cmp-long v4, v22, v12

    if-nez v4, :cond_7ae

    :cond_768
    :try_start_768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v8, "Download already complete!"

    invoke-interface {v4, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_772
    .catchall {:try_start_768 .. :try_end_772} :catchall_78e

    move-object/from16 v4, v17

    :goto_774
    :try_start_774
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v4}, Lcom/nuance/connect/comm/HttpConnector;->processFileResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;Ljava/io/File;)V
    :try_end_77d
    .catchall {:try_start_774 .. :try_end_77d} :catchall_9a3

    const/4 v4, 0x1

    move-object v9, v6

    move-object v6, v7

    goto/16 :goto_63f

    :catch_782
    move-exception v9

    :try_start_783
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, "Invalid range to get total from. NFE"

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_758

    :catchall_78e
    move-exception v4

    move-object/from16 v29, v7

    move-object v7, v6

    move-object/from16 v6, v29

    goto/16 :goto_54b

    :catch_796
    move-exception v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, "Invalid range to get total from. NPE"

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_758

    :catch_7a2
    move-exception v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, "Invalid substring?"

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_758

    :cond_7ae
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->notifyDownloadStatus:Z

    move/from16 v26, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    const/16 v20, 0x0

    move-wide/from16 v0, v22

    long-to-int v4, v0

    add-int v27, v11, v4

    div-int/lit8 v28, v27, 0x64

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, "Downloading file now. total size is: ["

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "]["

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string/jumbo v14, "] "

    move-object v15, v8

    invoke-interface/range {v9 .. v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v17, :cond_9c6

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/connect/comm/HttpConnector;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v8}, Lcom/nuance/connect/comm/MessageSendingBus;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/nuance/connect/comm/Transaction;->createDownloadFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_7f2
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7fb
    .catchall {:try_start_783 .. :try_end_7fb} :catchall_78e

    :try_start_7fb
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v9, v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v6, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_806
    .catchall {:try_start_7fb .. :try_end_806} :catchall_99e

    const/4 v5, 0x0

    move-wide/from16 v10, v18

    move/from16 v9, v20

    move/from16 v12, v21

    :goto_80d
    if-nez v5, :cond_8a3

    :try_start_80f
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    if-eqz v13, :cond_825

    new-instance v4, Lcom/nuance/connect/comm/TransactionCancelConnectorException;

    const-string/jumbo v5, "transaction cancelled."

    const/4 v9, 0x3

    invoke-direct {v4, v5, v9}, Lcom/nuance/connect/comm/TransactionCancelConnectorException;-><init>(Ljava/lang/String;I)V

    throw v4

    :catchall_81f
    move-exception v4

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_54b

    :cond_825
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_851

    invoke-virtual {v6, v13}, Ljava/io/BufferedOutputStream;->write(I)V

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v29, v5

    move v5, v9

    move/from16 v9, v29

    :goto_838
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v13

    if-eqz v13, :cond_858

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "network timed out"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "timeout occurred"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_851
    const/4 v5, 0x1

    move/from16 v29, v5

    move v5, v9

    move/from16 v9, v29

    goto :goto_838

    :cond_858
    if-eqz v26, :cond_87b

    if-nez v9, :cond_86b

    move/from16 v0, v28

    if-lt v5, v0, :cond_87b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v10

    const-wide/16 v18, 0x1f4

    cmp-long v13, v14, v18

    if-lez v13, :cond_87b

    :cond_86b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v5, v0, v12, v1}, Lcom/nuance/connect/comm/ConnectorCallback;->onDownloadStatus(Lcom/nuance/connect/comm/Command;II)V

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    :cond_87b
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->getInterval()I

    move-result v13

    rem-int v13, v12, v13

    if-nez v13, :cond_889

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->tick()V

    :cond_889
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/comm/HttpConnector;->connectionStatus:Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;

    invoke-interface {v13}, Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;->isConnected()Z

    move-result v13

    if-nez v13, :cond_89c

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Connection lost"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_89c
    move/from16 v29, v9

    move v9, v5

    move/from16 v5, v29

    goto/16 :goto_80d

    :cond_8a3
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8a9
    .catchall {:try_start_80f .. :try_end_8a9} :catchall_81f

    move-object v5, v6

    move-object v6, v8

    goto/16 :goto_774

    :cond_8ad
    if-gtz v11, :cond_8b2

    const/4 v4, -0x1

    if-ne v11, v4, :cond_8cf

    :cond_8b2
    :try_start_8b2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/nuance/connect/comm/HttpConnector;->hasSufficientSpace(I)Z

    move-result v4

    if-nez v4, :cond_8cf

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nuance/connect/comm/Command;->notifyDownloadStatus:Z

    if-eqz v4, :cond_9c1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    const/4 v8, -0x1

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v8, v11}, Lcom/nuance/connect/comm/ConnectorCallback;->onDownloadStatus(Lcom/nuance/connect/comm/Command;II)V

    move-object v9, v6

    move v4, v10

    move-object v6, v7

    goto/16 :goto_63f

    :cond_8cf
    new-instance v4, Lcom/nuance/connect/comm/IOConnectorException;

    const-string/jumbo v8, "Unable to process response"

    const/4 v9, 0x2

    invoke-direct {v4, v8, v9}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_8d9
    .catchall {:try_start_8b2 .. :try_end_8d9} :catchall_78e

    :catch_8d9
    move-exception v4

    :try_start_8da
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "processCommand() - receive - IOException "

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5

    :catch_8f3
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "processCommand() - receive - TransactionException "

    invoke-virtual {v4}, Lcom/nuance/connect/comm/TransactionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Lcom/nuance/connect/comm/TransactionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5

    :catch_90d
    move-exception v4

    throw v4

    :catch_90f
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "processCommand() - receive - Exception "

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_92c
    .catchall {:try_start_8da .. :try_end_92c} :catchall_5e

    :catch_92c
    move-exception v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Exception closing server connection."

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto/16 :goto_656

    :catch_939
    move-exception v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Exception closing server connection."

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto/16 :goto_67

    :cond_946
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_976

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "ioException processing command, command is requesting to handle ioException: "

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string/jumbo v7, "/"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    const-string/jumbo v9, " expirer.isExpired(): "

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface/range {v4 .. v10}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lcom/nuance/connect/comm/IOConnectorException;

    const-string/jumbo v5, "Expirer has expired."

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_976
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "command process failed: "

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string/jumbo v8, "/"

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v5, v0, v6, v1}, Lcom/nuance/connect/comm/ConnectorCallback;->onFailure(Lcom/nuance/connect/comm/Command;ILjava/lang/String;)V

    goto/16 :goto_676

    :catchall_999
    move-exception v4

    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_54b

    :catchall_99e
    move-exception v4

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_54b

    :catchall_9a3
    move-exception v4

    move-object/from16 v29, v7

    move-object v7, v6

    move-object/from16 v6, v29

    goto/16 :goto_54b

    :catchall_9ab
    move-exception v4

    move-object v5, v6

    goto/16 :goto_43c

    :catchall_9af
    move-exception v4

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_379

    :catchall_9b4
    move-exception v4

    move-object v6, v7

    goto/16 :goto_379

    :catchall_9b8
    move-exception v4

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_2a1

    :catchall_9bd
    move-exception v4

    move-object v6, v7

    goto/16 :goto_2a1

    :cond_9c1
    move-object v9, v6

    move v4, v10

    move-object v6, v7

    goto/16 :goto_63f

    :cond_9c6
    move-object/from16 v4, v17

    goto/16 :goto_7f2

    :cond_9ca
    move-wide v4, v6

    goto/16 :goto_cd

    :cond_9cd
    move-wide/from16 v22, v6

    goto/16 :goto_102

    nop

    :sswitch_data_9d2
    .sparse-switch
        0xc8 -> :sswitch_4fc
        0xce -> :sswitch_4c6
        0x190 -> :sswitch_59a
        0x193 -> :sswitch_59a
        0x194 -> :sswitch_59a
        0x196 -> :sswitch_59a
        0x198 -> :sswitch_575
        0x1a0 -> :sswitch_4f2
        0x1f4 -> :sswitch_5a7
        0x1f5 -> :sswitch_5cc
        0x1f6 -> :sswitch_5a7
        0x1f7 -> :sswitch_5d7
        0x1f8 -> :sswitch_5a7
        0x1f9 -> :sswitch_5cc
    .end sparse-switch
.end method

.method public setServerURL(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/comm/HttpConnector;->serverURL:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized updateMinimumSSLProtocol(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "updateMinimumSSLProtocol: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/comm/HttpConnector;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
