.class public final Lcom/bumptech/glide/util/MarkEnforcingInputStream;
.super Ljava/io/FilterInputStream;
.source "MarkEnforcingInputStream.java"


# instance fields
.field private availableBytes:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    .line 18
    return-void
.end method

.method private getBytesToRead(J)J
    .registers 6
    .param p1, "targetByteCount"    # J

    .prologue
    .line 73
    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    if-nez v0, :cond_7

    .line 74
    const-wide/16 p1, -0x1

    .line 78
    .end local p1    # "targetByteCount":J
    :cond_6
    :goto_6
    return-wide p1

    .line 75
    .restart local p1    # "targetByteCount":J
    :cond_7
    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_6

    .line 76
    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    int-to-long p1, v0

    goto :goto_6
.end method

.method private updateAvailableBytesAfterRead(J)V
    .registers 6
    .param p1, "bytesRead"    # J

    .prologue
    .line 83
    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_13

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_13

    .line 84
    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    .line 86
    :cond_13
    return-void
.end method


# virtual methods
.method public final available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_b

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_a
.end method

.method public final mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    .prologue
    .line 22
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 23
    iput p1, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    .line 24
    return-void
.end method

.method public final read()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    .line 28
    invoke-direct {p0, v6, v7}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->getBytesToRead(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_e

    .line 29
    const/4 v0, -0x1

    .line 34
    :goto_d
    return v0

    .line 32
    :cond_e
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 33
    .local v0, "result":I
    invoke-direct {p0, v6, v7}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->updateAvailableBytesAfterRead(J)V

    goto :goto_d
.end method

.method public final read([BII)I
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 39
    int-to-long v2, p3

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->getBytesToRead(J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 40
    .local v1, "toRead":I
    if-ne v1, v0, :cond_a

    .line 46
    :goto_9
    return v0

    .line 44
    :cond_a
    invoke-super {p0, p1, p2, v1}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 45
    .local v0, "read":I
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->updateAvailableBytesAfterRead(J)V

    goto :goto_9
.end method

.method public final reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 52
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    .line 53
    return-void
.end method

.method public final skip(J)J
    .registers 8
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->getBytesToRead(J)J

    move-result-wide v2

    .line 58
    .local v2, "toSkip":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_b

    .line 64
    :goto_a
    return-wide v0

    .line 62
    :cond_b
    invoke-super {p0, v2, v3}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 63
    .local v0, "read":J
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->updateAvailableBytesAfterRead(J)V

    goto :goto_a
.end method
