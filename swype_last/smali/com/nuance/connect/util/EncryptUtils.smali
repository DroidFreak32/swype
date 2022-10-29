.class public Lcom/nuance/connect/util/EncryptUtils;
.super Ljava/lang/Object;


# static fields
.field private static final DATABASE_PREFIX:Ljava/lang/String; = "A"

.field private static final ENCODING:Ljava/nio/charset/Charset;

.field private static final ENCRYPTION_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

.field private static databaseSecretKey:[B

.field private static final dbSecretKeyLock:[I

.field private static defaultSecretKey:Ljava/lang/String;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-string/jumbo v1, "EncryptUtils"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/util/EncryptUtils;->dbSecretKeyLock:[I

    sput-object v2, Lcom/nuance/connect/util/EncryptUtils;->databaseSecretKey:[B

    sput-object v2, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey:Ljava/lang/String;

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_2e

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/nuance/connect/util/EncryptUtils;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    return-void

    nop

    :array_2e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asByteArray(Ljava/util/UUID;)[B
    .registers 12

    const/16 v10, 0x10

    const/16 v0, 0x8

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    new-array v6, v10, [B

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1e

    rsub-int/lit8 v7, v1, 0x7

    mul-int/lit8 v7, v7, 0x8

    ushr-long v8, v2, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    :goto_1e
    if-ge v0, v10, :cond_2d

    rsub-int/lit8 v1, v0, 0x7

    mul-int/lit8 v1, v1, 0x8

    ushr-long v2, v4, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2d
    return-object v6
.end method

.method public static final base64ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    aput-byte v3, v0, v2

    array-length v1, p0

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final databaseDecryptString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_26

    const-string/jumbo v0, "A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0}, Lcom/nuance/connect/util/EncryptUtils;->databaseSecretKey(Landroid/content/Context;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/EncryptUtils;->secretDecrypt([B[B)[B

    move-result-object v1

    if-eqz v1, :cond_26

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static final databaseEncryptString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "A"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nuance/connect/util/EncryptUtils;->databaseSecretKey(Landroid/content/Context;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nuance/connect/util/EncryptUtils;->secretEncrypt(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/connect/util/EncryptUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static final databaseSecretKey(Landroid/content/Context;)[B
    .registers 4

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->dbSecretKeyLock:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->databaseSecretKey:[B

    if-nez v0, :cond_13

    invoke-static {p0}, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/util/EncryptUtils;->databaseSecretKey:[B

    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->databaseSecretKey:[B

    return-object v0

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public static final decodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static final decodeString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method private static decryptAESKey([BLjava/lang/String;Ljava/lang/String;)[B
    .registers 6

    const/16 v2, 0x10

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p2, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :try_start_11
    const-string/jumbo v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string/jumbo v1, "RSA/ECB/Pkcs1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v0, 0x0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_2d
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_2d} :catch_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_2d} :catch_3e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_11 .. :try_end_2d} :catch_4c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_11 .. :try_end_2d} :catch_5a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_11 .. :try_end_2d} :catch_68
    .catch Ljavax/crypto/BadPaddingException; {:try_start_11 .. :try_end_2d} :catch_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_2d} :catch_84

    move-result-object v0

    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decryptAESKey() Exception: "

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3c
    const/4 v0, 0x0

    goto :goto_2e

    :catch_3e
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decryptAESKey() Exception: "

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :catch_4c
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decryptAESKey() Exception: "

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :catch_5a
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decryptAESKey() Exception: "

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :catch_68
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decryptAESKey() Exception: "

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :catch_76
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decryptAESKey() Exception: "

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :catch_84
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decrypt() Exception: "

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c
.end method

.method public static final decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nuance/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final decryptString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/nuance/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final decryptString(Ljava/lang/String;[BI)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_15

    :try_start_2
    invoke-static {p0, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nuance/connect/util/EncryptUtils;->secretDecrypt([B[B)[B

    move-result-object v1

    if-eqz v1, :cond_15

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_13} :catch_14

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static final decryptStringBase64(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/nuance/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final defaultSecretKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/16 v4, 0x10

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->dbSecretKeyLock:[I

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey:Ljava/lang/String;

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey:Ljava/lang/String;

    if-nez v0, :cond_30

    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Could not create the default security key"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not create the default security key"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    :try_start_30
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey:Ljava/lang/String;

    sget-object v3, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->encodeByteArray([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_5e

    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey:Ljava/lang/String;
    :try_end_5a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_5a} :catch_81
    .catchall {:try_start_30 .. :try_end_5a} :catchall_2d

    :cond_5a
    :goto_5a
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_2d

    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey:Ljava/lang/String;

    return-object v0

    :cond_5e
    :try_start_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "0000000000000000"

    sget-object v3, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey:Ljava/lang/String;
    :try_end_80
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5e .. :try_end_80} :catch_81
    .catchall {:try_start_5e .. :try_end_80} :catchall_2d

    goto :goto_5a

    :catch_81
    move-exception v0

    :try_start_82
    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Could not generate the default security key"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not generate the default security key"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_93
    .catchall {:try_start_82 .. :try_end_93} :catchall_2d
.end method

.method public static final encodeByteArray([B)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/connect/util/EncryptUtils;->encodeByteArray([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeByteArray([BI)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/connect/util/EncryptUtils;->encodeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nuance/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encryptString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_d

    invoke-static {p0, p1}, Lcom/nuance/connect/util/EncryptUtils;->secretEncrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static final encryptStringBase64(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_10

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/connect/util/EncryptUtils;->secretEncrypt(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static getBytesOfFile(Ljava/lang/String;)[B
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_1c
    .catchall {:try_start_1 .. :try_end_b} :catchall_2d

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    if-lez v0, :cond_3a

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_48
    .catchall {:try_start_b .. :try_end_16} :catchall_40

    if-eqz v2, :cond_1b

    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_38

    :cond_1b
    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    move-object v0, v1

    :goto_1e
    :try_start_1e
    sget-object v2, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Could not open the file: "

    invoke-interface {v2, v3, p0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_43

    if-eqz v0, :cond_2b

    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_36

    :cond_2b
    :goto_2b
    move-object v0, v1

    goto :goto_1b

    :catchall_2d
    move-exception v0

    :goto_2e
    if-eqz v1, :cond_33

    :try_start_30
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    :cond_33
    :goto_33
    throw v0

    :catch_34
    move-exception v1

    goto :goto_33

    :catch_36
    move-exception v0

    goto :goto_2b

    :catch_38
    move-exception v1

    goto :goto_1b

    :cond_3a
    if-eqz v2, :cond_2b

    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_36

    goto :goto_2b

    :catchall_40
    move-exception v0

    move-object v1, v2

    goto :goto_2e

    :catchall_43
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2e

    :catch_48
    move-exception v0

    move-object v0, v2

    goto :goto_1e
.end method

.method public static final hashPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string/jumbo v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_25} :catch_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_25} :catch_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_25} :catch_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_25} :catch_27

    move-result-object v0

    :goto_26
    return-object v0

    :catch_27
    move-exception v0

    :goto_28
    const/4 v0, 0x0

    goto :goto_26

    :catch_2a
    move-exception v0

    goto :goto_28

    :catch_2c
    move-exception v0

    goto :goto_28

    :catch_2e
    move-exception v0

    goto :goto_28
.end method

.method public static final legacyDecrypt([BLjava/lang/String;Ljava/lang/String;)[B
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/nuance/connect/util/EncryptUtils;->decryptAESKey([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_42

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Lcom/nuance/connect/util/EncryptUtils;->strToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_42

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_20
    const-string/jumbo v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v1, 0x80

    array-length v2, p0

    add-int/lit8 v2, v2, -0x80

    invoke-virtual {v0, p0, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_33
    .catch Ljava/security/InvalidKeyException; {:try_start_20 .. :try_end_33} :catch_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_33} :catch_44
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_20 .. :try_end_33} :catch_52
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_20 .. :try_end_33} :catch_60
    .catch Ljavax/crypto/BadPaddingException; {:try_start_20 .. :try_end_33} :catch_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_33} :catch_7c

    move-result-object v0

    :goto_34
    return-object v0

    :catch_35
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decrypt() Exception: "

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    :goto_42
    const/4 v0, 0x0

    goto :goto_34

    :catch_44
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decrypt() Exception: "

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_42

    :catch_52
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decrypt() Exception: "

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_42

    :catch_60
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decrypt() Exception: "

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_42

    :catch_6e
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decrypt() Exception: "

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_42

    :catch_7c
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "decrypt() Exception: "

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_42
.end method

.method public static final legacyDecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string/jumbo v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    if-eqz v1, :cond_3f

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    :goto_31
    return-object v0

    :catch_32
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error Unpacking: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public static md5(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_143

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_8} :catch_11

    move-result v2

    if-ne v2, v0, :cond_143

    :goto_b
    if-nez v0, :cond_20

    const-string/jumbo v0, ""

    :cond_10
    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    sget-object v2, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error accessing file to create MD5 for:"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_b

    :cond_20
    :try_start_20
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_30} :catch_13a
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_30} :catch_9f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_30} :catch_bb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_30} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_30} :catch_f0
    .catchall {:try_start_20 .. :try_end_30} :catchall_10b

    :try_start_30
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_35} :catch_13e
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_35} :catch_133
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_12e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_30 .. :try_end_35} :catch_129
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_124
    .catchall {:try_start_30 .. :try_end_35} :catchall_11b

    const/16 v3, 0x2000

    :try_start_37
    new-array v3, v3, [B

    :goto_39
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_61

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_37 .. :try_end_43} :catch_44
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_43} :catch_137
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_43} :catch_131
    .catch Ljava/lang/OutOfMemoryError; {:try_start_37 .. :try_end_43} :catch_12c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_43} :catch_127
    .catchall {:try_start_37 .. :try_end_43} :catchall_11e

    goto :goto_39

    :catch_44
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    :goto_47
    :try_start_47
    sget-object v2, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error getting the md5!!"

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_120

    if-eqz v1, :cond_58

    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_58
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5d} :catch_b9

    :cond_5d
    :goto_5d
    const-string/jumbo v0, ""

    goto :goto_10

    :cond_61
    :try_start_61
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_6d
    array-length v5, v0

    if-ge v1, v5, :cond_8c

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    if-ge v5, v6, :cond_7e

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7e
    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_8c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_61 .. :try_end_8f} :catch_44
    .catch Ljava/io/FileNotFoundException; {:try_start_61 .. :try_end_8f} :catch_137
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_8f} :catch_131
    .catch Ljava/lang/OutOfMemoryError; {:try_start_61 .. :try_end_8f} :catch_12c
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_8f} :catch_127
    .catchall {:try_start_61 .. :try_end_8f} :catchall_11e

    move-result-object v0

    if-eqz v2, :cond_95

    :try_start_92
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_95
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9a} :catch_9c

    goto/16 :goto_10

    :catch_9c
    move-exception v1

    goto/16 :goto_10

    :catch_9f
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_a2
    :try_start_a2
    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Unable to find file."

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ae
    .catchall {:try_start_a2 .. :try_end_ae} :catchall_11e

    if-eqz v2, :cond_b3

    :try_start_b0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_b3
    if-eqz v4, :cond_5d

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b8} :catch_b9

    goto :goto_5d

    :catch_b9
    move-exception v0

    goto :goto_5d

    :catch_bb
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_be
    :try_start_be
    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "File reading failed: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ca
    .catchall {:try_start_be .. :try_end_ca} :catchall_11e

    if-eqz v2, :cond_cf

    :try_start_cc
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_cf
    if-eqz v4, :cond_5d

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d4} :catch_b9

    goto :goto_5d

    :catch_d5
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_d8
    :try_start_d8
    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Ran out of memory trying to generate MD5"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e4
    .catchall {:try_start_d8 .. :try_end_e4} :catchall_11e

    if-eqz v2, :cond_e9

    :try_start_e6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_e9
    if-eqz v4, :cond_5d

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ee} :catch_b9

    goto/16 :goto_5d

    :catch_f0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_f3
    :try_start_f3
    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Exception while attempting to generate MD5 from file: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ff
    .catchall {:try_start_f3 .. :try_end_ff} :catchall_11e

    if-eqz v2, :cond_104

    :try_start_101
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_104
    if-eqz v4, :cond_5d

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_109} :catch_b9

    goto/16 :goto_5d

    :catchall_10b
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_10e
    if-eqz v2, :cond_113

    :try_start_110
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_113
    if-eqz v4, :cond_118

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_118} :catch_119

    :cond_118
    :goto_118
    throw v0

    :catch_119
    move-exception v1

    goto :goto_118

    :catchall_11b
    move-exception v0

    move-object v2, v3

    goto :goto_10e

    :catchall_11e
    move-exception v0

    goto :goto_10e

    :catchall_120
    move-exception v0

    move-object v2, v1

    move-object v4, v3

    goto :goto_10e

    :catch_124
    move-exception v0

    move-object v2, v3

    goto :goto_f3

    :catch_127
    move-exception v0

    goto :goto_f3

    :catch_129
    move-exception v0

    move-object v2, v3

    goto :goto_d8

    :catch_12c
    move-exception v0

    goto :goto_d8

    :catch_12e
    move-exception v0

    move-object v2, v3

    goto :goto_be

    :catch_131
    move-exception v0

    goto :goto_be

    :catch_133
    move-exception v0

    move-object v2, v3

    goto/16 :goto_a2

    :catch_137
    move-exception v0

    goto/16 :goto_a2

    :catch_13a
    move-exception v0

    move-object v1, v3

    goto/16 :goto_47

    :catch_13e
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_47

    :cond_143
    move v0, v1

    goto/16 :goto_b
