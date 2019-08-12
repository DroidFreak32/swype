.class public Lcom/fsck/k9/mail/filter/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;


# static fields
.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field private static final MASK_6BITS:I = 0x3f

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field private static final base64ToInt:[B

.field private static final intToBase64:[B


# instance fields
.field private buf:[B

.field private currentLinePos:I

.field private final decodeSize:I

.field private final encodeSize:I

.field private eof:Z

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private readPos:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fsck/k9/mail/filter/Base64;->CHUNK_SEPARATOR:[B

    .line 70
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/fsck/k9/mail/filter/Base64;->intToBase64:[B

    .line 94
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/fsck/k9/mail/filter/Base64;->base64ToInt:[B

    return-void

    .line 60
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 70
    nop

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
        0x2bt
        0x2ft
    .end array-data

    .line 94
    :array_2
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
        -0x1t
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
        -0x1t
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
    .locals 2

    .prologue
    .line 186
    const/16 v0, 0x4c

    sget-object v1, Lcom/fsck/k9/mail/filter/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/filter/Base64;-><init>(I[B)V

    .line 187
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .prologue
    .line 206
    sget-object v0, Lcom/fsck/k9/mail/filter/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/filter/Base64;-><init>(I[B)V

    .line 207
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 4
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    const/4 v3, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p1, p0, Lcom/fsck/k9/mail/filter/Base64;->lineLength:I

    .line 230
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/fsck/k9/mail/filter/Base64;->lineSeparator:[B

    .line 231
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/Base64;->lineSeparator:[B

    array-length v2, p2

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    if-lez p1, :cond_0

    .line 234
    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/fsck/k9/mail/filter/Base64;->encodeSize:I

    .line 240
    :goto_0
    iget v1, p0, Lcom/fsck/k9/mail/filter/Base64;->encodeSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fsck/k9/mail/filter/Base64;->decodeSize:I

    .line 241
    invoke-static {p2}, Lcom/fsck/k9/mail/filter/Base64;->containsBase64Byte([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .local v0, "sep":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lineSeperator must not contain base64 characters: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    .end local v0    # "sep":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/fsck/k9/mail/filter/Base64;->encodeSize:I

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .restart local v0    # "sep":Ljava/lang/String;
    goto :goto_1

    .line 254
    .end local v0    # "sep":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 4
    .param p0, "arrayOctet"    # [B

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v2, p0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, v0, v1

    .line 562
    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->isBase64(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 564
    const/4 v3, 0x1

    .line 567
    :goto_1
    return v3

    .line 560
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static decodeBase64([B)[B
    .locals 5
    .param p0, "base64Data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 681
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    :cond_0
    move-object v2, p0

    .line 697
    :goto_0
    return-object v2

    .line 685
    :cond_1
    new-instance v0, Lcom/fsck/k9/mail/filter/Base64;

    invoke-direct {v0}, Lcom/fsck/k9/mail/filter/Base64;-><init>()V

    .line 687
    .local v0, "b64":Lcom/fsck/k9/mail/filter/Base64;
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    .line 688
    new-array v1, v3, [B

    .line 689
    .local v1, "buf":[B
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Lcom/fsck/k9/mail/filter/Base64;->setInitialBuffer([BII)V

    .line 690
    array-length v3, p0

    invoke-virtual {v0, p0, v4, v3}, Lcom/fsck/k9/mail/filter/Base64;->decode([BII)V

    .line 691
    const/4 v3, -0x1

    invoke-virtual {v0, p0, v4, v3}, Lcom/fsck/k9/mail/filter/Base64;->decode([BII)V

    .line 695
    iget v3, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    new-array v2, v3, [B

    .line 696
    .local v2, "result":[B
    array-length v3, v2

    invoke-virtual {v0, v2, v4, v3}, Lcom/fsck/k9/mail/filter/Base64;->readResults([BII)I

    goto :goto_0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3
    .param p0, "pArray"    # [B

    .prologue
    .line 791
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/fsck/k9/mail/filter/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method static discardNonBase64([B)[B
    .locals 10
    .param p0, "data"    # [B

    .prologue
    const/4 v9, 0x0

    .line 730
    array-length v8, p0

    new-array v4, v8, [B

    .line 731
    .local v4, "groomedData":[B
    const/4 v1, 0x0

    .line 733
    .local v1, "bytesCopied":I
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v6, p0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v2, v1

    .end local v1    # "bytesCopied":I
    .local v2, "bytesCopied":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v3, v0, v5

    .line 735
    .local v3, "element":B
    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->isBase64(B)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 737
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytesCopied":I
    .restart local v1    # "bytesCopied":I
    aput-byte v3, v4, v2

    .line 733
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "bytesCopied":I
    .restart local v2    # "bytesCopied":I
    goto :goto_0

    .line 741
    .end local v3    # "element":B
    :cond_0
    new-array v7, v2, [B

    .line 743
    .local v7, "packedData":[B
    invoke-static {v4, v9, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    return-object v7

    .end local v7    # "packedData":[B
    .restart local v3    # "element":B
    :cond_1
    move v1, v2

    .end local v2    # "bytesCopied":I
    .restart local v1    # "bytesCopied":I
    goto :goto_1
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 579
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 11
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .prologue
    const-wide/16 v8, 0x4

    const/4 v10, 0x0

    .line 638
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_2

    :cond_0
    move-object v1, p0

    .line 670
    :cond_1
    :goto_0
    return-object v1

    .line 642
    :cond_2
    if-eqz p1, :cond_5

    new-instance v0, Lcom/fsck/k9/mail/filter/Base64;

    invoke-direct {v0}, Lcom/fsck/k9/mail/filter/Base64;-><init>()V

    .line 644
    .local v0, "b64":Lcom/fsck/k9/mail/filter/Base64;
    :goto_1
    array-length v6, p0

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3

    int-to-long v2, v6

    .line 645
    .local v2, "len":J
    rem-long v4, v2, v8

    .line 646
    .local v4, "mod":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 648
    sub-long v6, v8, v4

    add-long/2addr v2, v6

    .line 650
    :cond_3
    if-eqz p1, :cond_4

    .line 652
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x4c

    div-long v8, v2, v8

    add-long/2addr v6, v8

    sget-object v8, Lcom/fsck/k9/mail/filter/Base64;->CHUNK_SEPARATOR:[B

    array-length v8, v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 655
    :cond_4
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v2, v6

    if-lez v6, :cond_6

    .line 657
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Input array too big, output array would be bigger than Integer.MAX_VALUE=2147483647"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 642
    .end local v0    # "b64":Lcom/fsck/k9/mail/filter/Base64;
    .end local v2    # "len":J
    .end local v4    # "mod":J
    :cond_5
    new-instance v0, Lcom/fsck/k9/mail/filter/Base64;

    invoke-direct {v0, v10}, Lcom/fsck/k9/mail/filter/Base64;-><init>(I)V

    goto :goto_1

    .line 660
    .restart local v0    # "b64":Lcom/fsck/k9/mail/filter/Base64;
    .restart local v2    # "len":J
    .restart local v4    # "mod":J
    :cond_6
    long-to-int v6, v2

    new-array v1, v6, [B

    .line 661
    .local v1, "buf":[B
    array-length v6, v1

    invoke-virtual {v0, v1, v10, v6}, Lcom/fsck/k9/mail/filter/Base64;->setInitialBuffer([BII)V

    .line 662
    array-length v6, p0

    invoke-virtual {v0, p0, v10, v6}, Lcom/fsck/k9/mail/filter/Base64;->encode([BII)V

    .line 663
    const/4 v6, -0x1

    invoke-virtual {v0, p0, v10, v6}, Lcom/fsck/k9/mail/filter/Base64;->encode([BII)V

    .line 666
    iget-object v6, v0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    if-eq v6, v1, :cond_1

    .line 668
    array-length v6, v1

    invoke-virtual {v0, v1, v10, v6}, Lcom/fsck/k9/mail/filter/Base64;->readResults([BII)I

    goto :goto_0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 591
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 804
    if-nez p0, :cond_0

    .line 806
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_0
    invoke-static {p0}, Lcom/fsck/k9/mail/filter/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 5
    .param p0, "arrayOctet"    # [B

    .prologue
    .line 541
    move-object v1, p0

    .local v1, "arr$":[B
    array-length v3, p0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v0, v1, v2

    .line 543
    .local v0, "anArrayOctet":B
    invoke-static {v0}, Lcom/fsck/k9/mail/filter/Base64;->isBase64(B)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/fsck/k9/mail/filter/Base64;->isWhiteSpace(B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 545
    const/4 v4, 0x0

    .line 548
    .end local v0    # "anArrayOctet":B
    :goto_1
    return v4

    .line 541
    .restart local v0    # "anArrayOctet":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    .end local v0    # "anArrayOctet":B
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static isBase64(B)Z
    .locals 2
    .param p0, "octet"    # B

    .prologue
    .line 527
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_1

    sget-object v0, Lcom/fsck/k9/mail/filter/Base64;->base64ToInt:[B

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Lcom/fsck/k9/mail/filter/Base64;->base64ToInt:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1
    .param p0, "byteToCheck"    # B

    .prologue
    .line 708
    sparse-switch p0, :sswitch_data_0

    .line 716
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 714
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 708
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeBuf()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    if-nez v1, :cond_0

    .line 281
    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 282
    iput v3, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 283
    iput v3, p0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    .line 291
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 288
    .local v0, "b":[B
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget-object v2, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iput-object v0, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    goto :goto_0
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 8
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 821
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    .line 823
    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    shl-int/lit8 v1, v6, 0x3

    .line 824
    .local v1, "bitlen":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 826
    .local v0, "bigBytes":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x8

    if-ne v6, v7, :cond_0

    .line 848
    .end local v0    # "bigBytes":[B
    :goto_0
    return-object v0

    .line 833
    .restart local v0    # "bigBytes":[B
    :cond_0
    const/4 v5, 0x0

    .line 834
    .local v5, "startSrc":I
    array-length v2, v0

    .line 837
    .local v2, "len":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 839
    const/4 v5, 0x1

    .line 840
    add-int/lit8 v2, v2, -0x1

    .line 843
    :cond_1
    div-int/lit8 v6, v1, 0x8

    sub-int v4, v6, v2

    .line 844
    .local v4, "startDst":I
    div-int/lit8 v6, v1, 0x8

    new-array v3, v6, [B

    .line 846
    .local v3, "resizedBytes":[B
    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 848
    goto :goto_0
.end method


# virtual methods
.method avail()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    iget v1, p0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 606
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    check-cast p1, [B

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/filter/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method decode([BII)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    const/4 v7, 0x1

    .line 464
    iget-boolean v4, p0, Lcom/fsck/k9/mail/filter/Base64;->eof:Z

    if-eqz v4, :cond_0

    .line 516
    :goto_0
    return-void

    .line 468
    :cond_0
    if-gez p3, :cond_1

    .line 470
    iput-boolean v7, p0, Lcom/fsck/k9/mail/filter/Base64;->eof:Z

    .line 472
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_1
    if-ge v1, p3, :cond_6

    .line 474
    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    array-length v4, v4

    iget v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/fsck/k9/mail/filter/Base64;->decodeSize:I

    if-ge v4, v5, :cond_3

    .line 476
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/mail/filter/Base64;->resizeBuf()V

    .line 478
    :cond_3
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 479
    .local v0, "b":B
    const/16 v4, 0x3d

    if-ne v0, v4, :cond_4

    .line 481
    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 482
    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    packed-switch v4, :pswitch_data_0

    .line 494
    :goto_2
    iput-boolean v7, p0, Lcom/fsck/k9/mail/filter/Base64;->eof:Z

    goto :goto_0

    .line 485
    :pswitch_0
    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 486
    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 489
    :pswitch_1
    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 490
    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 499
    :cond_4
    if-ltz v0, :cond_5

    sget-object v4, Lcom/fsck/k9/mail/filter/Base64;->base64ToInt:[B

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 501
    sget-object v4, Lcom/fsck/k9/mail/filter/Base64;->base64ToInt:[B

    aget-byte v3, v4, v0

    .line 502
    .local v3, "result":I
    if-ltz v3, :cond_5

    .line 504
    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    .line 505
    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 506
    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    if-nez v4, :cond_5

    .line 508
    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 509
    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 510
    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 472
    .end local v3    # "result":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_1

    .end local v0    # "b":B
    :cond_6
    move p2, v2

    .line 516
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "pArray"    # [B

    .prologue
    .line 622
    invoke-static {p1}, Lcom/fsck/k9/mail/filter/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 762
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_0
    check-cast p1, [B

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/filter/Base64;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method encode([BII)V
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 372
    iget-boolean v3, p0, Lcom/fsck/k9/mail/filter/Base64;->eof:Z

    if-eqz v3, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    if-gez p3, :cond_4

    .line 381
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fsck/k9/mail/filter/Base64;->eof:Z

    .line 382
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->encodeSize:I

    if-ge v3, v4, :cond_3

    .line 384
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/mail/filter/Base64;->resizeBuf()V

    .line 386
    :cond_3
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    packed-switch v3, :pswitch_data_0

    .line 402
    :goto_1
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->lineLength:I

    if-lez v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->lineSeparator:[B

    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    iget-object v6, p0, Lcom/fsck/k9/mail/filter/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    goto :goto_0

    .line 389
    :pswitch_0
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/mail/filter/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 390
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/mail/filter/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 391
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    aput-byte v8, v3, v4

    .line 392
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    aput-byte v8, v3, v4

    goto :goto_1

    .line 396
    :pswitch_1
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/mail/filter/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shr-int/lit8 v6, v6, 0xa

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 397
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/mail/filter/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 398
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/mail/filter/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 399
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    aput-byte v8, v3, v4

    goto/16 :goto_1

    .line 410
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_2
    if-ge v1, p3, :cond_9

    .line 412
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->encodeSize:I

    if-ge v3, v4, :cond_6

    .line 414
    :cond_5
    invoke-direct {p0}, Lcom/fsck/k9/mail/filter/Base64;->resizeBuf()V

    .line 416
    :cond_6
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    .line 417
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 418
    .local v0, "b":I
    if-gez v0, :cond_7

    .line 420
    add-int/lit16 v0, v0, 0x100

    .line 422
    :cond_7
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 423
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    if-nez v3, :cond_8

    .line 425
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/mail/filter/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 426
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/mail/filter/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 427
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/mail/filter/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 428
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/mail/filter/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 429
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->currentLinePos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/fsck/k9/mail/filter/Base64;->currentLinePos:I

    .line 430
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->lineLength:I

    if-lez v3, :cond_8

    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->lineLength:I

    iget v4, p0, Lcom/fsck/k9/mail/filter/Base64;->currentLinePos:I

    if-gt v3, v4, :cond_8

    .line 432
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64;->lineSeparator:[B

    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    iget-object v6, p0, Lcom/fsck/k9/mail/filter/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 434
    iput v7, p0, Lcom/fsck/k9/mail/filter/Base64;->currentLinePos:I

    .line 410
    :cond_8
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_2

    .end local v0    # "b":I
    :cond_9
    move p2, v2

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public encode([B)[B
    .locals 1
    .param p1, "pArray"    # [B

    .prologue
    .line 778
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method hasData()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readResults([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I

    .prologue
    .line 307
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    if-eqz v1, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/fsck/k9/mail/filter/Base64;->avail()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 310
    .local v0, "len":I
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    if-eq v1, p1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    iget v2, p0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    iget v1, p0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    .line 314
    iget v1, p0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    iget v2, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    if-lt v1, v2, :cond_1

    .line 316
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 329
    .end local v0    # "len":I
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/fsck/k9/mail/filter/Base64;->eof:Z

    if-eqz v1, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setInitialBuffer([BII)V
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outPos"    # I
    .param p3, "outAvail"    # I

    .prologue
    .line 346
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, p3, :cond_0

    .line 348
    iput-object p1, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 349
    iput p2, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 350
    iput p2, p0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    .line 352
    :cond_0
    return-void
.end method
