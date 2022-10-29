.class public final Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;
.super Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;
.source "Base64.java"


# static fields
.field static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private bitWorkArea:I

.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x40

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 80
    new-array v0, v1, [B

    fill-array-data v0, :array_28

    sput-object v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 93
    new-array v0, v1, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 112
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_70

    sput-object v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    return-void

    .line 71
    :array_22
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 80
    nop

    :array_28
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

    .line 93
    :array_4c
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

    .line 112
    :array_70
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
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
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
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
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
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
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>(B)V

    .line 177
    return-void
.end method

.method private constructor <init>(B)V
    .registers 3

    .prologue
    .line 217
    sget-object v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>([B)V

    .line 218
    return-void
.end method

.method private constructor <init>(I[BZ)V
    .registers 9
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "urlSafe"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 272
    if-nez p2, :cond_39

    move v1, v2

    :goto_6
    invoke-direct {p0, v2, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;-><init>(II)V

    .line 140
    sget-object v1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    iput-object v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    .line 277
    if-eqz p2, :cond_4c

    .line 278
    invoke-virtual {p0, p2}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->containsAlphabetOrPad([B)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1283
    const-string/jumbo v1, "UTF-8"

    invoke-static {p2, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "lineSeparator must not contain base64 characters: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    .end local v0    # "sep":Ljava/lang/String;
    :cond_39
    array-length v1, p2

    goto :goto_6

    .line 287
    :cond_3b
    iput v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 288
    iput-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    .line 294
    :goto_3f
    iget v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeSize:I

    .line 295
    if-eqz p3, :cond_51

    sget-object v1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_49
    iput-object v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    .line 296
    return-void

    .line 291
    :cond_4c
    iput v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 292
    iput-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_3f

    .line 295
    :cond_51
    sget-object v1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_49
.end method

.method private constructor <init>([B)V
    .registers 3
    .param p1, "lineSeparator"    # [B

    .prologue
    const/4 v0, 0x0

    .line 243
    invoke-direct {p0, v0, p1, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 244
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .registers 3
    .param p0, "base64String"    # Ljava/lang/String;

    .prologue
    .line 669
    new-instance v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>()V

    .line 5129
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 4306
    invoke-virtual {v0, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    .line 669
    return-object v0
.end method

.method private static encodeBase64$7ec3bde1([BZ)[B
    .registers 8
    .param p0, "binaryData"    # [B
    .param p1, "urlSafe"    # Z

    .prologue
    .line 622
    .line 3642
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_6

    .line 3643
    .end local p0    # "binaryData":[B
    :cond_5
    :goto_5
    return-object p0

    .line 3648
    .restart local p0    # "binaryData":[B
    :cond_6
    new-instance v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v1, v2, p1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 3649
    invoke-virtual {v0, p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->getEncodedLength([B)J

    move-result-wide v2

    .line 3650
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_36

    .line 3651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Input array too big, the output array would be bigger ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") than the specified maximum size of 2147483647"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3657
    :cond_36
    invoke-virtual {v0, p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_5
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .registers 3
    .param p0, "binaryData"    # [B

    .prologue
    .line 552
    .line 1604
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64$7ec3bde1([BZ)[B

    move-result-object v0

    .line 2283
    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .registers 3
    .param p0, "binaryData"    # [B

    .prologue
    .line 578
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64$7ec3bde1([BZ)[B

    move-result-object v0

    .line 3283
    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    return-object v0
.end method


# virtual methods
.method final decode([BII)V
    .registers 12
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    const/4 v7, 0x1

    .line 417
    iget-boolean v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v4, :cond_6

    .line 468
    :cond_5
    :goto_5
    return-void

    .line 420
    :cond_6
    if-gez p3, :cond_a

    .line 421
    iput-boolean v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->eof:Z

    .line 423
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_c
    if-ge v1, p3, :cond_c4

    .line 424
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v4}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->ensureBufferSize(I)V

    .line 425
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 426
    .local v0, "b":B
    const/16 v4, 0x3d

    if-ne v0, v4, :cond_46

    .line 428
    iput-boolean v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->eof:Z

    .line 449
    .end local v0    # "b":B
    :goto_1d
    iget-boolean v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->modulus:I

    if-eqz v4, :cond_5

    .line 450
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v4}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->ensureBufferSize(I)V

    .line 454
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->modulus:I

    packed-switch v4, :pswitch_data_c8

    goto :goto_5

    .line 458
    :pswitch_30
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    .line 459
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_5

    .line 431
    .restart local v0    # "b":B
    :cond_46
    if-ltz v0, :cond_97

    sget-object v4, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v4, v4

    if-ge v0, v4, :cond_97

    .line 432
    sget-object v4, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v3, v4, v0

    .line 433
    .local v3, "result":I
    if-ltz v3, :cond_97

    .line 434
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->modulus:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->modulus:I

    .line 435
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    .line 436
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->modulus:I

    if-nez v4, :cond_97

    .line 437
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 438
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 439
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 423
    .end local v3    # "result":I
    :cond_97
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_c

    .line 462
    .end local v0    # "b":B
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_9c
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    .line 463
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 464
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_5

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    :cond_c4
    move p2, v2

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_1d

    .line 454
    nop

    :pswitch_data_c8
    .packed-switch 0x2
        :pswitch_30
        :pswitch_9c
    .end packed-switch
.end method

.method final encode([BII)V
    .registers 14
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    const/16 v9, 0x3d

    const/4 v8, 0x0

    .line 328
    iget-boolean v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v4, :cond_8

    .line 390
    :cond_7
    :goto_7
    return-void

    .line 333
    :cond_8
    if-gez p3, :cond_d7

    .line 334
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->eof:Z

    .line 335
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->modulus:I

    if-nez v4, :cond_15

    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-eqz v4, :cond_7

    .line 338
    :cond_15
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v4}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->ensureBufferSize(I)V

    .line 339
    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    .line 340
    .local v3, "savedPos":I
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->modulus:I

    packed-switch v4, :pswitch_data_178

    .line 361
    :cond_21
    :goto_21
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    sub-int/2addr v5, v3

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    .line 363
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v4, :cond_7

    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    if-lez v4, :cond_7

    .line 364
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget-object v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v7, v7

    invoke-static {v4, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    goto :goto_7

    .line 342
    :pswitch_46
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 343
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 345
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v5, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v4, v5, :cond_21

    .line 346
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    aput-byte v9, v4, v5

    .line 347
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    aput-byte v9, v4, v5

    goto :goto_21

    .line 352
    :pswitch_89
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v7, v7, 0xa

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 353
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 354
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 356
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v5, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v4, v5, :cond_21

    .line 357
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    aput-byte v9, v4, v5

    goto/16 :goto_21

    .line 368
    .end local v3    # "savedPos":I
    :cond_d7
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_d9
    if-ge v1, p3, :cond_174

    .line 369
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v4}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->ensureBufferSize(I)V

    .line 370
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->modulus:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->modulus:I

    .line 371
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 372
    .local v0, "b":I
    if-gez v0, :cond_f0

    .line 373
    add-int/lit16 v0, v0, 0x100

    .line 375
    :cond_f0
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    .line 376
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->modulus:I

    if-nez v4, :cond_16f

    .line 377
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v7, v7, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 378
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v7, v7, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 379
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v7, v7, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 380
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 381
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    .line 382
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v4, :cond_16f

    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineLength:I

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    if-gt v4, v5, :cond_16f

    .line 383
    iget-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget-object v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v7, v7

    invoke-static {v4, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->pos:I

    .line 385
    iput v8, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    .line 368
    :cond_16f
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_d9

    .end local v0    # "b":I
    :cond_174
    move p2, v2

    .line 390
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_7

    .line 340
    nop

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_46
        :pswitch_89
    .end packed-switch
.end method

.method protected final isInAlphabet(B)Z
    .registers 4
    .param p1, "octet"    # B

    .prologue
    .line 755
    if-ltz p1, :cond_10

    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
