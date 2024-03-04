.class public Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static b:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private a:Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;->a:Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;->a:Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;->certSummary:Ljava/lang/String;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_7

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CN="

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_2

    add-int/lit8 v4, v4, 0x3

    const/16 v5, 0x2c

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;->a:Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;

    iget-object v4, v4, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;->certSummary:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "certificate summary is not identical"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;->a:Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;

    iget-boolean v2, v2, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;->enableSelfSignedCert:Z

    if-nez v2, :cond_0

    throw v0

    :cond_1
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;->a:Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;->certData:Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_4

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;->a:Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;

    iget-object v4, v4, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;->certData:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v3

    :cond_4
    if-nez v1, :cond_6

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "certificate data is not identical"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
