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
    .registers 14

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
    .registers 10
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

    :try_start_24
    invoke-virtual {v8}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_27
    .catch Ljava/net/URISyntaxException; {:try_start_24 .. :try_end_27} :catch_4c

    move-object v1, v8

    :goto_28
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    monitor-enter p0

    :try_start_3c
    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_73

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Could not set up the SSL protocol"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_49
    move-exception v1

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_49

    throw v1

    :catch_4c
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

    goto :goto_28

    :cond_73
    :try_start_73
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    iget-object v3, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_49

    :goto_7d
    return-object v1

    :cond_7e
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    goto :goto_7d
.end method

.method private getErrorBody(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    if-lez v0, :cond_5f

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_5f

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_50

    move-result-object v3

    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v5, 0x400

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_43

    :try_start_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "getErrorBody() - error status message: "

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_6c

    move-result-object v0

    if-eqz v3, :cond_3f

    :try_start_3c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_42
    return-object v0

    :catchall_43
    move-exception v0

    move-object v2, v1

    :goto_45
    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4a
    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_4f
    throw v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_50} :catch_50

    :catch_50
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getErrorBody() - generating error body - Exception "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5d
    move-object v0, v1

    goto :goto_42

    :cond_5f
    :try_start_5f
    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getErrorBody() - error body is too long: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6b} :catch_50

    goto :goto_5d

    :catchall_6c
    move-exception v0

    goto :goto_45
.end method


# virtual methods
.method public connect()V
    .registers 4

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

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "connect - unable to connect"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_30

    goto :goto_29

    :catch_2e
    move-exception v0

    goto :goto_29

    :catch_30
    move-exception v0

    goto :goto_29
.end method

.method protected declared-synchronized createConnection()Ljava/net/HttpURLConnection;
    .registers 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "createConnection called"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "createConnection -- creating new connection"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_74

    :try_start_12
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

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_33
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string/jumbo v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_45} :catch_47
    .catch Ljava/net/URISyntaxException; {:try_start_12 .. :try_end_45} :catch_56
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_45} :catch_65
    .catchall {:try_start_12 .. :try_end_45} :catchall_74

    :goto_45
    monitor-exit p0

    return-object v0

    :catch_47
    move-exception v0

    :try_start_48
    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error Creating Connection: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_45

    :catch_56
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error Creating Connection: "

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_45

    :catch_65
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error Creating Connection: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_48 .. :try_end_72} :catchall_74

    move-object v0, v1

    goto :goto_45

    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroyConnection()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    invoke-interface {v0}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->flush()V

    return-void
.end method

.method public disconnect()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "HttpPersistentConnector disconnect"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method

