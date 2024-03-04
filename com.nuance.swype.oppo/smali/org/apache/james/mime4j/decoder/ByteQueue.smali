.class public final Lorg/apache/james/mime4j/decoder/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

.field private initialCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I

    .line 30
    new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    .line 31
    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I

    .line 34
    new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    .line 35
    iput v1, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I

    .line 36
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget v1, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    goto :goto_0
.end method

.method public final enqueue(B)V
    .locals 6
    .param p1, "b"    # B

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    iget-object v0, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [B

    iget v0, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    move v2, v1

    :cond_0
    :goto_0
    iget v5, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    if-eq v0, v5, :cond_1

    iget-object v5, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    aget-byte v5, v5, v0

    aput-byte v5, v4, v2

    iget-object v5, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    aput-byte v1, v5, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v5, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v5, v5

    if-ne v0, v5, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    iput-object v4, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    iput v1, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    iput v2, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    :cond_2
    iget-object v0, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    iget v2, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    aput-byte p1, v0, v2

    iget v0, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    iget v0, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    iget-object v2, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    iput v1, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    .line 40
    :cond_3
    return-void
.end method
