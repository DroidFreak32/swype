.class public Lcom/nuance/connect/comm/CustomProtocolSocketFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/comm/CustomProtocolSocketFactory$BlackListSSLSocketFactory;
    }
.end annotation


# static fields
.field private static final blackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final factoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-string/jumbo v1, "SSLSocketFactory"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->log:Lcom/nuance/connect/util/Logger$Log;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SSL_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "SSL_DH_anon_WITH_RC4_128_MD5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "TLS_PSK_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "TLS_RSA_WITH_RC4_128_MD5"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "TLS_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "TLS_RSA_EXPORT_WITH_RC4_40_MD5"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->blackList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->factoryMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 8

    const/4 v1, 0x0

    const-class v2, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;

    monitor-enter v2

    if-nez p0, :cond_11

    :try_start_6
    sget-object v0, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "protocol == null"

    invoke-interface {v0, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_a8

    move-object v0, v1

    :cond_f
    :goto_f
    monitor-exit v2

    return-object v0

    :cond_11
    :try_start_11
    sget-object v0, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->factoryMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->factoryMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_f

    sget-object v0, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->factoryMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_a8

    :cond_2e
    :try_start_2e
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string/jumbo v0, "AndroidCAStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v5

    :cond_4b
    :goto_4b
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, "system:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-virtual {v4, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_67
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2e .. :try_end_67} :catch_68
    .catch Ljava/security/cert/CertificateException; {:try_start_2e .. :try_end_67} :catch_ab
    .catch Ljava/security/KeyManagementException; {:try_start_2e .. :try_end_67} :catch_bb
    .catch Ljava/security/KeyStoreException; {:try_start_2e .. :try_end_67} :catch_c9
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_67} :catch_d7
    .catchall {:try_start_2e .. :try_end_67} :catchall_b9

    goto :goto_4b

    :catch_68
    move-exception v0

    :try_start_69
    sget-object v3, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "NoSuchAlgorithmException: "

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_75
    .catchall {:try_start_69 .. :try_end_75} :catchall_b9

    :cond_75
    :goto_75
    move-object v0, v1

    goto :goto_f

    :cond_77
    :try_start_77
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_92
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_77 .. :try_end_92} :catch_68
    .catch Ljava/security/cert/CertificateException; {:try_start_77 .. :try_end_92} :catch_ab
    .catch Ljava/security/KeyManagementException; {:try_start_77 .. :try_end_92} :catch_bb
    .catch Ljava/security/KeyStoreException; {:try_start_77 .. :try_end_92} :catch_c9
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_92} :catch_d7
    .catchall {:try_start_77 .. :try_end_92} :catchall_b9

    move-result-object v3

    if-eqz v3, :cond_75

    :try_start_95
    new-instance v0, Lcom/nuance/connect/comm/CustomProtocolSocketFactory$BlackListSSLSocketFactory;

    sget-object v1, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->blackList:Ljava/util/List;

    invoke-direct {v0, v3, v1}, Lcom/nuance/connect/comm/CustomProtocolSocketFactory$BlackListSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/util/List;)V

    sget-object v1, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->factoryMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a6
    .catchall {:try_start_95 .. :try_end_a6} :catchall_a8

    goto/16 :goto_f

    :catchall_a8
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_ab
    move-exception v0

    :try_start_ac
    sget-object v3, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "CertificateException: "

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b8
    .catchall {:try_start_ac .. :try_end_b8} :catchall_b9

    goto :goto_75

    :catchall_b9
    move-exception v0

    :try_start_ba
    throw v0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_a8

    :catch_bb
    move-exception v0

    :try_start_bc
    sget-object v3, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "KeyManagementException: "

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_75

    :catch_c9
    move-exception v0

    sget-object v3, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "KeyStoreException: "

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_75

    :catch_d7
    move-exception v0

    sget-object v3, Lcom/nuance/connect/comm/CustomProtocolSocketFactory;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "IOException: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e4
    .catchall {:try_start_bc .. :try_end_e4} :catchall_b9

    goto :goto_75
.end method
