.class public final Ltwitter4j/internal/http/BASE64Encoder;
.super Ljava/lang/Object;
.source "BASE64Encoder.java"


# static fields
.field private static final encodeTable:[C

.field private static final last2byte:C

.field private static final last4byte:C

.field private static final last6byte:C

.field private static final lead2byte:C

.field private static final lead4byte:C

.field private static final lead6byte:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 26
    const-string v0, "00000011"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/internal/http/BASE64Encoder;->last2byte:C

    .line 27
    const-string v0, "00001111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/internal/http/BASE64Encoder;->last4byte:C

    .line 28
    const-string v0, "00111111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/internal/http/BASE64Encoder;->last6byte:C

    .line 29
    const-string v0, "11111100"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/internal/http/BASE64Encoder;->lead6byte:C

    .line 30
    const-string v0, "11110000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/internal/http/BASE64Encoder;->lead4byte:C

    .line 31
    const-string v0, "11000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/internal/http/BASE64Encoder;->lead2byte:C

    .line 32
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ltwitter4j/internal/http/BASE64Encoder;->encodeTable:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 8
    .param p0, "from"    # [B

    .prologue
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, p0

    int-to-double v4, v4

    const-wide v6, 0x3ff570a3d70a3d71L    # 1.34

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    .local v3, "to":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 40
    .local v2, "num":I
    const/4 v0, 0x0

    .line 41
    .local v0, "currentByte":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 42
    rem-int/lit8 v2, v2, 0x8

    .line 43
    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    .line 44
    packed-switch v2, :pswitch_data_0

    .line 67
    :cond_0
    :goto_2
    :pswitch_0
    sget-object v4, Ltwitter4j/internal/http/BASE64Encoder;->encodeTable:[C

    aget-char v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    add-int/lit8 v2, v2, 0x6

    goto :goto_1

    .line 46
    :pswitch_1
    aget-byte v4, p0, v1

    sget-char v5, Ltwitter4j/internal/http/BASE64Encoder;->lead6byte:C

    and-int/2addr v4, v5

    int-to-char v4, v4

    .line 47
    ushr-int/lit8 v4, v4, 0x2

    int-to-char v0, v4

    .line 48
    goto :goto_2

    .line 50
    :pswitch_2
    aget-byte v4, p0, v1

    sget-char v5, Ltwitter4j/internal/http/BASE64Encoder;->last6byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 51
    goto :goto_2

    .line 53
    :pswitch_3
    aget-byte v4, p0, v1

    sget-char v5, Ltwitter4j/internal/http/BASE64Encoder;->last4byte:C

    and-int/2addr v4, v5

    int-to-char v4, v4

    .line 54
    shl-int/lit8 v4, v4, 0x2

    int-to-char v0, v4

    .line 55
    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 56
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Ltwitter4j/internal/http/BASE64Encoder;->lead2byte:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v0

    int-to-char v0, v4

    goto :goto_2

    .line 60
    :pswitch_4
    aget-byte v4, p0, v1

    sget-char v5, Ltwitter4j/internal/http/BASE64Encoder;->last2byte:C

    and-int/2addr v4, v5

    int-to-char v4, v4

    .line 61
    shl-int/lit8 v4, v4, 0x4

    int-to-char v0, v4

    .line 62
    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 63
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Ltwitter4j/internal/http/BASE64Encoder;->lead4byte:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v0

    int-to-char v0, v4

    goto :goto_2

    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v1, v4, 0x4

    :goto_3
    if-lez v1, :cond_3

    .line 73
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 76
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
