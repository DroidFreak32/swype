.class public final Lcom/google/api/client/util/SslUtils;
.super Ljava/lang/Object;
.source "SslUtils.java"


# direct methods
.method public static initSslContext(Ljavax/net/ssl/SSLContext;Ljava/security/KeyStore;Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/SSLContext;
    .registers 5
    .param p0, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p1, "trustStore"    # Ljava/security/KeyStore;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p2, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 110
    invoke-virtual {p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 111
    return-object p0
.end method

.method public static trustAllSSLContext()Ljavax/net/ssl/SSLContext;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 125
    const/4 v2, 0x1

    new-array v1, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/api/client/util/SslUtils$1;

    invoke-direct {v3}, Lcom/google/api/client/util/SslUtils$1;-><init>()V

    aput-object v3, v1, v2

    .line 1054
    .local v1, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    const-string/jumbo v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 140
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v0, v4, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 141
    return-object v0
.end method
