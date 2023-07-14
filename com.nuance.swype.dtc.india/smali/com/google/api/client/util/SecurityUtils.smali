.class public final Lcom/google/api/client/util/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# direct methods
.method public static loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "keyStream"    # Ljava/io/InputStream;
    .param p2, "storePass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static loadKeyStoreFromCertificates(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/io/InputStream;)V
    .locals 4
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "certificateFactory"    # Ljava/security/cert/CertificateFactory;
    .param p2, "certificateStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, "i":I
    invoke-virtual {p1, p2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 255
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    .line 257
    goto :goto_0

    .line 258
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    return-void
.end method

.method public static verify(Ljava/security/Signature;Ljavax/net/ssl/X509TrustManager;Ljava/util/List;[B[B)Ljava/security/cert/X509Certificate;
    .locals 10
    .param p0, "signatureAlgorithm"    # Ljava/security/Signature;
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .param p3, "signatureBytes"    # [B
    .param p4, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Signature;",
            "Ljavax/net/ssl/X509TrustManager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[B[B)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1222
    .local p2, "certChainBase64":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 193
    .local v3, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    new-array v4, v9, [Ljava/security/cert/X509Certificate;

    .line 194
    .local v4, "certificates":[Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    .line 195
    .local v5, "currentCert":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2101
    invoke-static {v9}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    .line 197
    .local v2, "certDer":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 199
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 200
    .local v1, "cert":Ljava/security/cert/Certificate;
    instance-of v9, v1, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v9, :cond_0

    .line 201
    const/4 v9, 0x0

    .line 217
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .end local v2    # "certDer":[B
    .end local v3    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v5    # "currentCert":I
    .end local v7    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v9

    .line 191
    :catch_0
    move-exception v9

    const/4 v9, 0x0

    goto :goto_1

    .line 203
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "cert":Ljava/security/cert/Certificate;
    .restart local v2    # "certDer":[B
    .restart local v3    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v5    # "currentCert":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "currentCert":I
    .local v6, "currentCert":I
    :try_start_2
    check-cast v1, Ljava/security/cert/X509Certificate;

    .end local v1    # "cert":Ljava/security/cert/Certificate;
    aput-object v1, v4, v5
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3

    move v5, v6

    .line 206
    .end local v6    # "currentCert":I
    .restart local v5    # "currentCert":I
    goto :goto_0

    .line 205
    :catch_1
    move-exception v9

    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 209
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "certDer":[B
    :cond_1
    :try_start_3
    const-string/jumbo v9, "RSA"

    invoke-interface {p1, v4, v9}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 213
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    .line 214
    .local v8, "pubKey":Ljava/security/PublicKey;
    invoke-static {p0, v8, p3, p4}, Lcom/google/api/client/util/SecurityUtils;->verify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 215
    const/4 v9, 0x0

    aget-object v9, v4, v9

    goto :goto_1

    .line 211
    .end local v8    # "pubKey":Ljava/security/PublicKey;
    :catch_2
    move-exception v9

    const/4 v9, 0x0

    goto :goto_1

    .line 217
    .restart local v8    # "pubKey":Ljava/security/PublicKey;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 205
    .end local v5    # "currentCert":I
    .end local v8    # "pubKey":Ljava/security/PublicKey;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "certDer":[B
    .restart local v6    # "currentCert":I
    :catch_3
    move-exception v9

    move v5, v6

    .end local v6    # "currentCert":I
    .restart local v5    # "currentCert":I
    goto :goto_2
.end method

.method public static verify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z
    .locals 1
    .param p0, "signatureAlgorithm"    # Ljava/security/Signature;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "signatureBytes"    # [B
    .param p3, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 163
    invoke-virtual {p0, p3}, Ljava/security/Signature;->update([B)V

    .line 166
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 168
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
