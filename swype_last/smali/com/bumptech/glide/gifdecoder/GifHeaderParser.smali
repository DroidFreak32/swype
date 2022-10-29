.class public final Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
.super Ljava/lang/Object;
.source "GifHeaderParser.java"


# instance fields
.field private final block:[B

.field private blockSize:I

.field public header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field public rawData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    return-void
.end method

.method private err()Z
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private read()I
    .registers 4

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "curByte":I
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_a

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 360
    :goto_9
    return v0

    .line 358
    :catch_a
    move-exception v1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v2, 0x1

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_9
.end method

.method private readBlock()I
    .registers 5

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v2

    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, "n":I
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-lez v2, :cond_50

    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, "count":I
    :goto_c
    :try_start_c
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-ge v1, v2, :cond_50

    .line 335
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    sub-int v0, v2, v1

    .line 336
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1d

    .line 338
    add-int/2addr v1, v0

    goto :goto_c

    .line 341
    :catch_1d
    move-exception v2

    const-string/jumbo v2, "GifHeaderParser"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error Reading Block n: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " blockSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    :cond_4b
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v3, 0x1

    iput v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 347
    .end local v0    # "count":I
    :cond_50
    return v1
.end method

.method private readColorTable(I)[I
    .registers 14
    .param p1, "ncolors"    # I

    .prologue
    .line 274
    mul-int/lit8 v7, p1, 0x3

    .line 275
    .local v7, "nbytes":I
    const/4 v9, 0x0

    .line 276
    .local v9, "tab":[I
    new-array v1, v7, [B

    .line 279
    .local v1, "c":[B
    :try_start_5
    iget-object v10, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 283
    const/16 v10, 0x100

    new-array v9, v10, [I

    .line 284
    const/4 v3, 0x0

    .line 285
    .local v3, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    move v4, v3

    .line 286
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_12
    if-ge v4, p1, :cond_43

    .line 287
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aget-byte v10, v1, v6

    and-int/lit16 v8, v10, 0xff

    .line 288
    .local v8, "r":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    aget-byte v10, v1, v5

    and-int/lit16 v2, v10, 0xff

    .line 289
    .local v2, "g":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aget-byte v10, v1, v6

    and-int/lit16 v0, v10, 0xff

    .line 290
    .local v0, "b":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    const/high16 v10, -0x1000000

    shl-int/lit8 v11, v8, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v2, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v0

    aput v10, v9, v4
    :try_end_33
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_33} :catch_36

    move v6, v5

    .end local v5    # "j":I
    .restart local v6    # "j":I
    move v4, v3

    .line 291
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_12

    .line 293
    .end local v0    # "b":I
    .end local v2    # "g":I
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v8    # "r":I
    :catch_36
    move-exception v10

    const-string/jumbo v10, "GifHeaderParser"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 296
    iget-object v10, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v11, 0x1

    iput v11, v10, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 299
    :cond_43
    return-object v9
.end method

.method private readContents()V
    .registers 13

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "done":Z
    :cond_3
    :goto_3
    if-nez v1, :cond_162

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v3

    if-nez v3, :cond_162

    .line 83
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    .line 84
    sparse-switch v3, :sswitch_data_164

    .line 139
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_3

    .line 90
    :sswitch_17
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    if-nez v3, :cond_26

    .line 91
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    new-instance v6, Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {v6}, Lcom/bumptech/glide/gifdecoder/GifFrame;-><init>()V

    iput-object v6, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 1177
    :cond_26
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 1368
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 1177
    iput v6, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    .line 1178
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 2368
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 1178
    iput v6, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    .line 1179
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 3368
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 1179
    iput v6, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 1180
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 4368
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 1180
    iput v6, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    .line 1182
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v6

    .line 1184
    and-int/lit16 v3, v6, 0x80

    if-eqz v3, :cond_af

    move v3, v4

    .line 1185
    :goto_5f
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    and-int/lit8 v7, v6, 0x7

    add-int/lit8 v7, v7, 0x1

    int-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v7, v8

    .line 1189
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v8, v8, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_b1

    move v6, v4

    :goto_74
    iput-boolean v6, v8, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    .line 1190
    if-eqz v3, :cond_b3

    .line 1192
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0, v7}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readColorTable(I)[I

    move-result-object v6

    iput-object v6, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    .line 1199
    :goto_82
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    .line 5307
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    .line 5309
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    .line 1204
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1208
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v6, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 1210
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_af
    move v3, v5

    .line 1184
    goto :goto_5f

    :cond_b1
    move v6, v5

    .line 1189
    goto :goto_74

    .line 1195
    :cond_b3
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    goto :goto_82

    .line 97
    :sswitch_bb
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    .line 98
    sparse-switch v3, :sswitch_data_172

    .line 129
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    goto/16 :goto_3

    .line 102
    :sswitch_c7
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    new-instance v6, Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {v6}, Lcom/bumptech/glide/gifdecoder/GifFrame;-><init>()V

    iput-object v6, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 6149
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    .line 6151
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    .line 6153
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    and-int/lit8 v7, v3, 0x1c

    shr-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 6154
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-nez v6, :cond_ef

    .line 6156
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    iput v4, v6, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 6158
    :cond_ef
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_11c

    move v3, v4

    :goto_f8
    iput-boolean v3, v6, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    .line 6368
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 6162
    const/4 v6, 0x3

    if-ge v3, v6, :cond_105

    .line 6163
    const/16 v3, 0xa

    .line 6165
    :cond_105
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    mul-int/lit8 v3, v3, 0xa

    iput v3, v6, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    .line 6167
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v6

    iput v6, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    .line 6169
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    goto/16 :goto_3

    :cond_11c
    move v3, v5

    .line 6158
    goto :goto_f8

    .line 107
    :sswitch_11e
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readBlock()I

    .line 108
    const-string/jumbo v0, ""

    .line 109
    .local v0, "app":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_125
    const/16 v3, 0xb

    if-ge v2, v3, :cond_142

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    aget-byte v6, v6, v2

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_125

    .line 112
    :cond_142
    const-string/jumbo v3, "NETSCAPE2.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_150

    .line 113
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readNetscapeExt()V

    goto/16 :goto_3

    .line 116
    :cond_150
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    goto/16 :goto_3

    .line 121
    .end local v0    # "app":Ljava/lang/String;
    .end local v2    # "i":I
    :sswitch_155
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    goto/16 :goto_3

    .line 125
    :sswitch_15a
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    goto/16 :goto_3

    .line 134
    :sswitch_15f
    const/4 v1, 0x1

    .line 135
    goto/16 :goto_3

    .line 142
    :cond_162
    return-void

    .line 84
    nop

    :sswitch_data_164
    .sparse-switch
        0x21 -> :sswitch_bb
        0x2c -> :sswitch_17
        0x3b -> :sswitch_15f
    .end sparse-switch

    .line 98
    :sswitch_data_172
    .sparse-switch
        0x1 -> :sswitch_15a
        0xf9 -> :sswitch_c7
        0xfe -> :sswitch_155
        0xff -> :sswitch_11e
    .end sparse-switch
.end method

.method private readHeader()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 232
    const-string/jumbo v1, ""

    .line 233
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    const/4 v3, 0x6

    if-ge v0, v3, :cond_21

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 236
    :cond_21
    const-string/jumbo v3, "GIF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 237
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iput v2, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 245
    :cond_2e
    :goto_2e
    return-void

    .line 7251
    :cond_2f
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 7368
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 7251
    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 7252
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 8368
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 7252
    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 7254
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    .line 7256
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_8f

    :goto_4d
    iput-boolean v2, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctFlag:Z

    .line 7260
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x7

    shl-int v3, v4, v3

    iput v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctSize:I

    .line 7262
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    iput v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    .line 7264
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    iput v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->pixelAspect:I

    .line 241
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-boolean v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctFlag:Z

    if-eqz v2, :cond_2e

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 242
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctSize:I

    invoke-direct {p0, v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readColorTable(I)[I

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    .line 243
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    aget v3, v3, v4

    iput v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    goto :goto_2e

    .line 7256
    :cond_8f
    const/4 v2, 0x0

    goto :goto_4d
.end method

.method private readNetscapeExt()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readBlock()I

    .line 218
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1f

    .line 220
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 221
    .local v0, "b1":I
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 222
    .local v1, "b2":I
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v3, v0

    iput v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    .line 224
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :cond_1f
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-lez v2, :cond_29

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :cond_29
    return-void
.end method

.method private skip()V
    .registers 4

    .prologue
    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v0

    .line 319
    .local v0, "blockSize":I
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 320
    if-gtz v0, :cond_0

    .line 321
    return-void
.end method


# virtual methods
.method public final parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_d

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_d
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 73
    :goto_15
    return-object v0

    .line 65
    :cond_16
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readHeader()V

    .line 66
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 67
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readContents()V

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-gez v0, :cond_2d

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 73
    :cond_2d
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    goto :goto_15
.end method

.method public final setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .registers 5
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    .line 1051
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 1052
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 1053
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 1054
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    .line 34
    if-eqz p1, :cond_27

    .line 35
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    :goto_26
    return-object p0

    .line 39
    :cond_27
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v1, 0x2

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_26
.end method
