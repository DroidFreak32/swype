.class public final Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"

# interfaces
.implements Lio/fabric/sdk/android/services/network/HttpRequestFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory$1;
    }
.end annotation


# instance fields
.field private attemptedSslInit:Z

.field private final logger:Lio/fabric/sdk/android/Logger;

.field private pinningInfo:Lio/fabric/sdk/android/services/network/PinningInfoProvider;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 32
    new-instance v0, Lio/fabric/sdk/android/DefaultLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/DefaultLogger;-><init>(B)V

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;-><init>(Lio/fabric/sdk/android/Logger;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/Logger;)V
    .registers 2
    .param p1, "logger"    # Lio/fabric/sdk/android/Logger;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->logger:Lio/fabric/sdk/android/Logger;

    .line 37
    return-void
.end method

.method private declared-synchronized getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->attemptedSslInit:Z

    if-nez v0, :cond_f

    .line 106
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->initSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 108
    :cond_f
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 105
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 112
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->attemptedSslInit:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3e

    .line 115
    :try_start_5
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->pinningInfo:Lio/fabric/sdk/android/services/network/PinningInfoProvider;

    .line 2020
    const-string/jumbo v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 2021
    new-instance v4, Lio/fabric/sdk/android/services/network/SystemKeyStore;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/network/PinningInfoProvider;->getKeyStoreStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-interface {v2}, Lio/fabric/sdk/android/services/network/PinningInfoProvider;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lio/fabric/sdk/android/services/network/SystemKeyStore;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2023
    new-instance v5, Lio/fabric/sdk/android/services/network/PinningTrustManager;

    invoke-direct {v5, v4, v2}, Lio/fabric/sdk/android/services/network/PinningTrustManager;-><init>(Lio/fabric/sdk/android/services/network/SystemKeyStore;Lio/fabric/sdk/android/services/network/PinningInfoProvider;)V

    .line 2024
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 2025
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_31
    .catchall {:try_start_5 .. :try_end_2e} :catchall_3e

    move-result-object v1

    .line 122
    :goto_2f
    monitor-exit p0

    return-object v1

    .line 119
    :catch_31
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    :try_start_32
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->logger:Lio/fabric/sdk/android/Logger;

    const-string/jumbo v3, "Fabric"

    const-string/jumbo v4, "Exception while validating pinned certs"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3e

    goto :goto_2f

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized resetSSLSocketFactory()V
    .registers 2

    .prologue
    .line 53
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->attemptedSslInit:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final buildHttpRequest(Lio/fabric/sdk/android/services/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 8
    .param p1, "method"    # Lio/fabric/sdk/android/services/network/HttpMethod;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/network/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 66
    .local p3, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory$1;->$SwitchMap$io$fabric$sdk$android$services$network$HttpMethod:[I

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/network/HttpMethod;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_52

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported HTTP method!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :pswitch_14
    invoke-static {p2, p3}, Lio/fabric/sdk/android/services/network/HttpRequest;->get$6df498ee(Ljava/lang/CharSequence;Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 1101
    .local v0, "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    :goto_18
    if-eqz p2, :cond_4f

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x1

    .line 88
    :goto_2a
    if-eqz v2, :cond_3f

    iget-object v2, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->pinningInfo:Lio/fabric/sdk/android/services/network/PinningInfoProvider;

    if-eqz v2, :cond_3f

    .line 89
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 91
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    if-eqz v1, :cond_3f

    .line 92
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 97
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_3f
    return-object v0

    .line 72
    .end local v0    # "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    :pswitch_40
    invoke-static {p2, p3}, Lio/fabric/sdk/android/services/network/HttpRequest;->post$6df498ee(Ljava/lang/CharSequence;Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 73
    .restart local v0    # "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    goto :goto_18

    .line 76
    .end local v0    # "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    :pswitch_45
    invoke-static {p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->put(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 77
    .restart local v0    # "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    goto :goto_18

    .line 80
    .end local v0    # "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    :pswitch_4a
    invoke-static {p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->delete(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 81
    .restart local v0    # "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    goto :goto_18

    .line 1101
    :cond_4f
    const/4 v2, 0x0

    goto :goto_2a

    .line 66
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_14
        :pswitch_40
        :pswitch_45
        :pswitch_4a
    .end packed-switch
.end method

.method public final setPinningInfoProvider(Lio/fabric/sdk/android/services/network/PinningInfoProvider;)V
    .registers 3
    .param p1, "pinningInfo"    # Lio/fabric/sdk/android/services/network/PinningInfoProvider;

    .prologue
    .line 46
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->pinningInfo:Lio/fabric/sdk/android/services/network/PinningInfoProvider;

    if-eq v0, p1, :cond_9

    .line 47
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->pinningInfo:Lio/fabric/sdk/android/services/network/PinningInfoProvider;

    .line 48
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;->resetSSLSocketFactory()V

    .line 50
    :cond_9
    return-void
.end method
