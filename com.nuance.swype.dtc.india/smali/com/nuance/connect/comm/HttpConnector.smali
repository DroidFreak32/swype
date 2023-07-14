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
    .locals 6

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
    .locals 30
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

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->serverURL:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/nuance/connect/comm/HttpConnector;->connectToUrl(Ljava/lang/String;Lcom/nuance/connect/comm/Command;)Ljava/net/HttpURLConnection;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v4, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "processCommand() - could not find a compatible SSL protocol"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v4, Lcom/nuance/connect/comm/IOConnectorException;

    const-string/jumbo v5, "Could not find a compatible SSL protocol"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v4

    :try_start_1
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->complete()V

    if-eqz v16, :cond_0

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_17

    :cond_0
    :goto_0
    throw v4

    :cond_1
    :try_start_3
    move-object/from16 v0, v16

    instance-of v4, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_2

    move-object/from16 v0, v16

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2
    const-string/jumbo v4, "http.keepAlive"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/connect/comm/HttpConnector;->delayTimeoutSeconds:I

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/connect/comm/HttpConnector;->delayTimeoutSeconds:I

    :goto_1
    if-gtz v4, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/comm/Transaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v5

    sget-object v9, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {v5, v9}, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_3
    :goto_2
    mul-int/lit16 v4, v4, 0x3e8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3c

    new-instance v17, Ljava/io/File;

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

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

    :cond_4
    move-wide/from16 v22, v4

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/connect/comm/HttpConnector;->allowsOutput()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->method:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->extraHeaders:Ljava/util/Map;

    if-eqz v4, :cond_8

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->extraHeaders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

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
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v4

    :try_start_4
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
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_7
    const/16 v4, 0x78

    goto/16 :goto_2

    :cond_8
    :try_start_5
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

    if-eqz v4, :cond_f

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    if-eqz v4, :cond_f

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

    if-nez v5, :cond_9

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "File does not exists!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    move-exception v4

    :try_start_6
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
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_9
    const/4 v5, 0x1

    :try_start_7
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

    if-eqz v5, :cond_a

    const-string/jumbo v5, "X-Swype-Connect"

    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/nuance/connect/comm/HttpConnector;->generateBody(Lcom/nuance/connect/comm/Command;)[B

    move-result-object v7

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v6, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v7

    :try_start_9
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x1000

    invoke-direct {v5, v9, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_e

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    :goto_6
    if-ltz v4, :cond_b

    invoke-virtual {v7, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    goto :goto_6

    :cond_b
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_f

    if-eqz v7, :cond_c

    :try_start_b
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_c
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "sendingFile() --- "

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-wide v4, v12

    :goto_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v4, v5}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->writeRequest(Lcom/nuance/connect/comm/Command;J)V

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->tick()V

    new-instance v25, Lcom/nuance/connect/comm/Response;

    invoke-direct/range {v25 .. v25}, Lcom/nuance/connect/comm/Response;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "serverConn.getResponseCode("

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v9, ") command: "

    invoke-interface {v5, v6, v7, v9, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sparse-switch v4, :sswitch_data_0

    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_b
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_3
    move-exception v4

    :try_start_e
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
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_1
    move-exception v4

    move-object/from16 v29, v6

    move-object v6, v5

    move-object/from16 v5, v29

    :goto_8
    if-eqz v6, :cond_d

    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    :cond_e
    throw v4
    :try_end_f
    .catch Ljavax/net/ssl/SSLException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catch_4
    move-exception v4

    :try_start_10
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
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_f
    :try_start_11
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nuance/connect/comm/Command;->hasBody:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    if-eqz v4, :cond_14

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_10

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "File does not exists!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_11
    .catch Ljavax/net/ssl/SSLException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :catch_5
    move-exception v4

    :try_start_12
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
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_10
    const/4 v5, 0x1

    :try_start_13
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
    :try_end_13
    .catch Ljavax/net/ssl/SSLException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v9

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v14, 0x0

    :try_start_14
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    :try_start_15
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :try_start_16
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    :cond_11
    if-ltz v4, :cond_13

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

    if-nez v7, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->tick()V

    :cond_12
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v7

    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "network timed out"

    invoke-interface {v4, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v7, "timeout occurred"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :catchall_2
    move-exception v4

    :goto_9
    :try_start_17
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    throw v4
    :try_end_17
    .catch Ljavax/net/ssl/SSLException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :catch_6
    move-exception v4

    :try_start_18
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
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_13
    :try_start_19
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :try_start_1a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    move-wide v4, v12

    goto/16 :goto_7

    :cond_14
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nuance/connect/comm/Command;->hasBody:Z

    if-eqz v4, :cond_15

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

    if-eqz v4, :cond_18

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
    :try_end_1a
    .catch Ljavax/net/ssl/SSLException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1a .. :try_end_1a} :catch_4
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    const/4 v6, 0x0

    :try_start_1b
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v5, v7, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    :try_start_1c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v6, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    if-ne v4, v6, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/nuance/connect/comm/HttpConnector;->writeProtocolBufferBody(Lcom/nuance/connect/comm/Command;Ljava/io/OutputStream;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :goto_a
    :try_start_1d
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v7}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->close()V

    invoke-virtual {v7}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size()J

    move-result-wide v12

    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "["

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "]sendingBody() --- "

    const-string/jumbo v9, " --- "

    invoke-interface/range {v4 .. v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1d .. :try_end_1d} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_1d} :catch_4
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :cond_15
    move-wide v4, v12

    goto/16 :goto_7

    :cond_16
    :try_start_1e
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
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v4

    :goto_c
    if-eqz v5, :cond_17

    :try_start_1f
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_17
    invoke-virtual {v7}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->close()V

    invoke-virtual {v7}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size()J

    throw v4
    :try_end_1f
    .catch Ljavax/net/ssl/SSLException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1f .. :try_end_1f} :catch_4
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :catch_7
    move-exception v4

    :try_start_20
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
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    :cond_18
    :try_start_21
    new-instance v5, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_21
    .catch Ljavax/net/ssl/SSLException; {:try_start_21 .. :try_end_21} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_21 .. :try_end_21} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_21 .. :try_end_21} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_21 .. :try_end_21} :catch_4
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_7
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :try_start_22
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v6, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    if-ne v4, v6, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/nuance/connect/comm/HttpConnector;->writeProtocolBufferBody(Lcom/nuance/connect/comm/Command;Ljava/io/OutputStream;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    :goto_d
    :try_start_23
    invoke-virtual {v5}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->close()V

    invoke-virtual {v5}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size()J
    :try_end_23
    .catch Ljavax/net/ssl/SSLException; {:try_start_23 .. :try_end_23} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_23 .. :try_end_23} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_23 .. :try_end_23} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_23 .. :try_end_23} :catch_4
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_23} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_7
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_8
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    move-result-wide v12

    goto :goto_b

    :cond_19
    :try_start_24
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
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v4

    :try_start_25
    invoke-virtual {v5}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->close()V

    invoke-virtual {v5}, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size()J

    throw v4
    :try_end_25
    .catch Ljavax/net/ssl/SSLException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_25 .. :try_end_25} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_25 .. :try_end_25} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_25 .. :try_end_25} :catch_4
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_7
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_8
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    :catch_8
    move-exception v4

    :try_start_26
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
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    :sswitch_0
    const-wide/16 v6, 0x0

    cmp-long v5, v22, v6

    if-gtz v5, :cond_1a

    :try_start_27
    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_27
    .catch Ljavax/net/ssl/SSLException; {:try_start_27 .. :try_end_27} :catch_3
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_27} :catch_b
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_27 .. :try_end_27} :catch_c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_d
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    :catch_9
    move-exception v4

    :try_start_28
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
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    :sswitch_1
    :try_start_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "HTTP_INVALID_RANGE the file may already be downloaded"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljavax/net/ssl/SSLException; {:try_start_29 .. :try_end_29} :catch_3
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_29} :catch_b
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_29 .. :try_end_29} :catch_c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_d
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    :cond_1a
    :sswitch_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    :try_start_2a
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

    if-eqz v11, :cond_23

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "json"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_6

    move-result-object v9

    :try_start_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v10, v9, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v11, 0x400

    invoke-direct {v6, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_8

    :goto_e
    :try_start_2c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v4

    move-object v7, v9

    :goto_f
    if-eqz v5, :cond_1b

    :try_start_2d
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1b
    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_1c
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_1d
    throw v4
    :try_end_2d
    .catch Ljavax/net/ssl/SSLException; {:try_start_2d .. :try_end_2d} :catch_a
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_12
    .catch Lcom/nuance/connect/comm/TransactionException; {:try_start_2d .. :try_end_2d} :catch_13
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_2d .. :try_end_2d} :catch_14
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_15
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    :catch_a
    move-exception v4

    :try_start_2e
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
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    :sswitch_3
    :try_start_2f
    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_2f
    .catch Ljavax/net/ssl/SSLException; {:try_start_2f .. :try_end_2f} :catch_3
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_2f} :catch_b
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_2f .. :try_end_2f} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_d
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    :catch_b
    move-exception v4

    :try_start_30
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
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    :sswitch_4
    :try_start_31
    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_31
    .catch Ljavax/net/ssl/SSLException; {:try_start_31 .. :try_end_31} :catch_3
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_31} :catch_b
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_31 .. :try_end_31} :catch_c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_d
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    :catch_c
    move-exception v4

    :try_start_32
    throw v4
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    :sswitch_5
    :try_start_33
    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_33
    .catch Ljavax/net/ssl/SSLException; {:try_start_33 .. :try_end_33} :catch_3
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_33} :catch_b
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_33 .. :try_end_33} :catch_c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_d
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    :catch_d
    move-exception v4

    :try_start_34
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
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    :sswitch_6
    :try_start_35
    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v5

    :sswitch_7
    const-string/jumbo v5, "Retry-After"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catch Ljavax/net/ssl/SSLException; {:try_start_35 .. :try_end_35} :catch_3
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_35} :catch_b
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_35 .. :try_end_35} :catch_c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_d
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    move-result-object v5

    :try_start_36
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v25

    iput v5, v0, Lcom/nuance/connect/comm/Response;->delayedFor:I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_36} :catch_e
    .catch Ljavax/net/ssl/SSLException; {:try_start_36 .. :try_end_36} :catch_3
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_36} :catch_b
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_36 .. :try_end_36} :catch_c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_d
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    :goto_10
    :try_start_37
    new-instance v5, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    invoke-direct {v5, v4, v6}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v25

    iget v4, v0, Lcom/nuance/connect/comm/Response;->delayedFor:I

    invoke-virtual {v5, v4}, Lcom/nuance/connect/comm/IOConnectorException;->setDelaySeconds(I)V

    throw v5

    :catch_e
    move-exception v5

    sget v5, Lcom/nuance/connect/comm/CommandQueue;->MAX_DELAY_SECONDS:I

    move-object/from16 v0, v25

    iput v5, v0, Lcom/nuance/connect/comm/Response;->delayedFor:I
    :try_end_37
    .catch Ljavax/net/ssl/SSLException; {:try_start_37 .. :try_end_37} :catch_3
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_37} :catch_b
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_37 .. :try_end_37} :catch_c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_d
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    goto :goto_10

    :cond_1e
    :try_start_38
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
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_5

    :goto_11
    if-eqz v5, :cond_1f

    :try_start_39
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1f
    if-eqz v9, :cond_20

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_20
    if-eqz v6, :cond_21

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljavax/net/ssl/SSLException; {:try_start_39 .. :try_end_39} :catch_a
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_12
    .catch Lcom/nuance/connect/comm/TransactionException; {:try_start_39 .. :try_end_39} :catch_13
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_39 .. :try_end_39} :catch_14
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_15
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    :cond_21
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->complete()V

    if-eqz v16, :cond_22

    :try_start_3a
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_16

    :cond_22
    :goto_12
    if-eqz v4, :cond_37

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

    :goto_13
    return v4

    :cond_23
    if-eqz v11, :cond_25

    :try_start_3b
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "protobuff"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_25

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_6

    move-result-object v9

    :try_start_3c
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v4, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v10, 0x400

    invoke-direct {v6, v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_8

    :try_start_3d
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x800

    invoke-direct {v4, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v7, 0x400

    new-array v7, v7, [B

    :goto_14
    invoke-virtual {v9, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_24

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_14

    :cond_24
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
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_5

    move-result v4

    goto/16 :goto_11

    :cond_25
    :try_start_3e
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "text/plain"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_6

    move-result-object v9

    :try_start_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v10, v9, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v11, 0x400

    invoke-direct {v6, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_8

    :goto_15
    :try_start_40
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_26

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_26
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
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_5

    move-result v4

    goto/16 :goto_11

    :cond_27
    if-gtz v11, :cond_28

    const/4 v12, -0x1

    if-ne v11, v12, :cond_34

    :cond_28
    :try_start_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/nuance/connect/comm/HttpConnector;->hasSufficientSpace(I)Z

    move-result v12

    if-eqz v12, :cond_34

    const-wide/16 v12, 0x0

    cmp-long v10, v22, v12

    if-lez v10, :cond_29

    if-eqz v9, :cond_29

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_6

    move-result v10

    if-eqz v10, :cond_29

    :try_start_42
    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_42} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_42 .. :try_end_42} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_42} :catch_11
    .catchall {:try_start_42 .. :try_end_42} :catchall_6

    move-result v4

    :cond_29
    :goto_16
    const-wide/16 v12, 0x0

    cmp-long v9, v22, v12

    if-lez v9, :cond_2b

    int-to-long v12, v11

    cmp-long v9, v22, v12

    if-eqz v9, :cond_2a

    int-to-long v12, v4

    cmp-long v4, v22, v12

    if-nez v4, :cond_2b

    :cond_2a
    :try_start_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v8, "Download already complete!"

    invoke-interface {v4, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_6

    move-object/from16 v4, v17

    :goto_17
    :try_start_44
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v4}, Lcom/nuance/connect/comm/HttpConnector;->processFileResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;Ljava/io/File;)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_a

    const/4 v4, 0x1

    move-object v9, v6

    move-object v6, v7

    goto/16 :goto_11

    :catch_f
    move-exception v9

    :try_start_45
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, "Invalid range to get total from. NFE"

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_16

    :catchall_6
    move-exception v4

    move-object/from16 v29, v7

    move-object v7, v6

    move-object/from16 v6, v29

    goto/16 :goto_f

    :catch_10
    move-exception v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, "Invalid range to get total from. NPE"

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_16

    :catch_11
    move-exception v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, "Invalid substring?"

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_16

    :cond_2b
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

    if-nez v17, :cond_3a

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/connect/comm/HttpConnector;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v8}, Lcom/nuance/connect/comm/MessageSendingBus;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/nuance/connect/comm/Transaction;->createDownloadFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_18
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_6

    :try_start_46
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v9, v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v6, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_9

    const/4 v5, 0x0

    move-wide/from16 v10, v18

    move/from16 v9, v20

    move/from16 v12, v21

    :goto_19
    if-nez v5, :cond_33

    :try_start_47
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    if-eqz v13, :cond_2c

    new-instance v4, Lcom/nuance/connect/comm/TransactionCancelConnectorException;

    const-string/jumbo v5, "transaction cancelled."

    const/4 v9, 0x3

    invoke-direct {v4, v5, v9}, Lcom/nuance/connect/comm/TransactionCancelConnectorException;-><init>(Ljava/lang/String;I)V

    throw v4

    :catchall_7
    move-exception v4

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_f

    :cond_2c
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2d

    invoke-virtual {v6, v13}, Ljava/io/BufferedOutputStream;->write(I)V

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v29, v5

    move v5, v9

    move/from16 v9, v29

    :goto_1a
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v13

    if-eqz v13, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "network timed out"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "timeout occurred"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2d
    const/4 v5, 0x1

    move/from16 v29, v5

    move v5, v9

    move/from16 v9, v29

    goto :goto_1a

    :cond_2e
    if-eqz v26, :cond_30

    if-nez v9, :cond_2f

    move/from16 v0, v28

    if-lt v5, v0, :cond_30

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v10

    const-wide/16 v18, 0x1f4

    cmp-long v13, v14, v18

    if-lez v13, :cond_30

    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v5, v0, v12, v1}, Lcom/nuance/connect/comm/ConnectorCallback;->onDownloadStatus(Lcom/nuance/connect/comm/Command;II)V

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    :cond_30
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->getInterval()I

    move-result v13

    rem-int v13, v12, v13

    if-nez v13, :cond_31

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->tick()V

    :cond_31
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/comm/HttpConnector;->connectionStatus:Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;

    invoke-interface {v13}, Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;->isConnected()Z

    move-result v13

    if-nez v13, :cond_32

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Connection lost"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_32
    move/from16 v29, v9

    move v9, v5

    move/from16 v5, v29

    goto/16 :goto_19

    :cond_33
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_7

    move-object v5, v6

    move-object v6, v8

    goto/16 :goto_17

    :cond_34
    if-gtz v11, :cond_35

    const/4 v4, -0x1

    if-ne v11, v4, :cond_36

    :cond_35
    :try_start_48
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/nuance/connect/comm/HttpConnector;->hasSufficientSpace(I)Z

    move-result v4

    if-nez v4, :cond_36

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nuance/connect/comm/Command;->notifyDownloadStatus:Z

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    const/4 v8, -0x1

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v8, v11}, Lcom/nuance/connect/comm/ConnectorCallback;->onDownloadStatus(Lcom/nuance/connect/comm/Command;II)V

    move-object v9, v6

    move v4, v10

    move-object v6, v7

    goto/16 :goto_11

    :cond_36
    new-instance v4, Lcom/nuance/connect/comm/IOConnectorException;

    const-string/jumbo v8, "Unable to process response"

    const/4 v9, 0x2

    invoke-direct {v4, v8, v9}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_6

    :catch_12
    move-exception v4

    :try_start_49
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

    :catch_13
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

    :catch_14
    move-exception v4

    throw v4

    :catch_15
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
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_0

    :catch_16
    move-exception v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Exception closing server connection."

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto/16 :goto_12

    :catch_17
    move-exception v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Exception closing server connection."

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_37
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_38

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

    :cond_38
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

    goto/16 :goto_13

    :catchall_8
    move-exception v4

    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_f

    :catchall_9
    move-exception v4

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_f

    :catchall_a
    move-exception v4

    move-object/from16 v29, v7

    move-object v7, v6

    move-object/from16 v6, v29

    goto/16 :goto_f

    :catchall_b
    move-exception v4

    move-object v5, v6

    goto/16 :goto_c

    :catchall_c
    move-exception v4

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_9

    :catchall_d
    move-exception v4

    move-object v6, v7

    goto/16 :goto_9

    :catchall_e
    move-exception v4

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_8

    :catchall_f
    move-exception v4

    move-object v6, v7

    goto/16 :goto_8

    :cond_39
    move-object v9, v6

    move v4, v10

    move-object v6, v7

    goto/16 :goto_11

    :cond_3a
    move-object/from16 v4, v17

    goto/16 :goto_18

    :cond_3b
    move-wide v4, v6

    goto/16 :goto_3

    :cond_3c
    move-wide/from16 v22, v6

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0xce -> :sswitch_0
        0x190 -> :sswitch_4
        0x193 -> :sswitch_4
        0x194 -> :sswitch_4
        0x196 -> :sswitch_4
        0x198 -> :sswitch_3
        0x1a0 -> :sswitch_1
        0x1f4 -> :sswitch_5
        0x1f5 -> :sswitch_6
        0x1f6 -> :sswitch_5
        0x1f7 -> :sswitch_7
        0x1f8 -> :sswitch_5
        0x1f9 -> :sswitch_6
    .end sparse-switch
.end method

.method public setServerURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/comm/HttpConnector;->serverURL:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized updateMinimumSSLProtocol(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "updateMinimumSSLProtocol: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/comm/HttpConnector;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
