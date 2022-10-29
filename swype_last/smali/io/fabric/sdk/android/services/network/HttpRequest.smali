.class public final Lio/fabric/sdk/android/services/network/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;,
        Lio/fabric/sdk/android/services/network/HttpRequest$CloseOperation;,
        Lio/fabric/sdk/android/services/network/HttpRequest$Operation;,
        Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;,
        Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;
    }
.end annotation


# static fields
.field private static CONNECTION_FACTORY:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

.field private static final EMPTY_STRINGS:[Ljava/lang/String;


# instance fields
.field private bufferSize:I

.field private connection:Ljava/net/HttpURLConnection;

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPort:I

.field private ignoreCloseExceptions:Z

.field private multipart:Z

.field private output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

.field private final requestMethod:Ljava/lang/String;

.field private uncompress:Z

.field public final url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 253
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/fabric/sdk/android/services/network/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 361
    sget-object v0, Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;->DEFAULT:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    sput-object v0, Lio/fabric/sdk/android/services/network/HttpRequest;->CONNECTION_FACTORY:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/CharSequence;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1275
    const/4 v1, 0x0

    iput-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1287
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    .line 1289
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->uncompress:Z

    .line 1291
    const/16 v1, 0x2000

    iput v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    .line 1306
    :try_start_10
    new-instance v1, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->url:Ljava/net/URL;
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_1b} :catch_1e

    .line 1310
    iput-object p2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 1311
    return-void

    .line 1307
    :catch_1e
    move-exception v0

    .line 1308
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/fabric/sdk/android/services/network/HttpRequest;)I
    .registers 2
    .param p0, "x0"    # Lio/fabric/sdk/android/services/network/HttpRequest;

    .prologue
    .line 95
    iget v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    return v0
.end method

.method private static append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .registers 13
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/16 v10, 0x3f

    const/16 v9, 0x3d

    const/16 v7, 0x2f

    const/16 v8, 0x26

    .line 792
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "baseUrl":Ljava/lang/String;
    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 821
    .end local v0    # "baseUrl":Ljava/lang/String;
    :cond_14
    :goto_14
    return-object v0

    .line 796
    .restart local v0    # "baseUrl":Ljava/lang/String;
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3313
    .local v3, "result":Ljava/lang/StringBuilder;
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ne v5, v6, :cond_2b

    .line 3314
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3320
    :cond_2b
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 3321
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 3322
    const/4 v7, -0x1

    if-ne v5, v7, :cond_87

    .line 3323
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 803
    :cond_3b
    :goto_3b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 804
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 805
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 807
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 808
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_60

    .line 809
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 811
    :cond_60
    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    .line 812
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 813
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    check-cast v1, Ljava/util/Map$Entry;

    .line 814
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 817
    if-eqz v4, :cond_60

    .line 818
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 3324
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "value":Ljava/lang/Object;
    :cond_87
    if-ge v5, v6, :cond_3b

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_3b

    .line 3325
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 821
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14
.end method

