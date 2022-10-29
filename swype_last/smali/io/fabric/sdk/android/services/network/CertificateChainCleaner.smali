.class final Lio/fabric/sdk/android/services/network/CertificateChainCleaner;
.super Ljava/lang/Object;
.source "CertificateChainCleaner.java"


# direct methods
.method public static getCleanChain([Ljava/security/cert/X509Certificate;Lio/fabric/sdk/android/services/network/SystemKeyStore;)[Ljava/security/cert/X509Certificate;
    .registers 8
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p1, "systemKeyStore"    # Lio/fabric/sdk/android/services/network/SystemKeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 24
    .local v0, "cleanChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    const/4 v3, 0x0

    .line 27
    .local v3, "trustedChain":Z
    aget-object v4, p0, v5

    invoke-virtual {p1, v4}, Lio/fabric/sdk/android/services/network/SystemKeyStore;->isTrustRoot(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 28
    const/4 v3, 0x1

    .line 31
    :cond_10
    aget-object v4, p0, v5

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_16
    array-length v4, p0

    if-ge v1, v4, :cond_36

    .line 34
    aget-object v4, p0, v1

    invoke-virtual {p1, v4}, Lio/fabric/sdk/android/services/network/SystemKeyStore;->isTrustRoot(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 35
    const/4 v3, 0x1

    .line 38
    :cond_22
    aget-object v4, p0, v1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, p0, v5

    invoke-static {v4, v5}, Lio/fabric/sdk/android/services/network/CertificateChainCleaner;->isValidLink(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 39
    aget-object v4, p0, v1

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 45
    :cond_36
    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    invoke-virtual {p1, v4}, Lio/fabric/sdk/android/services/network/SystemKeyStore;->getTrustRootFor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 47
    .local v2, "trustRoot":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_44

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v3, 0x1

    .line 52
    :cond_44
    if-eqz v3, :cond_53

    .line 53
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    return-object v4

    .line 55
    :cond_53
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string/jumbo v5, "Didn\'t find a trust anchor in chain cleanup!"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static isValidLink(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 5
    .param p0, "parent"    # Ljava/security/cert/X509Certificate;
    .param p1, "child"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 70
    :goto_f
    return v0

    .line 65
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_17
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_17} :catch_19

    .line 70
    const/4 v0, 0x1

    goto :goto_f

    .line 67
    :catch_19
    move-exception v1

    goto :goto_f
.end method
