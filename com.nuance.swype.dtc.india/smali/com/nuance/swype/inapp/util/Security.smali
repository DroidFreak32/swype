.class public final Lcom/nuance/swype/inapp/util/Security;
.super Ljava/lang/Object;
.source "Security.java"


# direct methods
.method private static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    invoke-static {p0}, Lcom/nuance/swype/inapp/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 97
    .local v0, "decodedKey":[B
    const-string/jumbo v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 98
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nuance/swype/inapp/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    return-object v2

    .line 99
    .end local v0    # "decodedKey":[B
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 101
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 102
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string/jumbo v2, "IABUtil/Security"

    const-string/jumbo v3, "Invalid key specification."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 104
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 105
    .local v1, "e":Lcom/nuance/swype/inapp/util/Base64DecoderException;
    const-string/jumbo v2, "IABUtil/Security"

    const-string/jumbo v3, "Base64 decoding failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 122
    :try_start_0
    const-string/jumbo v2, "SHA1withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 123
    .local v0, "sig":Ljava/security/Signature;
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 124
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    .line 125
    invoke-static {p2}, Lcom/nuance/swype/inapp/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    const-string/jumbo v2, "IABUtil/Security"

    const-string/jumbo v3, "Signature verification failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nuance/swype/inapp/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 141
    .end local v0    # "sig":Ljava/security/Signature;
    :goto_0
    return v1

    .line 129
    .restart local v0    # "sig":Ljava/security/Signature;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "IABUtil/Security"

    const-string/jumbo v3, "NoSuchAlgorithmException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :catch_1
    move-exception v2

    const-string/jumbo v2, "IABUtil/Security"

    const-string/jumbo v3, "Invalid key specification."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :catch_2
    move-exception v2

    const-string/jumbo v2, "IABUtil/Security"

    const-string/jumbo v3, "Signature exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :catch_3
    move-exception v2

    const-string/jumbo v2, "IABUtil/Security"

    const-string/jumbo v3, "Base64 decoding failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :catch_4
    move-exception v2

    const-string/jumbo v2, "IABUtil/Security"

    const-string/jumbo v3, "UnsupportedEncodingException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "base64PublicKey"    # Ljava/lang/String;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 56
    if-nez p1, :cond_0

    .line 57
    const-string/jumbo v3, "IABUtil/Security"

    const-string/jumbo v4, "data is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return v2

    .line 62
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 63
    if-eqz p0, :cond_1

    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/nuance/swype/inapp/util/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 77
    .local v1, "key":Ljava/security/PublicKey;
    invoke-static {v1, p1, p2}, Lcom/nuance/swype/inapp/util/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 78
    if-nez v3, :cond_1

    .line 79
    const-string/jumbo v3, "IABUtil/Security"

    const-string/jumbo v4, "signature does not match data."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v1    # "key":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "IABUtil/Security"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "generate public key failed, error="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "IABUtil/Security"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "generate public key failed, error="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