.method private body(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1575
    .line 7350
    const-string/jumbo v2, "Content-Length"

    .line 7975
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->closeOutputQuietly()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 7976
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v2

    .line 6559
    if-lez v2, :cond_2d

    .line 6560
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 8654
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :goto_16
    :try_start_16
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v3

    iget v4, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1577
    invoke-direct {p0, v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 1578
    invoke-static {p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2b} :catch_33

    move-result-object v2

    return-object v2

    .line 6562
    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_2d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_16

    .line 1579
    .restart local v1    # "output":Ljava/io/ByteArrayOutputStream;
    :catch_33
    move-exception v0

    .line 1580
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method private closeOutput()Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2445
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    if-nez v0, :cond_5

    .line 2458
    :goto_4
    return-object p0

    .line 2447
    :cond_5
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->multipart:Z

    if-eqz v0, :cond_11

    .line 2448
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    const-string/jumbo v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    .line 2449
    :cond_11
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_1e

    .line 2451
    :try_start_15
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_24

    .line 2457
    :goto_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    goto :goto_4

    .line 2456
    :cond_1e
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->close()V

    goto :goto_1a

    .line 2454
    :catch_24
    move-exception v0

    goto :goto_1a
.end method

.method private closeOutputQuietly()Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2470
    :try_start_0
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->closeOutput()Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 2471
    :catch_5
    move-exception v0

    .line 2472
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 9
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2402
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$8;

    iget-boolean v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/network/HttpRequest$8;-><init>(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest$8;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    return-object v0
.end method

.method private createConnection()Ljava/net/HttpURLConnection;
    .registers 10

    .prologue
    .line 1332
    :try_start_0
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->httpProxyHost:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 1333
    sget-object v2, Lio/fabric/sdk/android/services/network/HttpRequest;->CONNECTION_FACTORY:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    iget-object v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->url:Ljava/net/URL;

    .line 4326
    new-instance v4, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->httpProxyHost:Ljava/lang/String;

    iget v8, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->httpProxyPort:I

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 1333
    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1336
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :goto_1c
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1337
    return-object v0

    .line 1335
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :cond_22
    sget-object v2, Lio/fabric/sdk/android/services/network/HttpRequest;->CONNECTION_FACTORY:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    iget-object v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->url:Ljava/net/URL;

    invoke-interface {v2, v3}, Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_2b

    move-result-object v0

    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    goto :goto_1c

    .line 1338
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_2b
    move-exception v1

    .line 1339
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public static delete(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 3
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1042
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method private static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 13
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 757
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_7e

    .line 762
    .local v10, "parsed":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 763
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v11

    .line 764
    .local v11, "port":I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_2f

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 768
    :cond_2f
    :try_start_2f
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v7

    .line 769
    .local v7, "encoded":Ljava/lang/String;
    const/16 v0, 0x3f

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 770
    .local v9, "paramsStart":I
    if-lez v9, :cond_7d

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7d

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "+"

    const-string/jumbo v4, "%2B"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7c
    .catch Ljava/net/URISyntaxException; {:try_start_2f .. :try_end_7c} :catch_85

    move-result-object v7

    .line 773
    :cond_7d
    return-object v7

    .line 758
    .end local v2    # "host":Ljava/lang/String;
    .end local v7    # "encoded":Ljava/lang/String;
    .end local v9    # "paramsStart":I
    .end local v10    # "parsed":Ljava/net/URL;
    .end local v11    # "port":I
    :catch_7e
    move-exception v6

    .line 759
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v0, v6}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 774
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v10    # "parsed":Ljava/net/URL;
    .restart local v11    # "port":I
    :catch_85
    move-exception v6

    .line 775
    .local v6, "e":Ljava/net/URISyntaxException;
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v0, "Parsing URI failed"

    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 776
    .local v8, "io":Ljava/io/IOException;
    invoke-virtual {v8, v6}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 777
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v0, v8}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static get$6df498ee(Ljava/lang/CharSequence;Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 5
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 901
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 902
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3874
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string/jumbo v2, "GET"

    invoke-direct {v1, v0, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 902
    return-object v1
.end method

.method private static getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x22

    const/4 v6, 0x0

    const/16 v9, 0x3b

    const/4 v8, -0x1

    .line 2072
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_10

    :cond_e
    move-object v3, v6

    .line 2102
    :cond_f
    :goto_f
    return-object v3

    .line 2075
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2076
    .local v1, "length":I
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    .line 2077
    .local v4, "start":I
    if-eqz v4, :cond_1e

    if-ne v4, v1, :cond_20

    :cond_1e
    move-object v3, v6

    .line 2078
    goto :goto_f

    .line 2080
    :cond_20
    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2081
    .local v0, "end":I
    if-ne v0, v8, :cond_27

    .line 2082
    move v0, v1

    .line 2084
    :cond_27
    :goto_27
    if-ge v4, v0, :cond_75

    .line 2085
    const/16 v7, 0x3d

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2086
    .local v2, "nameEnd":I
    if-eq v2, v8, :cond_6b

    if-ge v2, v0, :cond_6b

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 2087
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2088
    .local v3, "paramValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 2089
    .local v5, "valueLength":I
    if-eqz v5, :cond_6b

    .line 2090
    const/4 v6, 0x2

    if-le v5, v6, :cond_f

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v10, v6, :cond_f

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v10, v6, :cond_f

    .line 2091
    const/4 v6, 0x1

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    .line 2096
    .end local v3    # "paramValue":Ljava/lang/String;
    .end local v5    # "valueLength":I
    :cond_6b
    add-int/lit8 v4, v0, 0x1

    .line 2097
    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2098
    if-ne v0, v8, :cond_27

    .line 2099
    move v0, v1

    goto :goto_27

    .end local v2    # "nameEnd":I
    :cond_75
    move-object v3, v6

    .line 2102
    goto :goto_f
.end method

.method private static getValidCharset(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 260
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 263
    .end local p0    # "charset":Ljava/lang/String;
    :goto_8
    return-object p0

    .restart local p0    # "charset":Ljava/lang/String;
    :cond_9
    const-string/jumbo p0, "UTF-8"

    goto :goto_8
.end method

.method private openOutput()Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2483
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    if-eqz v1, :cond_5

    .line 2488
    :goto_4
    return-object p0

    .line 2485
    :cond_5
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2486
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "charset"

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2487
    .local v0, "charset":Ljava/lang/String;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v0, v3}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    goto :goto_4
.end method

.method private partHeader(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2710
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->send(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->send(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    invoke-direct {v0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->send(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->send(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static post$6df498ee(Ljava/lang/CharSequence;Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 5
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 957
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3930
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string/jumbo v2, "POST"

    invoke-direct {v1, v0, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 958
    return-object v1
.end method

.method public static put(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 3
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 986
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string/jumbo v1, "PUT"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method private send(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 5
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2797
    :try_start_0
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->openOutput()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2798
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 2802
    return-object p0

    .line 2799
    :catch_d
    move-exception v0

    .line 2800
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private startPart()Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2498
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->multipart:Z

    if-nez v0, :cond_1d

    .line 2499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->multipart:Z

    .line 2500
    const-string/jumbo v0, "multipart/form-data; boundary=00content0boundary00"

    .line 10332
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 2500
    invoke-direct {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->openOutput()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2501
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    const-string/jumbo v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    .line 2504
    :goto_1c
    return-object p0

    .line 2503
    :cond_1d
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    const-string/jumbo v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    goto :goto_1c
.end method

.method private stream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1665
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v2

    const/16 v3, 0x190

    if-ge v2, v3, :cond_2c

    .line 1667
    :try_start_8
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_25

    move-result-object v1

    .line 1681
    .local v1, "stream":Ljava/io/InputStream;
    :cond_10
    :goto_10
    iget-boolean v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->uncompress:Z

    if-eqz v2, :cond_24

    const-string/jumbo v2, "gzip"

    .line 10181
    const-string/jumbo v3, "Content-Encoding"

    invoke-virtual {p0, v3}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1681
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 1685
    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_24
    :goto_24
    return-object v1

    .line 1668
    :catch_25
    move-exception v0

    .line 1669
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 1672
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2c
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1673
    .restart local v1    # "stream":Ljava/io/InputStream;
    if-nez v1, :cond_10

    .line 1675
    :try_start_36
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3d} :catch_3f

    move-result-object v1

    goto :goto_10

    .line 1676
    :catch_3f
    move-exception v0

    .line 1677
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 1685
    .end local v0    # "e":Ljava/io/IOException;
    :cond_46
    :try_start_46
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4b} :catch_4d

    move-object v1, v2

    goto :goto_24

    .line 1686
    :catch_4d
    move-exception v0

    .line 1687
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method private writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2531
    .local v0, "partBuffer":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    if-eqz p2, :cond_1b

    .line 2533
    const-string/jumbo v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    :cond_1b
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2535
    const-string/jumbo v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2536
    if-eqz p3, :cond_32

    .line 2537
    const-string/jumbo v1, "Content-Type"

    invoke-direct {p0, v1, p3}, Lio/fabric/sdk/android/services/network/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2538
    :cond_32
    const-string/jumbo v1, "\r\n"

    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->send(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final body()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1591
    .line 9111
    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "charset"

    .line 10005
    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1591
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final code()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1389
    :try_start_0
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->closeOutput()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 1390
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    return v1

    .line 1391
    :catch_c
    move-exception v0

    .line 1392
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final getConnection()Ljava/net/HttpURLConnection;
    .registers 2

    .prologue
    .line 1354
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_a

    .line 1355
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1356
    :cond_a
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1865
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    return-object p0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1912
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->closeOutputQuietly()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 1913
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final part(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2597
    .line 10611
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11563
    :goto_7
    invoke-virtual {p0, p1, v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->part$d4ee95d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 2597
    return-object v0

    :cond_c
    move-object v0, v1

    .line 10611
    goto :goto_7
.end method

.method public final part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2651
    const/4 v1, 0x0

    .line 2653
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_1a

    .line 2654
    .end local v1    # "stream":Ljava/io/InputStream;
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_b
    invoke-virtual {p0, p1, p2, p3, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_28
    .catchall {:try_start_b .. :try_end_e} :catchall_25

    move-result-object v3

    .line 2660
    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_21

    .line 2662
    :goto_12
    return-object v3

    .line 2655
    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catch_13
    move-exception v0

    .line 2656
    .local v0, "e":Ljava/io/IOException;
    :goto_14
    :try_start_14
    new-instance v3, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v3, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1a

    .line 2658
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1a
    move-exception v3

    :goto_1b
    if-eqz v1, :cond_20

    .line 2660
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_23

    .line 2662
    :cond_20
    :goto_20
    throw v3

    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catch_21
    move-exception v4

    goto :goto_12

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catch_23
    move-exception v4

    goto :goto_20

    .line 2658
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catchall_25
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    goto :goto_1b

    .line 2655
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catch_28
    move-exception v0

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    goto :goto_14
.end method

.method public final part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2692
    :try_start_0
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->startPart()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2693
    invoke-direct {p0, p1, p2, p3}, Lio/fabric/sdk/android/services/network/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2694
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-direct {p0, p4, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 2698
    return-object p0

    .line 2695
    :catch_c
    move-exception v0

    .line 2696
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final part$d4ee95d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "part"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2579
    :try_start_0
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->startPart()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2580
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2581
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-virtual {v1, p3}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 2585
    return-object p0

    .line 2582
    :catch_e
    move-exception v0

    .line 2583
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4971
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    .line 1345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5962
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 1345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
