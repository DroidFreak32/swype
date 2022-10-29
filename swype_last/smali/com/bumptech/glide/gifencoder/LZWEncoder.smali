.class final Lcom/bumptech/glide/gifencoder/LZWEncoder;
.super Ljava/lang/Object;
.source "LZWEncoder.java"


# instance fields
.field ClearCode:I

.field EOFCode:I

.field a_count:I

.field accum:[B

.field clear_flg:Z

.field codetab:[I

.field curPixel:I

.field cur_accum:I

.field cur_bits:I

.field free_ent:I

.field g_init_bits:I

.field hsize:I

.field htab:[I

.field imgH:I

.field imgW:I

.field initCodeSize:I

.field masks:[I

.field maxbits:I

.field maxcode:I

.field maxmaxcode:I

.field n_bits:I

.field private pixAry:[B

.field remaining:I


# direct methods
.method constructor <init>(II[BI)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixels"    # [B
    .param p4, "color_depth"    # I

    .prologue
    const/16 v2, 0x138b

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0xc

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxbits:I

    .line 52
    const/16 v0, 0x1000

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxmaxcode:I

    .line 54
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    .line 56
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    .line 58
    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    .line 60
    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    .line 64
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 99
    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 101
    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    .line 103
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->masks:[I

    .line 110
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->accum:[B

    .line 114
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgW:I

    .line 115
    iput p2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgH:I

    .line 116
    iput-object p3, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->pixAry:[B

    .line 117
    const/4 v0, 0x2

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->initCodeSize:I

    .line 118
    return-void

    .line 103
    nop

    :array_3e
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method private char_out(BLjava/io/OutputStream;)V
    .registers 6
    .param p1, "c"    # B
    .param p2, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->accum:[B

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    aput-byte p1, v0, v1

    .line 124
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    const/16 v1, 0xfe

    if-lt v0, v1, :cond_13

    .line 125
    invoke-direct {p0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    .line 126
    :cond_13
    return-void
.end method

.method private cl_hash(I)V
    .registers 5
    .param p1, "hsize"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_b

    .line 142
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_b
    return-void
.end method

.method private flush_char(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 230
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    if-lez v0, :cond_13

    .line 231
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 232
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->accum:[B

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 233
    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    .line 235
    :cond_13
    return-void
.end method

.method private nextPixel()I
    .registers 4

    .prologue
    .line 245
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    if-nez v0, :cond_6

    .line 246
    const/4 v0, -0x1

    .line 252
    :goto_5
    return v0

    .line 248
    :cond_6
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    .line 250
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->pixAry:[B

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->curPixel:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->curPixel:I

    aget-byte v0, v0, v1

    .line 252
    and-int/lit16 v0, v0, 0xff

    goto :goto_5
.end method

.method private output(ILjava/io/OutputStream;)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 256
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->masks:[I

    iget v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 258
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    if-lez v0, :cond_3b

    .line 259
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 263
    :goto_19
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    .line 265
    :goto_20
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3e

    .line 266
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 267
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 268
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    goto :goto_20

    .line 261
    :cond_3b
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    goto :goto_19

    .line 273
    :cond_3e
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    if-gt v0, v1, :cond_48

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_59

    .line 274
    :cond_48
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_76

    .line 275
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g_init_bits:I

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    .line 2238
    shl-int v0, v3, v0

    add-int/lit8 v0, v0, -0x1

    .line 275
    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 286
    :cond_59
    :goto_59
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->EOFCode:I

    if-ne p1, v0, :cond_93

    .line 288
    :goto_5d
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    if-lez v0, :cond_90

    .line 289
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 290
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 291
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    goto :goto_5d

    .line 278
    :cond_76
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    .line 279
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxbits:I

    if-ne v0, v1, :cond_87

    .line 280
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxmaxcode:I

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    goto :goto_59

    .line 282
    :cond_87
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    .line 3238
    shl-int v0, v3, v0

    add-int/lit8 v0, v0, -0x1

    .line 282
    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    goto :goto_59

    .line 294
    :cond_90
    invoke-direct {p0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    .line 296
    :cond_93
    return-void
.end method


# virtual methods
.method final compress(ILjava/io/OutputStream;)V
    .registers 14
    .param p1, "init_bits"    # I
    .param p2, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 155
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g_init_bits:I

    .line 158
    iput-boolean v8, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 159
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g_init_bits:I

    iput v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    .line 160
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    .line 1238
    shl-int v7, v10, v7

    add-int/lit8 v7, v7, -0x1

    .line 160
    iput v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    .line 162
    add-int/lit8 v7, p1, -0x1

    shl-int v7, v10, v7

    iput v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    .line 163
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->EOFCode:I

    .line 164
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    .line 166
    iput v8, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->nextPixel()I

    move-result v2

    .line 170
    .local v2, "ent":I
    const/4 v4, 0x0

    .line 171
    .local v4, "hshift":I
    iget v3, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    .local v3, "fcode":I
    :goto_2d
    const/high16 v7, 0x10000

    if-ge v3, v7, :cond_36

    .line 172
    add-int/lit8 v4, v4, 0x1

    .line 171
    mul-int/lit8 v3, v3, 0x2

    goto :goto_2d

    .line 173
    :cond_36
    rsub-int/lit8 v4, v4, 0x8

    .line 175
    iget v5, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    .line 176
    .local v5, "hsize_reg":I
    invoke-direct {p0, v5}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cl_hash(I)V

    .line 178
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    invoke-direct {p0, v7, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 181
    :goto_42
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->nextPixel()I

    move-result v0

    .local v0, "c":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_aa

    .line 182
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxbits:I

    shl-int v7, v0, v7

    add-int v3, v7, v2

    .line 183
    shl-int v7, v0, v4

    xor-int v6, v7, v2

    .line 185
    .local v6, "i":I
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-ne v7, v3, :cond_5e

    .line 186
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    aget v2, v7, v6

    .line 187
    goto :goto_42

    .line 188
    :cond_5e
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-ltz v7, :cond_7e

    .line 190
    sub-int v1, v5, v6

    .line 191
    .local v1, "disp":I
    if-nez v6, :cond_69

    .line 192
    const/4 v1, 0x1

    .line 194
    :cond_69
    sub-int/2addr v6, v1

    if-gez v6, :cond_6d

    .line 195
    add-int/2addr v6, v5

    .line 197
    :cond_6d
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-ne v7, v3, :cond_78

    .line 198
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    aget v2, v7, v6

    .line 199
    goto :goto_42

    .line 201
    :cond_78
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-gez v7, :cond_69

    .line 203
    .end local v1    # "disp":I
    :cond_7e
    invoke-direct {p0, v2, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 204
    move v2, v0

    .line 205
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    iget v8, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxmaxcode:I

    if-ge v7, v8, :cond_97

    .line 206
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    iget v8, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    aput v8, v7, v6

    .line 207
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aput v3, v7, v6

    goto :goto_42

    .line 2132
    :cond_97
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    invoke-direct {p0, v7}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cl_hash(I)V

    .line 2133
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    .line 2134
    iput-boolean v10, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 2136
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    invoke-direct {p0, v7, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    goto :goto_42

    .line 212
    .end local v6    # "i":I
    :cond_aa
    invoke-direct {p0, v2, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 213
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->EOFCode:I

    invoke-direct {p0, v7, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 214
    return-void
.end method
