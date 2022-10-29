.class final Lio/fabric/sdk/android/services/network/PinningTrustManager;
.super Ljava/lang/Object;
.source "PinningTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final cache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final pinCreationTimeMillis:J

.field private final pins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final systemKeyStore:Lio/fabric/sdk/android/services/network/SystemKeyStore;

.field private final systemTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/network/SystemKeyStore;Lio/fabric/sdk/android/services/network/PinningInfoProvider;)V
    .registers 9
    .param p1, "keyStore"    # Lio/fabric/sdk/android/services/network/SystemKeyStore;
    .param p2, "pinningInfoProvider"    # Lio/fabric/sdk/android/services/network/PinningInfoProvider;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pins:Ljava/util/List;

    .line 60
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->cache:Ljava/util/Set;

    .line 74
    invoke-static {p1}, Lio/fabric/sdk/android/services/network/PinningTrustManager;->initializeSystemTrustManagers(Lio/fabric/sdk/android/services/network/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    iput-object v4, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->systemTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 75
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->systemKeyStore:Lio/fabric/sdk/android/services/network/SystemKeyStore;

    .line 76
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pinCreationTimeMillis:J

    .line 78
    invoke-interface {p2}, Lio/fabric/sdk/android/services/network/PinningInfoProvider;->getPins()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_27
    if-ge v1, v2, :cond_37

    aget-object v3, v0, v1

    .line 79
    .local v3, "pin":Ljava/lang/String;
    iget-object v4, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pins:Ljava/util/List;

    invoke-static {v3}, Lio/fabric/sdk/android/services/network/PinningTrustManager;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 81
    .end local v3    # "pin":Ljava/lang/String;
    :cond_37
    return-void
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 171
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 173
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_2a

    .line 174
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 173
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 178
    :cond_2a
    return-object v0
.end method

.method private static initializeSystemTrustManagers(Lio/fabric/sdk/android/services/network/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;
    .registers 5
    .param p0, "keyStore"    # Lio/fabric/sdk/android/services/network/SystemKeyStore;

    .prologue
    .line 85
    :try_start_0
    const-string/jumbo v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 86
    .local v2, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    iget-object v3, p0, Lio/fabric/sdk/android/services/network/SystemKeyStore;->trustStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 88
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_11
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_f} :catch_18

    move-result-object v3

    return-object v3

    .line 89
    .end local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_11
    move-exception v1

    .line 90
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 91
    .end local v1    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_18
    move-exception v0

    .line 92
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private isValidPin(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    const-string/jumbo v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 99
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 100
    .local v4, "spki":[B
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 102
    .local v3, "pin":[B
    iget-object v5, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pins:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 103
    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_28} :catch_2f

    move-result v5

    if-eqz v5, :cond_19

    .line 104
    const/4 v5, 0x1

    .line 108
    :goto_2c
    return v5

    :cond_2d
    const/4 v5, 0x0

    goto :goto_2c

    .line 109
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pin":[B
    .end local v4    # "spki":[B
    :catch_2f
    move-exception v2

    .line 110
    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/security/cert/CertificateException;

    invoke-direct {v5, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Client certificates not supported!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 11
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->cache:Ljava/util/Set;

    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 163
    :goto_b
    return-void

    .line 1116
    :cond_c
    iget-object v3, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->systemTrustManagers:[Ljavax/net/ssl/TrustManager;

    array-length v4, v3

    move v2, v1

    :goto_10
    if-ge v2, v4, :cond_1d

    aget-object v0, v3, v2

    .line 1117
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 1116
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 1124
    :cond_1d
    iget-wide v2, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pinCreationTimeMillis:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_65

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pinCreationTimeMillis:J

    sub-long/2addr v2, v4

    const-wide v4, 0x39ef8b000L

    cmp-long v0, v2, v4

    if-lez v0, :cond_65

    .line 1127
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Certificate pins are stale, ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pinCreationTimeMillis:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " millis vs 15552000000 millis) falling back to system trust."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_5d
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->cache:Ljava/util/Set;

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1134
    :cond_65
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->systemKeyStore:Lio/fabric/sdk/android/services/network/SystemKeyStore;

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/network/CertificateChainCleaner;->getCleanChain([Ljava/security/cert/X509Certificate;Lio/fabric/sdk/android/services/network/SystemKeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 1137
    array-length v3, v2

    move v0, v1

    :goto_6d
    if-ge v0, v3, :cond_7a

    aget-object v4, v2, v0

    .line 1138
    invoke-direct {p0, v4}, Lio/fabric/sdk/android/services/network/PinningTrustManager;->isValidPin(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 1137
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 1143
    :cond_7a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "No valid pins found in chain!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method
