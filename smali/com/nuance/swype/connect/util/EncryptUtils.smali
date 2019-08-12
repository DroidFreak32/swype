.class public Lcom/nuance/swype/connect/util/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# static fields
.field private static final publicKeyExponent:Ljava/lang/String; = "10001"

.field private static final publicKeyModulus:Ljava/lang/String; = "b62a557144ca38d42e69cb430a08d629066fc687713ec7c11c2825369a48b97756d7eb958d7b4eef9786a2467bccfa4dae228709b12efcfadaf8fea6dd149df77db523fd41758a0ca7de1d6765936960b6bcaaaac8029d9214983a19298318dfe4289f1dc8978ee49a158ec3fdf44fd44617444576d288c0c9289a7bcec6f6c5"

.field private static final secretKey:Ljava/lang/String; = "75DE491A38FD348E06C1B0313A97CB00"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asByteArray(Ljava/util/UUID;)[B
    .locals 9
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    const/16 v8, 0x10

    .line 442
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 443
    .local v4, "msb":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 444
    .local v2, "lsb":J
    new-array v0, v8, [B

    .line 446
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v1, v6, :cond_0

    .line 447
    rsub-int/lit8 v6, v1, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v4, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    :cond_0
    const/16 v1, 0x8

    :goto_1
    if-ge v1, v8, :cond_1

    .line 450
    rsub-int/lit8 v6, v1, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 453
    :cond_1
    return-object v0
.end method

.method public static final base64ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 303
    invoke-static {v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 458
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 459
    .local v0, "b2":[B
    aput-byte v3, v0, v2

    .line 460
    array-length v1, p0

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 236
    .local v0, "base64":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static final decodeString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 241
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 242
    .local v0, "base64":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static final decrypt([B)[B
    .locals 6
    .param p0, "message"    # [B

    .prologue
    .line 355
    invoke-static {p0}, Lcom/nuance/swype/connect/util/EncryptUtils;->decryptAESKey([B)[B

    move-result-object v0

    .line 356
    .local v0, "aesKey":[B
    if-eqz v0, :cond_0

    .line 357
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/nuance/swype/connect/util/EncryptUtils;->strToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 358
    .local v2, "raw_aeskey":[B
    if-eqz v2, :cond_0

    .line 359
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 361
    .local v3, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 363
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 364
    const/16 v4, 0x80

    array-length v5, p0

    add-int/lit8 v5, v5, -0x80

    invoke-virtual {v1, p0, v4, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 381
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "raw_aeskey":[B
    .end local v3    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .restart local v2    # "raw_aeskey":[B
    .restart local v3    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v4

    .end local v2    # "raw_aeskey":[B
    .end local v3    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 378
    .restart local v2    # "raw_aeskey":[B
    .restart local v3    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_1

    :catch_5
    move-exception v4

    goto :goto_1
.end method

.method private static decryptAESKey([B)[B
    .locals 7
    .param p0, "message"    # [B

    .prologue
    const/16 v6, 0x10

    .line 384
    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "b62a557144ca38d42e69cb430a08d629066fc687713ec7c11c2825369a48b97756d7eb958d7b4eef9786a2467bccfa4dae228709b12efcfadaf8fea6dd149df77db523fd41758a0ca7de1d6765936960b6bcaaaac8029d9214983a19298318dfe4289f1dc8978ee49a158ec3fdf44fd44617444576d288c0c9289a7bcec6f6c5"

    invoke-direct {v3, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 385
    .local v3, "modulus":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    const-string v5, "10001"

    invoke-direct {v1, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 386
    .local v1, "exponent":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v3, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 389
    .local v2, "keySpec":Ljava/security/spec/RSAPublicKeySpec;
    :try_start_0
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 390
    invoke-virtual {v5, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 391
    .local v4, "pubKey":Ljava/security/PublicKey;
    const-string v5, "RSA/ECB/Pkcs1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 392
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 393
    const/4 v5, 0x0

    const/16 v6, 0x80

    invoke-virtual {v0, p0, v5, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 411
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "pubKey":Ljava/security/PublicKey;
    :goto_0
    return-object v5

    :catch_0
    move-exception v5

    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 409
    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_1

    :catch_4
    move-exception v5

    goto :goto_1

    :catch_5
    move-exception v5

    goto :goto_1

    :catch_6
    move-exception v5

    goto :goto_1
.end method

.method public static final decryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 278
    const-string v0, "75DE491A38FD348E06C1B0313A97CB00"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/nuance/swype/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final decryptString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/nuance/swype/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final decryptString(Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "secret"    # [B
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 290
    if-eqz p0, :cond_0

    .line 292
    :try_start_0
    invoke-static {p0, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 293
    invoke-static {v1, p1}, Lcom/nuance/swype/connect/util/EncryptUtils;->secretDecrypt([B[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 298
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final decryptStringBase64(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 282
    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/nuance/swype/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeByteArray([B)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # [B

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->encodeByteArray([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeByteArray([BI)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 231
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->encodeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 223
    invoke-static {v0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 251
    const-string v0, "75DE491A38FD348E06C1B0313A97CB00"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/nuance/swype/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encryptString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 255
    if-eqz p0, :cond_0

    .line 256
    invoke-static {p0, p1}, Lcom/nuance/swype/connect/util/EncryptUtils;->secretEncrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 257
    invoke-static {v0, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final encryptStringBase64(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 263
    if-eqz p0, :cond_0

    .line 264
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 265
    .local v0, "key":[B
    invoke-static {p0, v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->secretEncrypt(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 266
    invoke-static {v1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 268
    .end local v0    # "key":[B
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBytesOfFile(Ljava/lang/String;)[B
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v3, "licenseFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 42
    .local v4, "size":I
    if-lez v4, :cond_0

    .line 43
    new-array v0, v4, [B

    .line 44
    .local v0, "data":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    move-object v1, v2

    .line 61
    .end local v0    # "data":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "licenseFile":Ljava/io/File;
    .end local v4    # "size":I
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_1
    return-object v0

    .line 53
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "licenseFile":Ljava/io/File;
    .restart local v4    # "size":I
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v2

    .line 61
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "licenseFile":Ljava/io/File;
    .end local v4    # "size":I
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 58
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "licenseFile":Ljava/io/File;
    .restart local v4    # "size":I
    :catch_0
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 49
    .end local v3    # "licenseFile":Ljava/io/File;
    .end local v4    # "size":I
    :catch_1
    move-exception v5

    .line 53
    :goto_3
    if-eqz v1, :cond_1

    .line 55
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 58
    :catch_2
    move-exception v5

    goto :goto_2

    .line 53
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_2

    .line 55
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 58
    :cond_2
    :goto_5
    throw v5

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "licenseFile":Ljava/io/File;
    .restart local v4    # "size":I
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v0    # "data":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "licenseFile":Ljava/io/File;
    .end local v4    # "size":I
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    goto :goto_5

    .line 53
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "licenseFile":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 49
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static final hashPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 182
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 183
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 184
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 186
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 187
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 193
    .end local v0    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 192
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static final md5(Ljava/io/File;)Ljava/lang/String;
    .locals 21
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 100
    const/16 v18, 0x0

    .line 103
    .local v18, "validFile":Z
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 104
    const/16 v18, 0x1

    .line 111
    :cond_0
    :goto_0
    if-nez v18, :cond_1

    .line 112
    const-string v19, ""

    .line 176
    :goto_1
    return-object v19

    .line 108
    :catch_0
    move-exception v19

    const/16 v18, 0x0

    goto :goto_0

    .line 115
    :cond_1
    const/4 v8, 0x0

    .line 116
    .local v8, "fileStream":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 119
    .local v16, "stream":Ljava/io/BufferedInputStream;
    :try_start_1
    const-string v19, "MD5"

    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 120
    .local v6, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    .line 122
    .local v14, "messageDigest":[B
    new-instance v9, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .local v9, "fileStream":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v17, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    .end local v16    # "stream":Ljava/io/BufferedInputStream;
    .local v17, "stream":Ljava/io/BufferedInputStream;
    const/16 v19, 0x2000

    :try_start_3
    move/from16 v0, v19

    new-array v5, v0, [B

    .line 127
    .local v5, "bytes":[B
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    .local v4, "byteCount":I
    if-lez v4, :cond_4

    .line 128
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v5, v0, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .end local v4    # "byteCount":I
    .end local v5    # "bytes":[B
    :catch_1
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/BufferedInputStream;
    .restart local v16    # "stream":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .line 166
    .end local v6    # "digest":Ljava/security/MessageDigest;
    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .end local v14    # "messageDigest":[B
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v16, :cond_2

    .line 167
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_2
    if-eqz v8, :cond_3

    .line 170
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_14

    .line 176
    :cond_3
    :goto_4
    const-string v19, ""

    goto :goto_1

    .line 131
    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .end local v16    # "stream":Ljava/io/BufferedInputStream;
    .restart local v4    # "byteCount":I
    .restart local v5    # "bytes":[B
    .restart local v6    # "digest":Ljava/security/MessageDigest;
    .restart local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v14    # "messageDigest":[B
    .restart local v17    # "stream":Ljava/io/BufferedInputStream;
    :cond_4
    :try_start_5
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 132
    .local v7, "digestBytes":[B
    new-instance v15, Ljava/lang/StringBuilder;

    array-length v0, v7

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    .local v15, "sb":Ljava/lang/StringBuilder;
    move-object v2, v7

    .local v2, "arr$":[B
    array-length v13, v7

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_5
    if-ge v12, v13, :cond_5

    aget-byte v3, v2, v12

    .line 134
    .local v3, "b":B
    const-string v19, "0123456789abcdef"

    and-int/lit16 v0, v3, 0xf0

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    const-string v19, "0123456789abcdef"

    and-int/lit8 v20, v3, 0xf

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 140
    .end local v3    # "b":B
    :cond_5
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v10, "hexString":Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_7

    .line 142
    aget-byte v19, v14, v11

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "b":Ljava/lang/String;
    aget-byte v19, v14, v11

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 144
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "0"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    :cond_6
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 152
    .end local v3    # "b":Ljava/lang/String;
    :cond_7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v19

    .line 166
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v20

    goto/16 :goto_1

    .end local v2    # "arr$":[B
    .end local v4    # "byteCount":I
    .end local v5    # "bytes":[B
    .end local v6    # "digest":Ljava/security/MessageDigest;
    .end local v7    # "digestBytes":[B
    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .end local v10    # "hexString":Ljava/lang/StringBuffer;
    .end local v11    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "messageDigest":[B
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "stream":Ljava/io/BufferedInputStream;
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v19

    .line 166
    :goto_7
    if-eqz v16, :cond_8

    .line 167
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_8
    if-eqz v8, :cond_3

    .line 170
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_4

    .line 174
    :catch_4
    move-exception v19

    goto/16 :goto_4

    :catch_5
    move-exception v19

    .line 166
    :goto_8
    if-eqz v16, :cond_9

    .line 167
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_9
    if-eqz v8, :cond_3

    .line 170
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_4

    .line 174
    :catch_6
    move-exception v19

    goto/16 :goto_4

    :catch_7
    move-exception v19

    .line 166
    :goto_9
    if-eqz v16, :cond_a

    .line 167
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_a
    if-eqz v8, :cond_3

    .line 170
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_4

    .line 174
    :catch_8
    move-exception v19

    goto/16 :goto_4

    :catch_9
    move-exception v19

    .line 166
    :goto_a
    if-eqz v16, :cond_b

    .line 167
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_b
    if-eqz v8, :cond_3

    .line 170
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_4

    .line 174
    :catch_a
    move-exception v19

    goto/16 :goto_4

    .line 165
    :catchall_0
    move-exception v19

    .line 166
    :goto_b
    if-eqz v16, :cond_c

    .line 167
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_c
    if-eqz v8, :cond_d

    .line 170
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 173
    :cond_d
    :goto_c
    throw v19

    :catch_b
    move-exception v20

    goto :goto_c

    .line 165
    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .restart local v6    # "digest":Ljava/security/MessageDigest;
    .restart local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v14    # "messageDigest":[B
    :catchall_1
    move-exception v19

    move-object v8, v9

    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_b

    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .end local v16    # "stream":Ljava/io/BufferedInputStream;
    .restart local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/BufferedInputStream;
    .restart local v16    # "stream":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_b

    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileStream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v19

    move-object v8, v9

    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_a

    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .end local v16    # "stream":Ljava/io/BufferedInputStream;
    .restart local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/BufferedInputStream;
    .restart local v16    # "stream":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_a

    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileStream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v19

    move-object v8, v9

    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .end local v16    # "stream":Ljava/io/BufferedInputStream;
    .restart local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/BufferedInputStream;
    :catch_f
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/BufferedInputStream;
    .restart local v16    # "stream":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileStream":Ljava/io/FileInputStream;
    :catch_10
    move-exception v19

    move-object v8, v9

    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .end local v16    # "stream":Ljava/io/BufferedInputStream;
    .restart local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/BufferedInputStream;
    :catch_11
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/BufferedInputStream;
    .restart local v16    # "stream":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileStream":Ljava/io/FileInputStream;
    :catch_12
    move-exception v19

    move-object v8, v9

    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .end local v16    # "stream":Ljava/io/BufferedInputStream;
    .restart local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/BufferedInputStream;
    :catch_13
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/BufferedInputStream;
    .restart local v16    # "stream":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 174
    .end local v6    # "digest":Ljava/security/MessageDigest;
    .end local v14    # "messageDigest":[B
    :catch_14
    move-exception v19

    goto/16 :goto_4

    :catch_15
    move-exception v19

    goto/16 :goto_3

    .end local v8    # "fileStream":Ljava/io/FileInputStream;
    .restart local v6    # "digest":Ljava/security/MessageDigest;
    .restart local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v14    # "messageDigest":[B
    :catch_16
    move-exception v19

    move-object v8, v9

    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileStream":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static final md5([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const-string v5, ""

    .line 95
    :goto_0
    return-object v5

    .line 75
    :cond_0
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 76
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 80
    .local v4, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 82
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "b":Ljava/lang/String;
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "b":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    :catch_0
    move-exception v5

    .line 95
    :goto_2
    const-string v5, ""

    goto :goto_0

    .line 94
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public static final secretDecrypt([B[B)Ljava/lang/String;
    .locals 4
    .param p0, "raw"    # [B
    .param p1, "secret"    # [B

    .prologue
    .line 338
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 339
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 340
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 341
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final secretEncrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 314
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 315
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 316
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 321
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final secretEncrypt(Ljava/lang/String;[B)[B
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "secret"    # [B

    .prologue
    .line 326
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 327
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 328
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 333
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 198
    :try_start_0
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 200
    .local v1, "result":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 202
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 209
    .end local v0    # "i":I
    .end local v1    # "result":[B
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v3

    :catch_0
    move-exception v3

    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 208
    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public static shrinkUUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uuidString"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 434
    invoke-static {v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->asByteArray(Ljava/util/UUID;)[B

    move-result-object v0

    .line 435
    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/EncryptUtils;->encodeByteArray([BI)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 419
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 420
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 421
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 422
    and-int/lit16 v0, v3, 0xff

    .line 423
    .local v0, "high":I
    div-int/lit8 v3, v1, 0x2

    int-to-byte v4, v0

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 427
    .end local v0    # "high":I
    :catch_0
    move-exception v3

    const/4 v2, 0x0

    .end local v2    # "result":[B
    :cond_0
    return-object v2
.end method
