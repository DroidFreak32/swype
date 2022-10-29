.class public final Lcom/fasterxml/jackson/core/util/BufferRecycler;
.super Ljava/lang/Object;
.source "BufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;,
        Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;
    }
.end annotation


# instance fields
.field protected final _byteBuffers:[[B

.field protected final _charBuffers:[[C


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->values()[Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:[[B

    .line 56
    invoke-static {}, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->values()[Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:[[C

    .line 58
    return-void
.end method


# virtual methods
.method public final allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;)[B
    .registers 6
    .param p1, "type"    # Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v1

    .line 63
    .local v1, "ix":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:[[B

    aget-object v0, v2, v1

    .line 64
    .local v0, "buffer":[B
    if-nez v0, :cond_f

    .line 65
    iget v2, p1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->size:I

    .line 1110
    new-array v0, v2, [B

    .line 69
    :goto_e
    return-object v0

    .line 67
    :cond_f
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:[[B

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_e
.end method

.method public final allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;)[C
    .registers 3
    .param p1, "type"    # Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    return-object v0
.end method

.method public final allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;I)[C
    .registers 7
    .param p1, "type"    # Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;
    .param p2, "minSize"    # I

    .prologue
    .line 84
    iget v2, p1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->size:I

    if-le v2, p2, :cond_6

    .line 85
    iget p2, p1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->size:I

    .line 87
    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    .line 88
    .local v1, "ix":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:[[C

    aget-object v0, v2, v1

    .line 89
    .local v0, "buffer":[C
    if-eqz v0, :cond_13

    array-length v2, v0

    if-ge v2, p2, :cond_16

    .line 1115
    :cond_13
    new-array v0, p2, [C

    .line 94
    :goto_15
    return-object v0

    .line 92
    :cond_16
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:[[C

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_15
.end method

.method public final releaseByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;[B)V
    .registers 5
    .param p1, "type"    # Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;
    .param p2, "buffer"    # [B

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:[[B

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 75
    return-void
.end method

.method public final releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V
    .registers 5
    .param p1, "type"    # Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;
    .param p2, "buffer"    # [C

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:[[C

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 100
    return-void
.end method
