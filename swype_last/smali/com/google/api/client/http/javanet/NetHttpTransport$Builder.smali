.class public final Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;
.super Ljava/lang/Object;
.source "NetHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/javanet/NetHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private connectionFactory:Lcom/google/api/client/http/javanet/ConnectionFactory;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private proxy:Ljava/net/Proxy;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/api/client/http/javanet/NetHttpTransport;
    .registers 5

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->proxy:Ljava/net/Proxy;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    iget-object v1, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->connectionFactory:Lcom/google/api/client/http/javanet/ConnectionFactory;

    iget-object v2, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>(Lcom/google/api/client/http/javanet/ConnectionFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    iget-object v1, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->proxy:Ljava/net/Proxy;

    iget-object v2, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>(Ljava/net/Proxy;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_f
.end method

.method public final doNotValidateCertificate()Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 288
    .line 3155
    new-instance v0, Lcom/google/api/client/util/SslUtils$2;

    invoke-direct {v0}, Lcom/google/api/client/util/SslUtils$2;-><init>()V

    .line 288
    iput-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 289
    invoke-static {}, Lcom/google/api/client/util/SslUtils;->trustAllSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 290
    return-object p0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final setConnectionFactory(Lcom/google/api/client/http/javanet/ConnectionFactory;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;
    .registers 2
    .param p1, "connectionFactory"    # Lcom/google/api/client/http/javanet/ConnectionFactory;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->connectionFactory:Lcom/google/api/client/http/javanet/ConnectionFactory;

    .line 212
    return-object p0
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;
    .registers 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 312
    return-object p0
.end method

.method public final setProxy(Ljava/net/Proxy;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;
    .registers 2
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->proxy:Ljava/net/Proxy;

    .line 196
    return-object p0
.end method

.method public final setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;
    .registers 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 301
    return-object p0
.end method

.method public final trustCertificates(Ljava/security/KeyStore;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;
    .registers 4
    .param p1, "trustStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 3054
    const-string/jumbo v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 3073
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    const-string/jumbo v1, "PKIX"

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 271
    invoke-static {v0, p1, v1}, Lcom/google/api/client/util/SslUtils;->initSslContext(Ljavax/net/ssl/SSLContext;Ljava/security/KeyStore;Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/SSLContext;

    .line 272
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;

    move-result-object v1

    return-object v1
.end method

.method public final trustCertificatesFromJavaKeyStore(Ljava/io/InputStream;Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;
    .registers 5
    .param p1, "keyStoreStream"    # Ljava/io/InputStream;
    .param p2, "storePass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1053
    const-string/jumbo v1, "JKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 234
    .local v0, "trustStore":Ljava/security/KeyStore;
    invoke-static {v0, p1, p2}, Lcom/google/api/client/util/SecurityUtils;->loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->trustCertificates(Ljava/security/KeyStore;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;

    move-result-object v1

    return-object v1
.end method

.method public final trustCertificatesFromStream(Ljava/io/InputStream;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;
    .registers 5
    .param p1, "certificateStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2053
    const-string/jumbo v1, "JKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 256
    .local v0, "trustStore":Ljava/security/KeyStore;
    invoke-virtual {v0, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 2222
    const-string/jumbo v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 257
    invoke-static {v0, v1, p1}, Lcom/google/api/client/util/SecurityUtils;->loadKeyStoreFromCertificates(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/io/InputStream;)V

    .line 259
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->trustCertificates(Ljava/security/KeyStore;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;

    move-result-object v1

    return-object v1
.end method
