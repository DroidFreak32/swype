.class public final Lcom/nuance/swype/inapp/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final ALPHABET:[B

.field private static final DECODABET:[B

.field private static final WEBSAFE_ALPHABET:[B

.field private static final WEBSAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    const/16 v1, 0x40

    .line 64
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/inapp/util/Base64;->ALPHABET:[B

    .line 82
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nuance/swype/inapp/util/Base64;->WEBSAFE_ALPHABET:[B

    .line 101
    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/nuance/swype/inapp/util/Base64;->DECODABET:[B

    .line 135
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/nuance/swype/inapp/util/Base64;->WEBSAFE_DECODABET:[B

    return-void

    .line 64
    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 82
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 101
    :array_2
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    .line 135
    :array_3
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swype/inapp/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 433
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 434
    array-length v6, v5

    .line 1499
    sget-object v7, Lcom/nuance/swype/inapp/util/Base64;->DECODABET:[B

    .line 1529
    mul-int/lit8 v1, v6, 0x3

    div-int/lit8 v1, v1, 0x4

    .line 1530
    add-int/lit8 v1, v1, 0x2

    new-array v8, v1, [B

    .line 1531
    const/4 v3, 0x0

    .line 1533
    const/4 v1, 0x4

    new-array v9, v1, [B

    .line 1534
    const/4 v2, 0x0

    .line 1537
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_7

    .line 1538
    add-int/lit8 v1, v4, 0x0

    aget-byte v1, v5, v1

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v10, v1

    .line 1539
    aget-byte v1, v7, v10

    .line 1541
    const/4 v11, -0x5

    if-lt v1, v11, :cond_6

    .line 1542
    const/4 v11, -0x1

    if-lt v1, v11, :cond_b

    .line 1545
    const/16 v1, 0x3d

    if-ne v10, v1, :cond_5

    .line 1546
    sub-int v1, v6, v4

    .line 1547
    add-int/lit8 v10, v6, -0x1

    add-int/lit8 v10, v10, 0x0

    aget-byte v5, v5, v10

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    .line 1548
    if-eqz v2, :cond_0

    const/4 v10, 0x1

    if-ne v2, v10, :cond_1

    .line 1549
    :cond_0
    new-instance v1, Lcom/nuance/swype/inapp/util/Base64DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "invalid padding byte \'=\' at byte offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/swype/inapp/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, "Base64"

    const-string/jumbo v2, "decode: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    return-object v1

    .line 1551
    :cond_1
    const/4 v10, 0x3

    if-ne v2, v10, :cond_2

    const/4 v10, 0x2

    if-gt v1, v10, :cond_3

    :cond_2
    const/4 v10, 0x4

    if-ne v2, v10, :cond_4

    const/4 v10, 0x1

    if-le v1, v10, :cond_4

    .line 1553
    :cond_3
    :try_start_1
    new-instance v1, Lcom/nuance/swype/inapp/util/Base64DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "padding byte \'=\' falsely signals end of encoded value at offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/swype/inapp/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1556
    :cond_4
    const/16 v1, 0x3d

    if-eq v5, v1, :cond_7

    const/16 v1, 0xa

    if-eq v5, v1, :cond_7

    .line 1557
    new-instance v1, Lcom/nuance/swype/inapp/util/Base64DecoderException;

    const-string/jumbo v2, "encoded value has invalid trailing byte"

    invoke-direct {v1, v2}, Lcom/nuance/swype/inapp/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1563
    :cond_5
    add-int/lit8 v1, v2, 0x1

    aput-byte v10, v9, v2

    .line 1564
    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 1565
    invoke-static {v9, v8, v3, v7}, Lcom/nuance/swype/inapp/util/Base64;->decode4to3$355785af([B[BI[B)I

    move-result v1

    add-int v2, v3, v1

    .line 1566
    const/4 v1, 0x0

    .line 1537
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v1

    goto/16 :goto_0

    .line 1570
    :cond_6
    new-instance v1, Lcom/nuance/swype/inapp/util/Base64DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Bad Base64 input character at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v4, 0x0

    aget-byte v3, v5, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "(decimal)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/swype/inapp/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1581
    :cond_7
    if-eqz v2, :cond_9

    .line 1582
    const/4 v1, 0x1

    if-ne v2, v1, :cond_8

    .line 1583
    new-instance v1, Lcom/nuance/swype/inapp/util/Base64DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "single trailing character at offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v6, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/swype/inapp/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1586
    :cond_8
    const/16 v1, 0x3d

    aput-byte v1, v9, v2

    .line 1587
    invoke-static {v9, v8, v3, v7}, Lcom/nuance/swype/inapp/util/Base64;->decode4to3$355785af([B[BI[B)I

    move-result v1

    add-int/2addr v3, v1

    .line 1590
    :cond_9
    new-array v1, v3, [B

    .line 1591
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v8, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_a
    move v2, v3

    goto :goto_2

    :cond_b
    move v1, v2

    move v2, v3

    goto :goto_2
.end method

.method private static decode4to3$355785af([B[BI[B)I
    .locals 7
    .param p0, "source"    # [B
    .param p1, "destination"    # [B
    .param p2, "destOffset"    # I
    .param p3, "decodabet"    # [B

    .prologue
    const/16 v6, 0x3d

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 391
    aget-byte v4, p0, v2

    if-ne v4, v6, :cond_0

    .line 392
    aget-byte v2, p0, v5

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x6

    aget-byte v3, p0, v1

    aget-byte v3, p3, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0xc

    or-int v0, v2, v3

    .line 396
    .local v0, "outBuff":I
    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 419
    :goto_0
    return v1

    .line 398
    .end local v0    # "outBuff":I
    :cond_0
    aget-byte v4, p0, v3

    if-ne v4, v6, :cond_1

    .line 400
    aget-byte v3, p0, v5

    aget-byte v3, p3, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x6

    aget-byte v1, p0, v1

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v3

    aget-byte v3, p0, v2

    aget-byte v3, p3, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x12

    or-int v0, v1, v3

    .line 405
    .restart local v0    # "outBuff":I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 406
    add-int/lit8 v1, p2, 0x1

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    move v1, v2

    .line 407
    goto :goto_0

    .line 410
    .end local v0    # "outBuff":I
    :cond_1
    aget-byte v4, p0, v5

    aget-byte v4, p3, v4

    shl-int/lit8 v4, v4, 0x18

    ushr-int/lit8 v4, v4, 0x6

    aget-byte v1, p0, v1

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v4

    aget-byte v2, p0, v2

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v1, v2

    aget-byte v2, p0, v3

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 416
    .restart local v0    # "outBuff":I
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 417
    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 418
    add-int/lit8 v1, p2, 0x2

    int-to-byte v2, v0

    aput-byte v2, p1, v1

    move v1, v3

    .line 419
    goto :goto_0
.end method