.method protected isConnected()Z
    .registers 4

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
    .registers 16
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

    :try_start_d
    iget-boolean v1, p1, Lcom/nuance/connect/comm/Command;->canceled:Z

    if-eqz v1, :cond_3e

    new-instance v0, Lcom/nuance/connect/comm/TransactionCancelConnectorException;

    const-string/jumbo v1, "transaction cancelled."

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/comm/TransactionCancelConnectorException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1b
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_1b} :catch_1b
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_1b} :catch_2d1
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_1b} :catch_118
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1b} :catch_131
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1b} :catch_14a
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_d .. :try_end_1b} :catch_163
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_166
    .catchall {:try_start_d .. :try_end_1b} :catchall_2be

    :catch_1b
    move-exception v0

    :goto_1c
    :try_start_1c
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
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    move-object v3, v2

    :goto_35
    invoke-virtual {p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->complete()V

    if-eqz v3, :cond_3d

    :try_start_3a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_2a4

    :cond_3d
    :goto_3d
    throw v0

    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->createConnection()Ljava/net/HttpURLConnection;
    :try_end_41
    .catch Ljavax/net/ssl/SSLException; {:try_start_3e .. :try_end_41} :catch_1b
    .catch Ljava/net/ProtocolException; {:try_start_3e .. :try_end_41} :catch_2d1
    .catch Ljava/net/MalformedURLException; {:try_start_3e .. :try_end_41} :catch_118
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_131
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_41} :catch_14a
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_3e .. :try_end_41} :catch_163
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_166
    .catchall {:try_start_3e .. :try_end_41} :catchall_2be

    move-result-object v3

    :try_start_42
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "processCommand()  URL: ["

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    const-string/jumbo v7, "]"

    invoke-interface {v1, v4, v5, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    iget-boolean v1, p1, Lcom/nuance/connect/comm/Command;->hasBody:Z

    if-eqz v1, :cond_95

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

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v8, "Compressing Content"

    invoke-interface {v1, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v1, "Content-Encoding"

    const-string/jumbo v8, "gzip"

    invoke-virtual {v3, v1, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_81
    .catch Ljavax/net/ssl/SSLException; {:try_start_42 .. :try_end_81} :catch_e9
    .catch Ljava/net/ProtocolException; {:try_start_42 .. :try_end_81} :catch_100
    .catch Ljava/net/MalformedURLException; {:try_start_42 .. :try_end_81} :catch_2ce
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_81} :catch_2cb
    .catch Ljava/lang/NullPointerException; {:try_start_42 .. :try_end_81} :catch_2c8
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_42 .. :try_end_81} :catch_2c5
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_81} :catch_2c2
    .catchall {:try_start_42 .. :try_end_81} :catchall_db

    move-result-object v8

    :try_start_82
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v8, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_de

    :try_start_89
    invoke-virtual {v1, v7}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_2d5

    :try_start_8f
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_95
    :goto_95
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    invoke-interface {v1, p1, v4, v5}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->writeRequest(Lcom/nuance/connect/comm/Command;J)V
    :try_end_9d
    .catch Ljavax/net/ssl/SSLException; {:try_start_8f .. :try_end_9d} :catch_e9
    .catch Ljava/net/ProtocolException; {:try_start_8f .. :try_end_9d} :catch_100
    .catch Ljava/net/MalformedURLException; {:try_start_8f .. :try_end_9d} :catch_2ce
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_9d} :catch_2cb
    .catch Ljava/lang/NullPointerException; {:try_start_8f .. :try_end_9d} :catch_2c8
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_8f .. :try_end_9d} :catch_2c5
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9d} :catch_2c2
    .catchall {:try_start_8f .. :try_end_9d} :catchall_db

    :try_start_9d
    invoke-virtual {p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->tick()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_db

    :try_start_a0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iget-object v4, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "serverConn.getResponseCode("

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, ") command: "

    invoke-interface {v4, v5, v7, v8, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sparse-switch v1, :sswitch_data_2dc

    invoke-direct {p0, v3}, Lcom/nuance/connect/comm/HttpPersistentConnector;->getErrorBody(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/nuance/connect/comm/IOConnectorException;

    if-eqz v0, :cond_1a2

    :goto_be
    const/4 v1, 0x2

    invoke-direct {v2, v0, v1}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_c3
    .catch Ljavax/net/ssl/SSLException; {:try_start_a0 .. :try_end_c3} :catch_c3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_c3} :catch_18a
    .catch Ljava/lang/NullPointerException; {:try_start_a0 .. :try_end_c3} :catch_1a8
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_a0 .. :try_end_c3} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_c3} :catch_1c2
    .catchall {:try_start_a0 .. :try_end_c3} :catchall_db

    :catch_c3
    move-exception v0

    :try_start_c4
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
    :try_end_db
    .catchall {:try_start_c4 .. :try_end_db} :catchall_db

    :catchall_db
    move-exception v0

    goto/16 :goto_35

    :catchall_de
    move-exception v0

    move-object v1, v2

    :goto_e0
    if-eqz v1, :cond_e5

    :try_start_e2
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_e5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    throw v0

    :catch_e9
    move-exception v0

    move-object v2, v3

    goto/16 :goto_1c

    :cond_ed
    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v8, "Writing to output stream"

    invoke-interface {v1, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_ff
    .catch Ljavax/net/ssl/SSLException; {:try_start_e2 .. :try_end_ff} :catch_e9
    .catch Ljava/net/ProtocolException; {:try_start_e2 .. :try_end_ff} :catch_100
    .catch Ljava/net/MalformedURLException; {:try_start_e2 .. :try_end_ff} :catch_2ce
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_ff} :catch_2cb
    .catch Ljava/lang/NullPointerException; {:try_start_e2 .. :try_end_ff} :catch_2c8
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_e2 .. :try_end_ff} :catch_2c5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_ff} :catch_2c2
    .catchall {:try_start_e2 .. :try_end_ff} :catchall_db

    goto :goto_95

    :catch_100
    move-exception v0

    :goto_101
    :try_start_101
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

    :catch_118
    move-exception v0

    move-object v3, v2

    :goto_11a
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

    :catch_131
    move-exception v0

    move-object v3, v2

    :goto_133
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

    :catch_14a
    move-exception v0

    move-object v3, v2

    :goto_14c
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

    :catch_163
    move-exception v0

    move-object v3, v2

    :goto_165
    throw v0

    :catch_166
    move-exception v0

    move-object v3, v2

    :goto_168
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
    :try_end_17f
    .catchall {:try_start_101 .. :try_end_17f} :catchall_db

    :sswitch_17f
    :try_start_17f
    new-instance v0, Lcom/nuance/connect/comm/IOConnectorException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_18a
    .catch Ljavax/net/ssl/SSLException; {:try_start_17f .. :try_end_18a} :catch_c3
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_18a} :catch_18a
    .catch Ljava/lang/NullPointerException; {:try_start_17f .. :try_end_18a} :catch_1a8
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_17f .. :try_end_18a} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_18a} :catch_1c2
    .catchall {:try_start_17f .. :try_end_18a} :catchall_db

    :catch_18a
    move-exception v0

    :try_start_18b
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
    :try_end_1a2
    .catchall {:try_start_18b .. :try_end_1a2} :catchall_db

    :cond_1a2
    :try_start_1a2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1a5
    .catch Ljavax/net/ssl/SSLException; {:try_start_1a2 .. :try_end_1a5} :catch_c3
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a5} :catch_18a
    .catch Ljava/lang/NullPointerException; {:try_start_1a2 .. :try_end_1a5} :catch_1a8
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_1a2 .. :try_end_1a5} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1a5} :catch_1c2
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_db

    move-result-object v0

    goto/16 :goto_be

    :catch_1a8
    move-exception v0

    :try_start_1a9
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

    :catch_1c0
    move-exception v0

    throw v0

    :catch_1c2
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

    :sswitch_1da
    new-instance v1, Lcom/nuance/connect/comm/Response;

    invoke-direct {v1}, Lcom/nuance/connect/comm/Response;-><init>()V

    const/4 v4, -0x1

    iput v4, v1, Lcom/nuance/connect/comm/Response;->delayedFor:I
    :try_end_1e2
    .catchall {:try_start_1a9 .. :try_end_1e2} :catchall_db

    :try_start_1e2
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

    if-eqz v4, :cond_2d8

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->dataResponse:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v5, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->JSON:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20e

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->dataResponse:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v5, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d8

    :cond_20e
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_21b
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v11, :cond_245

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_225
    .catchall {:try_start_1e2 .. :try_end_225} :catchall_226

    goto :goto_21b

    :catchall_226
    move-exception v0

    if-eqz v2, :cond_22c

    :try_start_229
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_22c
    throw v0
    :try_end_22d
    .catch Ljavax/net/ssl/SSLException; {:try_start_229 .. :try_end_22d} :catch_22d
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_22d} :catch_268
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_229 .. :try_end_22d} :catch_280
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_22d} :catch_282
    .catchall {:try_start_229 .. :try_end_22d} :catchall_db

    :catch_22d
    move-exception v0

    :try_start_22e
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
    :try_end_245
    .catchall {:try_start_22e .. :try_end_245} :catchall_db

    :cond_245
    :try_start_245
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v1, p1, v4}, Lcom/nuance/connect/comm/HttpPersistentConnector;->processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;[B)Z
    :try_end_24f
    .catchall {:try_start_245 .. :try_end_24f} :catchall_226

    move-result v1

    :goto_250
    if-eqz v2, :cond_255

    :try_start_252
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_255
    .catch Ljavax/net/ssl/SSLException; {:try_start_252 .. :try_end_255} :catch_22d
    .catch Ljava/io/IOException; {:try_start_252 .. :try_end_255} :catch_268
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_252 .. :try_end_255} :catch_280
    .catch Ljava/lang/Exception; {:try_start_252 .. :try_end_255} :catch_282
    .catchall {:try_start_252 .. :try_end_255} :catchall_db

    :cond_255
    invoke-virtual {p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->complete()V

    if-eqz v3, :cond_25d

    :try_start_25a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_25d} :catch_29a

    :cond_25d
    :goto_25d
    if-nez v1, :cond_2af

    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v2, p1}, Lcom/nuance/connect/comm/ConnectorCallback;->onSuccess(Lcom/nuance/connect/comm/Command;)V

    :cond_264
    if-nez v1, :cond_267

    const/4 v0, 0x1

    :cond_267
    return v0

    :catch_268
    move-exception v0

    :try_start_269
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

    :catch_280
    move-exception v0

    throw v0

    :catch_282
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
    :try_end_29a
    .catchall {:try_start_269 .. :try_end_29a} :catchall_db

    :catch_29a
    move-exception v2

    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Exception closing server connection."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto :goto_25d

    :catch_2a4
    move-exception v1

    iget-object v1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Exception closing server connection."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto/16 :goto_3d

    :cond_2af
    invoke-virtual {p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_264

    new-instance v0, Lcom/nuance/connect/comm/IOConnectorException;

    const-string/jumbo v1, "Expirer has expired."

    invoke-direct {v0, v1, v10}, Lcom/nuance/connect/comm/IOConnectorException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_2be
    move-exception v0

    move-object v3, v2

    goto/16 :goto_35

    :catch_2c2
    move-exception v0

    goto/16 :goto_168

    :catch_2c5
    move-exception v0

    goto/16 :goto_165

    :catch_2c8
    move-exception v0

    goto/16 :goto_14c

    :catch_2cb
    move-exception v0

    goto/16 :goto_133

    :catch_2ce
    move-exception v0

    goto/16 :goto_11a

    :catch_2d1
    move-exception v0

    move-object v3, v2

    goto/16 :goto_101

    :catchall_2d5
    move-exception v0

    goto/16 :goto_e0

    :cond_2d8
    move v1, v0

    goto/16 :goto_250

    nop

    :sswitch_data_2dc
    .sparse-switch
        0xc8 -> :sswitch_1da
        0x193 -> :sswitch_17f
        0x196 -> :sswitch_17f
    .end sparse-switch
.end method

.method public setPersistentConfig(Lcom/nuance/connect/comm/PersistantConnectionConfig;Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->disconnect()V

    :cond_f
    iput-object p1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/PersistantConnectionConfig;->getCompressionThreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->setCompressionThreshold(I)V

    if-eqz p2, :cond_1f

    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->connect()V

    :cond_1f
    return-void
.end method

.method public declared-synchronized updateMinimumSSLProtocol(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "updateMinimumSSLProtocol: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
