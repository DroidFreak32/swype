.class public Lcom/nuance/connect/comm/HttpPersistentConnector;
.super Lcom/nuance/connect/comm/Connector;


# static fields
.field private static final MAX_ERROR_BODY_SIZE:I = 0x3e8


# instance fields
.field private connected:Z

.field private connectionTimeoutMillis:I

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

.field private readTimeoutMillis:I

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/comm/ConnectorCallback;Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

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

    iput-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-boolean v6, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    iput v6, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connectionTimeoutMillis:I

    iput v6, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->readTimeoutMillis:I

    invoke-virtual {p0, p5}, Lcom/nuance/connect/comm/HttpPersistentConnector;->updateMinimumSSLProtocol(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->setCompressionThreshold(I)V

    return-void
.end method

.method private connectToUrl()Ljava/net/HttpURLConnection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v8, Ljava/net/URL;

    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-virtual {v1}, Lcom/nuance/connect/comm/PersistantConnectionConfig;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "connectToUrl url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v8}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v8

    :goto_0
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Could not set up the SSL protocol"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    new-instance v1, Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    goto :goto_0

    :cond_0
    :try_start_2
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    iget-object v3, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    goto :goto_1
.end method

.method private getErrorBody(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v5, 0x400

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "getErrorBody() - error status message: "

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_2
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getErrorBody() - generating error body - Exception "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getErrorBody() - error body is too long: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public connect()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "connect() connected="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "connect - unable to connect"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected declared-synchronized createConnection()Ljava/net/HttpURLConnection;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "createConnection called"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "createConnection -- creating new connection"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->connectToUrl()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string/jumbo v2, "Connection"

    const-string/jumbo v3, "Keep-Alive"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connectionTimeoutMillis:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->readTimeoutMillis:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->allowsOutput()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string/jumbo v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error Creating Connection: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error Creating Connection: "

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error Creating Connection: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroyConnection()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    invoke-interface {v0}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->flush()V

    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "HttpPersistentConnector disconnect"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method

.method protected isConnected()Z
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "isConnected() - "

    iget-boolean v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    return v0
.end method

.method public processCommand(Lcom/nuance/connect/comm/Command;Lcom/nuance/connect/comm/Transaction;Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/comm/ConnectorException;
        }
    .end annotation

    const/4 v11, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x2

    invoke-virtual {p1}, Lcom/nuance/connect/comm/Command;->shortString()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    invoke-interface {v1}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->mark()V

    :try_start_0
    iget-boolean v1, p1, Lcom/nuance/connect/comm/Command;->canceled:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/nuance/connect/comm/TransactionCancelConnectorException;

    const-string/jumbo v1, "transaction cancelled."

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/comm/TransactionCancelConnectorException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "processCommand() - send - SSLException "

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-direct {v1, v0, v3}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_1
    invoke-virtual {p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->complete()V

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12

    :cond_0
    :goto_2
    throw v0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->createConnection()Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v3

    :try_start_4
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "processCommand()  URL: ["

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    const-string/jumbo v7, "]"

    invoke-interface {v1, v4, v5, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    iget-boolean v1, p1, Lcom/nuance/connect/comm/Command;->hasBody:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/nuance/connect/comm/HttpPersistentConnector;->generateBody(Lcom/nuance/connect/comm/Command;)[B

    move-result-object v7

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {p1}, Lcom/nuance/connect/comm/Command;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v7

    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/nuance/connect/comm/HttpPersistentConnector;->shouldCompress(J)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v8, "Compressing Content"

    invoke-interface {v1, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v1, "Content-Encoding"

    const-string/jumbo v8, "gzip"

    invoke-virtual {v3, v1, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v8

    :try_start_5
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v8, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v1, v7}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_2
    :goto_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    invoke-interface {v1, p1, v4, v5}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->writeRequest(Lcom/nuance/connect/comm/Command;J)V
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_7 .. :try_end_7} :catch_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_13
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->tick()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iget-object v4, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "serverConn.getResponseCode("

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, ") command: "

    invoke-interface {v4, v5, v7, v8, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sparse-switch v1, :sswitch_data_0

    invoke-direct {p0, v3}, Lcom/nuance/connect/comm/HttpPersistentConnector;->getErrorBody(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/nuance/connect/comm/IOConnectorException;

    if-eqz v0, :cond_5

    :goto_4
    const/4 v1, 0x2

    invoke-direct {v2, v0, v1}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_1
    move-exception v0

    :try_start_a
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "SSLException trying to get response code "

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_3

    :try_start_b
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    throw v0

    :catch_2
    move-exception v0

    move-object v2, v3

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v8, "Writing to output stream"

    invoke-interface {v1, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_15
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_b .. :try_end_b} :catch_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_13
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_6
    :try_start_c
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "processCommand() - send - ProtocolException "

    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_4
    move-exception v0

    move-object v3, v2

    :goto_7
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "processCommand() - send - MalformedURLException "

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_5
    move-exception v0

    move-object v3, v2

    :goto_8
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "processCommand() - send - IOException "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_6
    move-exception v0

    move-object v3, v2

    :goto_9
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "processCommand() - send - NullPointerException "

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_7
    move-exception v0

    move-object v3, v2

    :goto_a
    throw v0

    :catch_8
    move-exception v0

    move-object v3, v2

    :goto_b
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "processCommand() - send - Exception "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :sswitch_0
    :try_start_d
    new-instance v0, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_a
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catch_9
    move-exception v0

    :try_start_e
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "IOException trying to get response code "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_5
    :try_start_f
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_f
    .catch Ljavax/net/ssl/SSLException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_a
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v0

    goto/16 :goto_4

    :catch_a
    move-exception v0

    :try_start_10
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "NPE trying to get response code "

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_b
    move-exception v0

    throw v0

    :catch_c
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Exception trying to get response code "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1

    :sswitch_1
    new-instance v1, Lcom/nuance/connect/comm/Response;

    invoke-direct {v1}, Lcom/nuance/connect/comm/Response;-><init>()V

    const/4 v4, -0x1

    iput v4, v1, Lcom/nuance/connect/comm/Response;->delayedFor:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    int-to-long v8, v4

    invoke-interface {v5, p1, v8, v9}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->writeResponse(Lcom/nuance/connect/comm/Command;J)V

    iget-object v5, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, " Response Content Type: "

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v4, :cond_e

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->dataResponse:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v5, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->JSON:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->dataResponse:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v5, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_6
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_c
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v11, :cond_8

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    if-eqz v2, :cond_7

    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v0
    :try_end_12
    .catch Ljavax/net/ssl/SSLException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :catch_d
    move-exception v0

    :try_start_13
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "processCommand() - receive - SSLException "

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_8
    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v1, p1, v4}, Lcom/nuance/connect/comm/HttpPersistentConnector;->processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;[B)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-result v1

    :goto_d
    if-eqz v2, :cond_9

    :try_start_15
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljavax/net/ssl/SSLException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_9
    invoke-virtual {p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->complete()V

    if-eqz v3, :cond_a

    :try_start_16
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_11

    :cond_a
    :goto_e
    if-nez v1, :cond_d

    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v2, p1}, Lcom/nuance/connect/comm/ConnectorCallback;->onSuccess(Lcom/nuance/connect/comm/Command;)V

    :cond_b
    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    :catch_e
    move-exception v0

    :try_start_17
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "processCommand() - receive - IOException "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_f
    move-exception v0

    throw v0

    :catch_10
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "processCommand() - receive - Exception "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :catch_11
    move-exception v2

    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Exception closing server connection."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto :goto_e

    :catch_12
    move-exception v1

    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Exception closing server connection."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v0, Lcom/nuance/connect/comm/IOConnectorException;

    const-string/jumbo v1, "Expirer has expired."

    invoke-direct {v0, v1, v10}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto/16 :goto_1

    :catch_13
    move-exception v0

    goto/16 :goto_b

    :catch_14
    move-exception v0

    goto/16 :goto_a

    :catch_15
    move-exception v0

    goto/16 :goto_9

    :catch_16
    move-exception v0

    goto/16 :goto_8

    :catch_17
    move-exception v0

    goto/16 :goto_7

    :catch_18
    move-exception v0

    move-object v3, v2

    goto/16 :goto_6

    :catchall_5
    move-exception v0

    goto/16 :goto_5

    :cond_e
    move v1, v0

    goto/16 :goto_d

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x193 -> :sswitch_0
        0x196 -> :sswitch_0
    .end sparse-switch
.end method

.method public setPersistentConfig(Lcom/nuance/connect/comm/PersistantConnectionConfig;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->disconnect()V

    :cond_0
    iput-object p1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/PersistantConnectionConfig;->getCompressionThreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->setCompressionThreshold(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->connect()V

    :cond_1
    return-void
.end method

.method public declared-synchronized updateMinimumSSLProtocol(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "updateMinimumSSLProtocol: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
