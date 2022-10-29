.class public final Lcom/google/api/client/http/javanet/NetHttpTransport;
.super Lcom/google/api/client/http/HttpTransport;
.source "NetHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;
    }
.end annotation


# static fields
.field private static final SUPPORTED_METHODS:[Ljava/lang/String;


# instance fields
.field private final connectionFactory:Lcom/google/api/client/http/javanet/ConnectionFactory;

.field private final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "GET"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "OPTIONS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "POST"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "PUT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "TRACE"

    aput-object v2, v0, v1

    .line 76
    sput-object v0, Lcom/google/api/client/http/javanet/NetHttpTransport;->SUPPORTED_METHODS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0, v0, v0}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>(Lcom/google/api/client/http/javanet/ConnectionFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V

    .line 97
    return-void
.end method

.method constructor <init>(Lcom/google/api/client/http/javanet/ConnectionFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V
    .registers 4
    .param p1, "connectionFactory"    # Lcom/google/api/client/http/javanet/ConnectionFactory;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p3, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    .line 120
    if-nez p1, :cond_a

    new-instance p1, Lcom/google/api/client/http/javanet/DefaultConnectionFactory;

    .end local p1    # "connectionFactory":Lcom/google/api/client/http/javanet/ConnectionFactory;
    invoke-direct {p1}, Lcom/google/api/client/http/javanet/DefaultConnectionFactory;-><init>()V

    :cond_a
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->connectionFactory:Lcom/google/api/client/http/javanet/ConnectionFactory;

    .line 122
    iput-object p2, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 123
    iput-object p3, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 124
    return-void
.end method

.method constructor <init>(Ljava/net/Proxy;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V
    .registers 5
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p3, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 108
    new-instance v0, Lcom/google/api/client/http/javanet/DefaultConnectionFactory;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/javanet/DefaultConnectionFactory;-><init>(Ljava/net/Proxy;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>(Lcom/google/api/client/http/javanet/ConnectionFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected final bridge synthetic buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/http/javanet/NetHttpTransport;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;
    .registers 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/javanet/NetHttpTransport;->supportsMethod(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "HTTP method %s not supported"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "connUrl":Ljava/net/URL;
    iget-object v3, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->connectionFactory:Lcom/google/api/client/http/javanet/ConnectionFactory;

    invoke-interface {v3, v0}, Lcom/google/api/client/http/javanet/ConnectionFactory;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 137
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 139
    instance-of v3, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_37

    move-object v2, v1

    .line 140
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 141
    .local v2, "secureConnection":Ljavax/net/ssl/HttpsURLConnection;
    iget-object v3, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v3, :cond_2e

    .line 142
    iget-object v3, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 144
    :cond_2e
    iget-object v3, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_37

    .line 145
    iget-object v3, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 148
    .end local v2    # "secureConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_37
    new-instance v3, Lcom/google/api/client/http/javanet/NetHttpRequest;

    invoke-direct {v3, v1}, Lcom/google/api/client/http/javanet/NetHttpRequest;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v3
.end method

.method public final supportsMethod(Ljava/lang/String;)Z
    .registers 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v0, Lcom/google/api/client/http/javanet/NetHttpTransport;->SUPPORTED_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
