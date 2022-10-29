.class public final Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;
    }
.end annotation


# instance fields
.field private volatile buf:[B

.field private count:I

.field private marklimit:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B

    .prologue
    .line 70
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 71
    if-eqz p2, :cond_b

    array-length v0, p2

    if-nez v0, :cond_14

    .line 72
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "buffer is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_14
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 75
    return-void
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .registers 11
    .param p1, "localIn"    # Ljava/io/InputStream;
    .param p2, "localBuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 130
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-eq v4, v6, :cond_f

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    if-lt v4, v5, :cond_1d

    .line 132
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 133
    .local v3, "result":I
    if-lez v3, :cond_1b

    .line 134
    iput v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 135
    iput v7, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 136
    iput v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    :cond_1b
    move v0, v3

    .line 168
    .end local v3    # "result":I
    :goto_1c
    return v0

    .line 145
    :cond_1d
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-nez v4, :cond_60

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    array-length v5, p2

    if-le v4, v5, :cond_60

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    array-length v5, p2

    if-ne v4, v5, :cond_60

    .line 147
    array-length v4, p2

    mul-int/lit8 v1, v4, 0x2

    .line 148
    .local v1, "newLength":I
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    if-le v1, v4, :cond_34

    .line 149
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 151
    :cond_34
    const-string/jumbo v4, "BufferedIs"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 154
    new-array v2, v1, [B

    .line 155
    .local v2, "newbuf":[B
    array-length v4, p2

    invoke-static {p2, v7, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iput-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object p2, v2

    .line 164
    .end local v1    # "newLength":I
    .end local v2    # "newbuf":[B
    :cond_44
    :goto_44
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 165
    iput v7, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v7, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 166
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    array-length v5, p2

    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, p2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 167
    .local v0, "bytesread":I
    if-gtz v0, :cond_6e

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    :goto_5d
    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    goto :goto_1c

    .line 159
    .end local v0    # "bytesread":I
    :cond_60
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-lez v4, :cond_44

    .line 160
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    array-length v5, p2

    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v5, v6

    invoke-static {p2, v4, p2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_44

    .line 167
    .restart local v0    # "bytesread":I
    :cond_6e
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v4, v0

    goto :goto_5d
.end method

.method private static streamClosed()Ljava/io/IOException;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 90
    .local v0, "localIn":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v1, :cond_9

    if-nez v0, :cond_11

    .line 91
    :cond_9
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 89
    .end local v0    # "localIn":Ljava/io/InputStream;
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 93
    .restart local v0    # "localIn":Ljava/io/InputStream;
    :cond_11
    :try_start_11
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_e

    move-result v2

    add-int/2addr v1, v2

    monitor-exit p0

    return v1
.end method

.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 122
    .local v0, "localIn":Ljava/io/InputStream;
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 123
    if-eqz v0, :cond_c

    .line 124
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 126
    :cond_c
    return-void
.end method

.method public final declared-synchronized fixMarkLimit()V
    .registers 2

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    array-length v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 191
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 192
    monitor-exit p0

    return-void

    .line 190
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final markSupported()Z
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 222
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 223
    .local v0, "localBuf":[B
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 224
    .local v1, "localIn":Ljava/io/InputStream;
    if-eqz v0, :cond_a

    if-nez v1, :cond_12

    .line 225
    :cond_a
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_f

    .line 222
    .end local v0    # "localBuf":[B
    .end local v1    # "localIn":Ljava/io/InputStream;
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 229
    .restart local v0    # "localBuf":[B
    .restart local v1    # "localIn":Ljava/io/InputStream;
    :cond_12
    :try_start_12
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-lt v3, v4, :cond_20

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_f

    move-result v3

    if-ne v3, v2, :cond_20

    .line 245
    :cond_1e
    :goto_1e
    monitor-exit p0

    return v2

    .line 234
    :cond_20
    :try_start_20
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v0, v3, :cond_2d

    .line 235
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 236
    if-nez v0, :cond_2d

    .line 237
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 242
    :cond_2d
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_1e

    .line 243
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    aget-byte v2, v0, v2
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_f

    and-int/lit16 v2, v2, 0xff

    goto :goto_1e
.end method

.method public final declared-synchronized read([BII)I
    .registers 12
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 271
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 272
    .local v1, "localBuf":[B
    if-nez v1, :cond_e

    .line 273
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_b

    .line 271
    .end local v1    # "localBuf":[B
    :catchall_b
    move-exception v5

    monitor-exit p0

    throw v5

    .line 276
    .restart local v1    # "localBuf":[B
    :cond_e
    if-nez p3, :cond_13

    .line 277
    const/4 v0, 0x0

    .line 329
    :cond_11
    :goto_11
    monitor-exit p0

    return v0

    .line 279
    :cond_13
    :try_start_13
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 280
    .local v2, "localIn":Ljava/io/InputStream;
    if-nez v2, :cond_1c

    .line 281
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 285
    :cond_1c
    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v7, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-ge v6, v7, :cond_57

    .line 287
    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v7, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v6, v7

    if-lt v6, p3, :cond_50

    move v0, p3

    .line 288
    .local v0, "copylength":I
    :goto_2a
    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    invoke-static {v1, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 290
    if-eq v0, p3, :cond_11

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    if-eqz v6, :cond_11

    .line 293
    add-int/2addr p2, v0

    .line 294
    sub-int v4, p3, v0

    .line 303
    .end local v0    # "copylength":I
    .local v4, "required":I
    :goto_3f
    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-ne v6, v5, :cond_5c

    array-length v6, v1

    if-lt v4, v6, :cond_5c

    .line 304
    invoke-virtual {v2, p1, p2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 305
    .local v3, "read":I
    if-ne v3, v5, :cond_88

    .line 306
    if-ne v4, p3, :cond_59

    move v0, v5

    goto :goto_11

    .line 287
    .end local v3    # "read":I
    .end local v4    # "required":I
    :cond_50
    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v7, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int v0, v6, v7

    goto :goto_2a

    .line 296
    :cond_57
    move v4, p3

    .restart local v4    # "required":I
    goto :goto_3f

    .line 306
    .restart local v3    # "read":I
    :cond_59
    sub-int v0, p3, v4

    goto :goto_11

    .line 309
    .end local v3    # "read":I
    :cond_5c
    invoke-direct {p0, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v6

    if-ne v6, v5, :cond_69

    .line 310
    if-ne v4, p3, :cond_66

    move v0, v5

    goto :goto_11

    :cond_66
    sub-int v0, p3, v4

    goto :goto_11

    .line 313
    :cond_69
    iget-object v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v1, v6, :cond_76

    .line 314
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 315
    if-nez v1, :cond_76

    .line 316
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 320
    :cond_76
    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v7, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v6, v7

    if-lt v6, v4, :cond_8d

    move v3, v4

    .line 321
    .restart local v3    # "read":I
    :goto_7e
    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    invoke-static {v1, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 324
    :cond_88
    sub-int/2addr v4, v3

    .line 325
    if-nez v4, :cond_94

    move v0, p3

    .line 326
    goto :goto_11

    .line 320
    .end local v3    # "read":I
    :cond_8d
    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v7, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int v3, v6, v7

    goto :goto_7e

    .line 328
    .restart local v3    # "read":I
    :cond_94
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_97
    .catchall {:try_start_13 .. :try_end_97} :catchall_b

    move-result v6

    if-nez v6, :cond_9e

    .line 329
    sub-int v0, p3, v4

    goto/16 :goto_11

    .line 331
    :cond_9e
    add-int/2addr p2, v3

    .line 332
    goto :goto_3f
.end method

.method public final declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-nez v0, :cond_11

    .line 347
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 346
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 349
    :cond_11
    const/4 v0, -0x1

    :try_start_12
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-ne v0, v1, :cond_1f

    .line 350
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;

    const-string/jumbo v1, "Mark has been invalidated"

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_1f
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_e

    .line 353
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized skip(J)J
    .registers 12
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 370
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 371
    .local v0, "localBuf":[B
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 372
    .local v1, "localIn":Ljava/io/InputStream;
    if-nez v0, :cond_10

    .line 373
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_d

    .line 370
    .end local v0    # "localBuf":[B
    .end local v1    # "localIn":Ljava/io/InputStream;
    :catchall_d
    move-exception v4

    monitor-exit p0

    throw v4

    .line 375
    .restart local v0    # "localBuf":[B
    .restart local v1    # "localIn":Ljava/io/InputStream;
    :cond_10
    const-wide/16 v4, 0x1

    cmp-long v4, p1, v4

    if-gez v4, :cond_1a

    .line 376
    const-wide/16 p1, 0x0

    .line 402
    .end local p1    # "byteCount":J
    :goto_18
    monitor-exit p0

    return-wide p1

    .line 378
    .restart local p1    # "byteCount":J
    :cond_1a
    if-nez v1, :cond_21

    .line 379
    :try_start_1c
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 382
    :cond_21
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_33

    .line 383
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p1

    long-to-int v4, v4

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    goto :goto_18

    .line 386
    :cond_33
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 387
    .local v2, "read":J
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 389
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-eq v4, v6, :cond_75

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-gtz v4, :cond_75

    .line 390
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v4

    if-ne v4, v6, :cond_50

    move-wide p1, v2

    .line 391
    goto :goto_18

    .line 393
    :cond_50
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long v6, p1, v2

    cmp-long v4, v4, v6

    if-ltz v4, :cond_66

    .line 394
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v4, v4

    sub-long v6, p1, v2

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    goto :goto_18

    .line 398
    :cond_66
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v6, v6

    sub-long v2, v4, v6

    .line 399
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    move-wide p1, v2

    .line 400
    goto :goto_18

    .line 402
    :cond_75
    sub-long v4, p1, v2

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_7a
    .catchall {:try_start_1c .. :try_end_7a} :catchall_d

    move-result-wide v4

    add-long p1, v2, v4

    goto :goto_18
.end method
