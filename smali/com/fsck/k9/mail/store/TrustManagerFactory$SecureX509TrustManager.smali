.class Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/TrustManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SecureX509TrustManager"
.end annotation


# static fields
.field private static final mTrustManager:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->mTrustManager:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Ljavax/net/ssl/X509TrustManager;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v2, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->mTrustManager:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->mTrustManager:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .local v0, "trustManager":Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;
    :goto_0
    monitor-exit v2

    return-object v0

    .line 76
    .end local v0    # "trustManager":Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v0    # "trustManager":Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;
    sget-object v1, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->mTrustManager:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v0    # "trustManager":Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->access$000()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-static {p1}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->setLastCertChain([Ljava/security/cert/X509Certificate;)V

    .line 95
    :try_start_0
    invoke-static {}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->access$000()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    aget-object v2, p1, v5

    iget-object v3, p0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/fsck/k9/helper/DomainNameChecker;->match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "dn":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->access$200()Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    .end local v0    # "dn":Ljava/lang/String;
    :cond_0
    return-void

    .line 99
    :catch_0
    move-exception v2

    invoke-static {}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->access$100()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    aget-object v4, p1, v5

    aput-object v4, v3, v5

    invoke-interface {v2, v3, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Certificate cannot be verified; KeyStore Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v0    # "dn":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Certificate domain name does not match "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->access$000()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
