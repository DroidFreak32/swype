.class public final Lcom/nuance/id/NuanceIdImpl;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToStr([B)Ljava/lang/String;
    .registers 6

    .prologue
    .line 0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_2b

    aget-byte v1, p0, v0

    and-int/lit16 v3, v1, 0xff

    .line 1000
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    if-ge v3, v4, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 0
    :cond_25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static generateHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string/jumbo v1, "2beebf614f0f4f6096051804940a8d6e"
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_46

    if-eqz p0, :cond_16

    :try_start_c
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_16} :catch_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_16} :catch_46

    :cond_16
    :goto_16
    :try_start_16
    invoke-static {v1}, Lcom/nuance/id/NuanceIdImpl;->strToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/id/NuanceIdImpl;->bytesToStr([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_44} :catch_46

    move-result-object v0

    :goto_45
    return-object v0

    :catch_46
    move-exception v0

    const-string/jumbo v0, "00000000000000000000000000000000000000000000000000000000000000000"

    goto :goto_45

    :catch_4b
    move-exception v2

    goto :goto_16
.end method

.method public static sha1hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_1c

    move-result-object v0

    if-eqz p0, :cond_13

    :try_start_9
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_13} :catch_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_13} :catch_1c

    :cond_13
    :goto_13
    :try_start_13
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/id/NuanceIdImpl;->bytesToStr([B)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_1a} :catch_1c

    move-result-object v0

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    const-string/jumbo v0, "00000000000000000000000000000000000000000000000000000000000000000"

    goto :goto_1b

    :catch_21
    move-exception v1

    goto :goto_13
.end method

.method private static strToBytes(Ljava/lang/String;)[B
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

    if-ge v1, v2, :cond_26

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
    move-exception v1

    :cond_26
    return-object v0
.end method
