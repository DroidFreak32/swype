.class public final Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
.super Ljava/lang/Object;
.source "ApacheHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/apache/ApacheHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private params:Lorg/apache/http/params/HttpParams;

.field private proxySelector:Ljava/net/ProxySelector;

.field private socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 261
    invoke-static {}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->params:Lorg/apache/http/params/HttpParams;

    .line 267
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->proxySelector:Ljava/net/ProxySelector;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/api/client/http/apache/ApacheHttpTransport;
    .registers 5

    .prologue
    .line 409
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpTransport;

    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    iget-object v2, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->params:Lorg/apache/http/params/HttpParams;

    iget-object v3, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->proxySelector:Ljava/net/ProxySelector;

    invoke-static {v1, v2, v3}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpClient(Lorg/apache/http/conn/ssl/SSLSocketFactory;Lorg/apache/http/params/HttpParams;Ljava/net/ProxySelector;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>(Lorg/apache/http/client/HttpClient;)V

    return-object v0
.end method

.method public final doNotValidateCertificate()Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Lcom/google/api/client/http/apache/SSLSocketFactoryExtension;

    invoke-static {}, Lcom/google/api/client/util/SslUtils;->trustAllSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/apache/SSLSocketFactoryExtension;-><init>(Ljavax/net/ssl/SSLContext;)V

    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 387
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 388
    return-object p0
.end method

.method public final getHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public final getSSLSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final setProxy(Lorg/apache/http/HttpHost;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    .registers 3
    .param p1, "proxy"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 289
    if-eqz p1, :cond_a

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 292
    :cond_a
    return-object p0
.end method

.method public final setProxySelector(Ljava/net/ProxySelector;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    .registers 4
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 307
    if-eqz p1, :cond_a

    .line 308
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->params:Lorg/apache/http/params/HttpParams;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 310
    :cond_a
    return-object p0
.end method

.method public final setSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    .registers 3
    .param p1, "socketFactory"    # Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .prologue
    .line 393
    .line 3127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 393
    check-cast v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 394
    return-object p0
.end method

.method public final trustCertificates(Ljava/security/KeyStore;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
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

    .line 369
    invoke-static {v0, p1, v1}, Lcom/google/api/client/util/SslUtils;->initSslContext(Ljavax/net/ssl/SSLContext;Ljava/security/KeyStore;Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/SSLContext;

    .line 370
    new-instance v1, Lcom/google/api/client/http/apache/SSLSocketFactoryExtension;

    invoke-direct {v1, v0}, Lcom/google/api/client/http/apache/SSLSocketFactoryExtension;-><init>(Ljavax/net/ssl/SSLContext;)V

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->setSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;

    move-result-object v1

    return-object v1
.end method

.method public final trustCertificatesFromJavaKeyStore(Ljava/io/InputStream;Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
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

    .line 331
    .local v0, "trustStore":Ljava/security/KeyStore;
    invoke-static {v0, p1, p2}, Lcom/google/api/client/util/SecurityUtils;->loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->trustCertificates(Ljava/security/KeyStore;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;

    move-result-object v1

    return-object v1
.end method

.method public final trustCertificatesFromStream(Ljava/io/InputStream;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
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

    .line 353
    .local v0, "trustStore":Ljava/security/KeyStore;
    invoke-virtual {v0, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 2222
    const-string/jumbo v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 354
    invoke-static {v0, v1, p1}, Lcom/google/api/client/util/SecurityUtils;->loadKeyStoreFromCertificates(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/io/InputStream;)V

    .line 356
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->trustCertificates(Ljava/security/KeyStore;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;

    move-result-object v1

    return-object v1
.end method
