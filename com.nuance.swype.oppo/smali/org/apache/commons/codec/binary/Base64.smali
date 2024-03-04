.class public Lorg/apache/commons/codec/binary/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;


# static fields
.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field private static final DECODE_TABLE:[B

.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final MASK_6BITS:I = 0x3f

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private buffer:[B

.field private currentLinePos:I

.field private final decodeSize:I

.field private final encodeSize:I

.field private final encodeTable:[B

.field private eof:Z

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private readPos:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 88
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 101
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 125
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    return-void

    .line 79
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 88
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

    .line 101
    :array_2
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

    .line 125
    :array_3
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
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Base64;-><init>(Z)V

    .line 226
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .prologue
    .line 266
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[B)V

    .line 267
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 293
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 4
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "urlSafe"    # Z

    .prologue
    const/4 v2, 0x0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    if-nez p2, :cond_0

    .line 322
    const/4 p1, 0x0

    .line 323
    sget-object p2, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 325
    :cond_0
    if-lez p1, :cond_1

    div-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x4

    :goto_0
    iput v1, p0, Lorg/apache/commons/codec/binary/Base64;->lineLength:I

    .line 326
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    .line 327
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    if-lez p1, :cond_2

    .line 329
    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 333
    :goto_1
    iget v1, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/codec/binary/Base64;->decodeSize:I

    .line 334
    invoke-static {p2}, Lorg/apache/commons/codec/binary/Base64;->containsBase64Byte([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "lineSeperator must not contain base64 characters: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "sep":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 325
    goto :goto_0

    .line 331
    :cond_2
    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    goto :goto_1

    .line 338
    :cond_3
    if-eqz p3, :cond_4

    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    .line 339
    return-void

    .line 338
    :cond_4
    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "urlSafe"    # Z

    .prologue
    .line 244
    const/16 v0, 0x4c

    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 245
    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 2
    .param p0, "arrayOctet"    # [B

    .prologue
    .line 626
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 627
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    const/4 v1, 0x1

    .line 631
    :goto_1
    return v1

    .line 626
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64String"    # Ljava/lang/String;

    .prologue
    .line 830
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1
    .param p0, "base64Data"    # [B

    .prologue
    .line 841
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3
    .param p0, "pArray"    # [B

    .prologue
    .line 992
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method static discardWhitespace([B)[B
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 853
    array-length v5, p0

    new-array v2, v5, [B

    .line 854
    .local v2, "groomedData":[B
    const/4 v0, 0x0

    .line 855
    .local v0, "bytesCopied":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_0

    .line 856
    aget-byte v5, p0, v3

    sparse-switch v5, :sswitch_data_0

    .line 863
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bytesCopied":I
    .local v1, "bytesCopied":I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 855
    .end local v1    # "bytesCopied":I
    .restart local v0    # "bytesCopied":I
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 866
    :cond_0
    new-array v4, v0, [B

    .line 867
    .local v4, "packedData":[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    return-object v4

    .line 856
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .prologue
    .line 767
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z

    .prologue
    .line 785
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 5
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z
    .param p3, "maxResultSize"    # I

    .prologue
    .line 805
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 818
    .end local p0    # "binaryData":[B
    :cond_0
    :goto_0
    return-object p0

    .line 809
    .restart local p0    # "binaryData":[B
    :cond_1
    const/16 v2, 0x4c

    sget-object v3, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-static {p0, v2, v3}, Lorg/apache/commons/codec/binary/Base64;->getEncodeLength([BI[B)J

    move-result-wide v0

    .line 810
    .local v0, "len":J
    int-to-long v2, p3

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 811
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Input array too big, the output array would be bigger ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") than the specified maxium size of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 817
    :cond_2
    if-eqz p1, :cond_3

    new-instance v2, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v2, p2}, Lorg/apache/commons/codec/binary/Base64;-><init>(Z)V

    .line 818
    :goto_1
    invoke-virtual {v2, p0}, Lorg/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_0

    .line 817
    :cond_3
    new-instance v2, Lorg/apache/commons/codec/binary/Base64;

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v2, v3, v4, p2}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    goto :goto_1
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 691
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 654
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 667
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 680
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 1006
    if-nez p0, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method private static getEncodeLength([BI[B)J
    .locals 10
    .param p0, "pArray"    # [B
    .param p1, "chunkSize"    # I
    .param p2, "chunkSeparator"    # [B

    .prologue
    const-wide/16 v6, 0x4

    const-wide/16 v8, 0x0

    .line 965
    div-int/lit8 v3, p1, 0x4

    mul-int/lit8 p1, v3, 0x4

    .line 967
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    int-to-long v0, v3

    .line 968
    .local v0, "len":J
    rem-long v4, v0, v6

    .line 969
    .local v4, "mod":J
    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    .line 970
    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 972
    :cond_0
    if-lez p1, :cond_1

    .line 973
    int-to-long v6, p1

    rem-long v6, v0, v6

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    const/4 v2, 0x1

    .line 974
    .local v2, "lenChunksPerfectly":Z
    :goto_0
    int-to-long v6, p1

    div-long v6, v0, v6

    array-length v3, p2

    int-to-long v8, v3

    mul-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 975
    if-nez v2, :cond_1

    .line 976
    array-length v3, p2

    int-to-long v6, v3

    add-long/2addr v0, v6

    .line 979
    .end local v2    # "lenChunksPerfectly":Z
    :cond_1
    return-wide v0

    .line 973
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 2
    .param p0, "arrayOctet"    # [B

    .prologue
    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 611
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v1

    if-nez v1, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    const/4 v1, 0x0

    .line 615
    :goto_1
    return v1

    .line 610
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isBase64(B)Z
    .locals 2
    .param p0, "octet"    # B

    .prologue
    .line 597
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

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
    .line 879
    sparse-switch p0, :sswitch_data_0

    .line 886
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 884
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 879
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    .line 1048
    iput v1, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    .line 1049
    iput v1, p0, Lorg/apache/commons/codec/binary/Base64;->readPos:I

    .line 1050
    iput v1, p0, Lorg/apache/commons/codec/binary/Base64;->currentLinePos:I

    .line 1051
    iput v1, p0, Lorg/apache/commons/codec/binary/Base64;->modulus:I

    .line 1052
    iput-boolean v1, p0, Lorg/apache/commons/codec/binary/Base64;->eof:Z

    .line 1053
    return-void
.end method

.method private resizeBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 371
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    if-nez v1, :cond_0

    .line 372
    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    .line 373
    iput v3, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    .line 374
    iput v3, p0, Lorg/apache/commons/codec/binary/Base64;->readPos:I

    .line 380
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 377
    .local v0, "b":[B
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget-object v2, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    goto :goto_0
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 8
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 1020
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    .line 1022
    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    shl-int/lit8 v1, v6, 0x3

    .line 1023
    .local v1, "bitlen":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1025
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

    .line 1040
    .end local v0    # "bigBytes":[B
    :goto_0
    return-object v0

    .line 1029
    .restart local v0    # "bigBytes":[B
    :cond_0
    const/4 v5, 0x0

    .line 1030
    .local v5, "startSrc":I
    array-length v2, v0

    .line 1033
    .local v2, "len":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 1034
    const/4 v5, 0x1

    .line 1035
    add-int/lit8 v2, v2, -0x1

    .line 1037
    :cond_1
    div-int/lit8 v6, v1, 0x8

    sub-int v4, v6, v2

    .line 1038
    .local v4, "startDst":I
    div-int/lit8 v6, v1, 0x8

    new-array v3, v6, [B

    .line 1039
    .local v3, "resizedBytes":[B
    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 1040
    goto :goto_0
.end method


# virtual methods
.method avail()I
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget v1, p0, Lorg/apache/commons/codec/binary/Base64;->readPos:I

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
    .line 705
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 706
    check-cast p1, [B

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    .line 708
    :goto_0
    return-object v0

    .line 707
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 708
    check-cast p1, Ljava/lang/String;

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 710
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method decode([BII)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    const/4 v7, 0x1

    .line 539
    iget-boolean v4, p0, Lorg/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v4, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    if-gez p3, :cond_2

    .line 543
    iput-boolean v7, p0, Lorg/apache/commons/codec/binary/Base64;->eof:Z

    .line 545
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_1
    if-ge v1, p3, :cond_7

    .line 546
    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    array-length v4, v4

    iget v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/apache/commons/codec/binary/Base64;->decodeSize:I

    if-ge v4, v5, :cond_4

    .line 547
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/codec/binary/Base64;->resizeBuffer()V

    .line 549
    :cond_4
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 550
    .local v0, "b":B
    const/16 v4, 0x3d

    if-ne v0, v4, :cond_5

    .line 552
    iput-boolean v7, p0, Lorg/apache/commons/codec/binary/Base64;->eof:Z

    .line 573
    .end local v0    # "b":B
    :goto_2
    iget-boolean v4, p0, Lorg/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->modulus:I

    if-eqz v4, :cond_0

    .line 574
    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    .line 575
    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->modulus:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 577
    :pswitch_0
    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    .line 578
    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_0

    .line 555
    .restart local v0    # "b":B
    :cond_5
    if-ltz v0, :cond_6

    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 556
    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v3, v4, v0

    .line 557
    .local v3, "result":I
    if-ltz v3, :cond_6

    .line 558
    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->modulus:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/codec/binary/Base64;->modulus:I

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/apache/commons/codec/binary/Base64;->modulus:I

    .line 559
    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    .line 560
    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->modulus:I

    if-nez v4, :cond_6

    .line 561
    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 562
    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 563
    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 545
    .end local v3    # "result":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_1

    .line 581
    .end local v0    # "b":B
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_1
    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 582
    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_0

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    :cond_7
    move p2, v2

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_2

    .line 575
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pArray"    # Ljava/lang/String;

    .prologue
    .line 723
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 4
    .param p1, "pArray"    # [B

    .prologue
    const/4 v3, 0x0

    .line 734
    invoke-direct {p0}, Lorg/apache/commons/codec/binary/Base64;->reset()V

    .line 735
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p1

    .line 752
    :goto_0
    return-object v1

    .line 738
    :cond_1
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    .line 739
    new-array v0, v2, [B

    .line 740
    .local v0, "buf":[B
    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Lorg/apache/commons/codec/binary/Base64;->setInitialBuffer([BII)V

    .line 741
    array-length v2, p1

    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/commons/codec/binary/Base64;->decode([BII)V

    .line 742
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/commons/codec/binary/Base64;->decode([BII)V

    .line 750
    iget v2, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    new-array v1, v2, [B

    .line 751
    .local v1, "result":[B
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/commons/codec/binary/Base64;->readResults([BII)I

    goto :goto_0
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
    .line 903
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 904
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_0
    check-cast p1, [B

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/Base64;->encode([B)[B

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

    .line 453
    iget-boolean v3, p0, Lorg/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v3, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    if-gez p3, :cond_5

    .line 459
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/codec/binary/Base64;->eof:Z

    .line 460
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    array-length v3, v3

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    if-ge v3, v4, :cond_3

    .line 461
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/codec/binary/Base64;->resizeBuffer()V

    .line 463
    :cond_3
    iget v3, p0, Lorg/apache/commons/codec/binary/Base64;->modulus:I

    packed-switch v3, :pswitch_data_0

    .line 484
    :cond_4
    :goto_1
    iget v3, p0, Lorg/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v3, :cond_0

    iget v3, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    if-lez v3, :cond_0

    .line 485
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    iget v3, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    goto :goto_0

    .line 465
    :pswitch_0
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 466
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 468
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v4, :cond_4

    .line 469
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    aput-byte v8, v3, v4

    .line 470
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    aput-byte v8, v3, v4

    goto :goto_1

    .line 475
    :pswitch_1
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0xa

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 476
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 477
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 479
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v4, :cond_4

    .line 480
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    aput-byte v8, v3, v4

    goto/16 :goto_1

    .line 489
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_2
    if-ge v1, p3, :cond_a

    .line 490
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    array-length v3, v3

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    if-ge v3, v4, :cond_7

    .line 491
    :cond_6
    invoke-direct {p0}, Lorg/apache/commons/codec/binary/Base64;->resizeBuffer()V

    .line 493
    :cond_7
    iget v3, p0, Lorg/apache/commons/codec/binary/Base64;->modulus:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/codec/binary/Base64;->modulus:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/apache/commons/codec/binary/Base64;->modulus:I

    .line 494
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 495
    .local v0, "b":I
    if-gez v0, :cond_8

    .line 496
    add-int/lit16 v0, v0, 0x100

    .line 498
    :cond_8
    iget v3, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    .line 499
    iget v3, p0, Lorg/apache/commons/codec/binary/Base64;->modulus:I

    if-nez v3, :cond_9

    .line 500
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 501
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 502
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 503
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codec/binary/Base64;->x:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 504
    iget v3, p0, Lorg/apache/commons/codec/binary/Base64;->currentLinePos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/apache/commons/codec/binary/Base64;->currentLinePos:I

    .line 505
    iget v3, p0, Lorg/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v3, :cond_9

    iget v3, p0, Lorg/apache/commons/codec/binary/Base64;->lineLength:I

    iget v4, p0, Lorg/apache/commons/codec/binary/Base64;->currentLinePos:I

    if-gt v3, v4, :cond_9

    .line 506
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    iget v3, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    .line 508
    iput v7, p0, Lorg/apache/commons/codec/binary/Base64;->currentLinePos:I

    .line 489
    :cond_9
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_2

    .end local v0    # "b":I
    :cond_a
    move p2, v2

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public encode([B)[B
    .locals 5
    .param p1, "pArray"    # [B

    .prologue
    const/4 v4, 0x0

    .line 929
    invoke-direct {p0}, Lorg/apache/commons/codec/binary/Base64;->reset()V

    .line 930
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_0
    move-object v0, p1

    .line 949
    :cond_1
    :goto_0
    return-object v0

    .line 933
    :cond_2
    iget v2, p0, Lorg/apache/commons/codec/binary/Base64;->lineLength:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    invoke-static {p1, v2, v3}, Lorg/apache/commons/codec/binary/Base64;->getEncodeLength([BI[B)J

    move-result-wide v2

    .line 934
    long-to-int v2, v2

    new-array v0, v2, [B

    .line 935
    .local v0, "buf":[B
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2}, Lorg/apache/commons/codec/binary/Base64;->setInitialBuffer([BII)V

    .line 936
    array-length v2, p1

    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/commons/codec/binary/Base64;->encode([BII)V

    .line 937
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/commons/codec/binary/Base64;->encode([BII)V

    .line 939
    iget-object v2, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    if-eq v2, v0, :cond_3

    .line 940
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2}, Lorg/apache/commons/codec/binary/Base64;->readResults([BII)I

    .line 944
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base64;->isUrlSafe()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 945
    iget v2, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    new-array v1, v2, [B

    .line 946
    .local v1, "smallerBuf":[B
    iget v2, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 947
    move-object v0, v1

    goto :goto_0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 1
    .param p1, "pArray"    # [B

    .prologue
    .line 918
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasData()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrlSafe()Z
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

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
    .line 395
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    if-eqz v1, :cond_2

    .line 396
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base64;->avail()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 397
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    if-eq v1, p1, :cond_0

    .line 398
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    iget v2, p0, Lorg/apache/commons/codec/binary/Base64;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    iget v1, p0, Lorg/apache/commons/codec/binary/Base64;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/codec/binary/Base64;->readPos:I

    .line 400
    iget v1, p0, Lorg/apache/commons/codec/binary/Base64;->readPos:I

    iget v2, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    if-lt v1, v2, :cond_1

    .line 401
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    .line 410
    .end local v0    # "len":I
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lorg/apache/commons/codec/binary/Base64;->eof:Z

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
    .line 427
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, p3, :cond_0

    .line 428
    iput-object p1, p0, Lorg/apache/commons/codec/binary/Base64;->buffer:[B

    .line 429
    iput p2, p0, Lorg/apache/commons/codec/binary/Base64;->pos:I

    .line 430
    iput p2, p0, Lorg/apache/commons/codec/binary/Base64;->readPos:I

    .line 432
    :cond_0
    return-void
.end method
