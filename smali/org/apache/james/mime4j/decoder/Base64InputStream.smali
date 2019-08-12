.class public Lorg/apache/james/mime4j/decoder/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
.field private static TRANSLATION:[B

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

.field private done:Z

.field private final s:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    .line 126
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->TRANSLATION:[B

    return-void

    :array_0
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
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    new-instance v0, Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;-><init>(B)V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    .line 39
    iput-boolean v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->done:Z

    .line 42
    iput-object p1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    .line 43
    return-void
.end method

.method private decodeAndEnqueue([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 106
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x12

    or-int/lit8 v4, v4, 0x0

    .line 108
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    .line 109
    aget-byte v5, p1, v6

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    .line 110
    aget-byte v5, p1, v7

    or-int v0, v4, v5

    .line 112
    .local v0, "accum":I
    ushr-int/lit8 v4, v0, 0x10

    int-to-byte v1, v4

    .line 113
    .local v1, "b1":B
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 115
    if-le p2, v6, :cond_0

    .line 116
    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    .line 117
    .local v2, "b2":B
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 119
    if-le p2, v7, :cond_0

    .line 120
    and-int/lit16 v4, v0, 0xff

    int-to-byte v3, v4

    .line 121
    .local v3, "b3":B
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 124
    .end local v2    # "b2":B
    .end local v3    # "b3":B
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 52
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    iget-object v1, v1, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 56
    const/4 v1, 0x4

    new-array v3, v1, [B

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->done:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    sget-object v4, Lorg/apache/james/mime4j/decoder/Base64InputStream;->TRANSLATION:[B

    aget-byte v4, v4, v2

    if-ltz v4, :cond_0

    add-int/lit8 v2, v1, 0x1

    aput-byte v4, v3, v1

    array-length v1, v3

    if-ne v2, v1, :cond_3

    invoke-direct {p0, v3, v2}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->decodeAndEnqueue([BI)V

    .line 57
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    iget-object v1, v1, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 58
    const/4 v0, -0x1

    .line 66
    :cond_2
    :goto_2
    return v0

    .line 56
    :sswitch_0
    if-lez v1, :cond_1

    sget-object v2, Lorg/apache/james/mime4j/decoder/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected EOF in MIME parser, dropping "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sextets"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->decodeAndEnqueue([BI)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->done:Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 62
    :cond_4
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    iget-object v1, v1, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->remove()B

    move-result v0

    .line 63
    .local v0, "val":B
    if-gez v0, :cond_2

    .line 66
    and-int/lit16 v0, v0, 0xff

    goto :goto_2

    .line 56
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3d -> :sswitch_1
    .end sparse-switch
.end method