.end method

.method public static md5([B)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_6

    const-string/jumbo v0, ""

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_1d
    array-length v3, v1

    if-ge v0, v3, :cond_3c

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2e

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_3f} :catch_41
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_3f} :catch_4e

    move-result-object v0

    goto :goto_5

    :catch_41
    move-exception v0

    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Error getting the md5!!"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_4a
    const-string/jumbo v0, ""

    goto :goto_5

    :catch_4e
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Out of Memory attempting to generate an MD5: "

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4a
.end method

.method public static final secretDecrypt([B[B)[B
    .registers 6

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    sget-object v3, Lcom/nuance/connect/util/EncryptUtils;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v0

    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error Unpacking: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static final secretEncrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/connect/util/EncryptUtils;->secretEncrypt(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static final secretEncrypt(Ljava/lang/String;[B)[B
    .registers 6

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/nuance/connect/util/EncryptUtils;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object v0, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v0

    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error Bundling: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string/jumbo v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/util/EncryptUtils;->ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_17
    array-length v3, v1

    if-ge v0, v3, :cond_31

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

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_34} :catch_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_34} :catch_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_34} :catch_36

    move-result-object v0

    :goto_35
    return-object v0

    :catch_36
    move-exception v0

    :goto_37
    const/4 v0, 0x0

    goto :goto_35

    :catch_39
    move-exception v0

    goto :goto_37

    :catch_3b
    move-exception v0

    goto :goto_37
.end method

.method public static shrinkUUID(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->asByteArray(Ljava/util/UUID;)[B

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/nuance/connect/util/EncryptUtils;->encodeByteArray([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strToBytes(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    div-int/lit8 v3, v1, 0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v3
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_22} :catch_25

    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    :catch_25
    move-exception v0

    const/4 v0, 0x0

    :cond_27
    return-object v0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .registers 4

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x24

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x1

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method
