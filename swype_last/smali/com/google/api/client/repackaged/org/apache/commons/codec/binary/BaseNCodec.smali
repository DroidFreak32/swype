.class public abstract Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# instance fields
.field protected final PAD:B

.field protected buffer:[B

.field private final chunkSeparatorLength:I

.field protected currentLinePos:I

.field private final encodedBlockSize:I

.field protected eof:Z

.field protected final lineLength:I

.field protected modulus:I

.field protected pos:I

.field private readPos:I

.field private final unencodedBlockSize:I


# direct methods
.method protected constructor <init>(II)V
    .registers 4
    .param p1, "lineLength"    # I
    .param p2, "chunkSeparatorLength"    # I

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->PAD:B

    .line 137
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    .line 138
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    .line 139
    if-lez p1, :cond_1a

    if-lez p2, :cond_1a

    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x4

    :goto_15
    iput v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    .line 140
    iput p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    .line 141
    return-void

    .line 139
    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private readResults$1cf967b1([BI)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "bAvail"    # I

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    if-eqz v1, :cond_2a

    .line 2158
    iget-object v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->readPos:I

    sub-int/2addr v1, v3

    .line 208
    :goto_e
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 209
    .local v0, "len":I
    iget-object v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->readPos:I

    invoke-static {v1, v3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->readPos:I

    .line 211
    iget v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->readPos:I

    iget v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    if-lt v1, v2, :cond_27

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    .line 216
    .end local v0    # "len":I
    :cond_27
    :goto_27
    return v0

    :cond_28
    move v1, v2

    .line 2158
    goto :goto_e

    .line 216
    :cond_2a
    iget-boolean v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->eof:Z

    if-eqz v1, :cond_30

    const/4 v0, -0x1

    goto :goto_27

    :cond_30
    move v0, v2

    goto :goto_27
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    .line 243
    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    .line 244
    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->readPos:I

    .line 245
    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->currentLinePos:I

    .line 246
    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->modulus:I

    .line 247
    iput-boolean v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->eof:Z

    .line 248
    return-void
.end method


# virtual methods
.method protected final containsAlphabetOrPad([B)Z
    .registers 8
    .param p1, "arrayOctet"    # [B

    .prologue
    const/4 v4, 0x0

    .line 415
    if-nez p1, :cond_4

    .line 423
    :cond_3
    :goto_3
    return v4

    .line 418
    :cond_4
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_3

    aget-byte v1, v0, v2

    .line 419
    .local v1, "element":B
    const/16 v5, 0x3d

    if-eq v5, v1, :cond_15

    invoke-virtual {p0, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 420
    :cond_15
    const/4 v4, 0x1

    goto :goto_3

    .line 418
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method abstract decode([BII)V
.end method

.method public final decode([B)[B
    .registers 5
    .param p1, "pArray"    # [B

    .prologue
    const/4 v2, 0x0

    .line 317
    invoke-direct {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->reset()V

    .line 318
    if-eqz p1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_b

    :cond_9
    move-object v0, p1

    .line 325
    :goto_a
    return-object v0

    .line 321
    :cond_b
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->decode([BII)V

    .line 322
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->decode([BII)V

    .line 323
    iget v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    new-array v0, v1, [B

    .line 324
    .local v0, "result":[B
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->readResults$1cf967b1([BI)I

    goto :goto_a
.end method

.method abstract encode([BII)V
.end method

.method public final encode([B)[B
    .registers 5
    .param p1, "pArray"    # [B

    .prologue
    const/4 v2, 0x0

    .line 336
    invoke-direct {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->reset()V

    .line 337
    if-eqz p1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_b

    :cond_9
    move-object v0, p1

    .line 344
    :goto_a
    return-object v0

    .line 340
    :cond_b
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->encode([BII)V

    .line 341
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->encode([BII)V

    .line 342
    iget v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    iget v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->readPos:I

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    .line 343
    .local v0, "buf":[B
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->readResults$1cf967b1([BI)I

    goto :goto_a
.end method

.method protected final ensureBufferSize(I)V
    .registers 6
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1b

    .line 1172
    :cond_d
    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    if-nez v0, :cond_1c

    .line 1173
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    .line 1174
    iput v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    .line 1175
    iput v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->readPos:I

    :cond_1b
    :goto_1b
    return-void

    .line 1177
    :cond_1c
    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 1178
    iget-object v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    iget-object v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1179
    iput-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    goto :goto_1b
.end method

.method public final getEncodedLength([B)J
    .registers 8
    .param p1, "pArray"    # [B

    .prologue
    .line 437
    array-length v2, p1

    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 438
    .local v0, "len":J
    iget v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez v2, :cond_23

    .line 440
    iget v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 442
    :cond_23
    return-wide v0
.end method

.method protected abstract isInAlphabet(B)Z
.end method
