.class final Lio/fabric/sdk/android/services/network/SystemKeyStore;
.super Ljava/lang/Object;
.source "SystemKeyStore.java"


# instance fields
.field private final trustRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/security/Principal;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field final trustStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "keystoreStream"    # Ljava/io/InputStream;
    .param p2, "passwd"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1, p2}, Lio/fabric/sdk/android/services/network/SystemKeyStore;->getTrustStore(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 29
    .local v0, "trustStore":Ljava/security/KeyStore;
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/SystemKeyStore;->initializeTrustedRoots(Ljava/security/KeyStore;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/services/network/SystemKeyStore;->trustRoots:Ljava/util/HashMap;

    .line 30
    iput-object v0, p0, Lio/fabric/sdk/android/services/network/SystemKeyStore;->trustStore:Ljava/security/KeyStore;

    .line 31
    return-void
.end method

.method private static getTrustStore(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 5
    .param p0, "keystoreStream"    # Ljava/io/InputStream;
    .param p1, "passwd"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    const-string/jumbo v4, "BKS"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 82
    .local v3, "trustStore":Ljava/security/KeyStore;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 85
    .local v0, "bin":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 90
    return-object v3

    .line 87
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 91
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v3    # "trustStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v2

    .line 92
    .local v2, "kse":Ljava/security/KeyStoreException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 93
    .end local v2    # "kse":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 95
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 96
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 97
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method private static initializeTrustedRoots(Ljava/security/KeyStore;)Ljava/util/HashMap;
    .locals 6
    .param p0, "trustStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/security/Principal;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v4, "trusted":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/security/Principal;Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 64
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 68
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "trusted":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/security/Principal;Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/security/KeyStoreException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 73
    .end local v3    # "e":Ljava/security/KeyStoreException;
    .restart local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4    # "trusted":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/security/Principal;Ljava/security/cert/X509Certificate;>;"
    :cond_1
    return-object v4
.end method


# virtual methods
.method public final getTrustRootFor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/SystemKeyStore;->trustRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 41
    .local v0, "trustRoot":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 55
    .end local v0    # "trustRoot":Ljava/security/cert/X509Certificate;
    :goto_0
    return-object v0

    .line 45
    .restart local v0    # "trustRoot":Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 46
    goto :goto_0

    .line 50
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method public final isTrustRoot(Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 34
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/SystemKeyStore;->trustRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 35
    .local v0, "trustRoot":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
