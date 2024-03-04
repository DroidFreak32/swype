.class final Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
.super Ljava/lang/Object;
.source "UnboundedFifoByteBuffer.java"


# instance fields
.field buffer:[B

.field head:I

.field tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-gtz p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    .line 85
    iput v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    .line 86
    iput v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    .line 87
    return-void
.end method


# virtual methods
.method public final remove()B
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    .line 173
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The buffer is already empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v1, v2

    .line 172
    goto :goto_0

    .line 176
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    iget v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    aget-byte v0, v1, v3

    .line 178
    .local v0, "element":B
    iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    .line 179
    iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 180
    iput v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    .line 183
    :cond_2
    return v0
.end method

.method public final size()I
    .locals 3

    .prologue
    .line 95
    iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    iget v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    if-ge v1, v2, :cond_0

    .line 98
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    add-int v0, v1, v2

    .line 103
    .local v0, "size":I
    :goto_0
    return v0

    .line 100
    .end local v0    # "size":I
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    iget v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    sub-int v0, v1, v2

    .restart local v0    # "size":I
    goto :goto_0
.end method
