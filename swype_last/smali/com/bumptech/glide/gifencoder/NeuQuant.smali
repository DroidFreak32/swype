.class final Lcom/bumptech/glide/gifencoder/NeuQuant;
.super Ljava/lang/Object;
.source "NeuQuant.java"


# instance fields
.field protected alphadec:I

.field protected bias:[I

.field protected freq:[I

.field protected lengthcount:I

.field protected netindex:[I

.field protected network:[[I

.field protected radpower:[I

.field protected samplefac:I

.field protected thepicture:[B


# direct methods
.method public constructor <init>([BII)V
    .registers 11
    .param p1, "thepic"    # [B
    .param p2, "len"    # I
    .param p3, "sample"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x100

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    .line 127
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    .line 130
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    .line 132
    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    .line 145
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    .line 146
    iput p2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    .line 147
    iput p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    .line 149
    new-array v2, v5, [[I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v5, :cond_47

    .line 151
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput-object v3, v2, v0

    .line 152
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v2, v0

    .line 153
    .local v1, "p":[I
    const/4 v2, 0x1

    const/4 v3, 0x2

    shl-int/lit8 v4, v0, 0xc

    div-int/lit16 v4, v4, 0x100

    aput v4, v1, v3

    aput v4, v1, v2

    aput v4, v1, v6

    .line 154
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aput v5, v2, v0

    .line 155
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aput v6, v2, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 157
    .end local v1    # "p":[I
    :cond_47
    return-void
.end method


# virtual methods
.method public final colorMap()[B
    .registers 10

    .prologue
    const/16 v8, 0x100

    .line 160
    const/16 v6, 0x300

    new-array v5, v6, [B

    .line 161
    .local v5, "map":[B
    new-array v1, v8, [I

    .line 162
    .local v1, "index":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v8, :cond_17

    .line 163
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    aput v0, v1, v6

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 164
    :cond_17
    const/4 v3, 0x0

    .line 165
    .local v3, "k":I
    const/4 v0, 0x0

    move v4, v3

    .end local v3    # "k":I
    .local v4, "k":I
    :goto_1a
    if-ge v0, v8, :cond_46

    .line 166
    aget v2, v1, v0

    .line 167
    .local v2, "j":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 168
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 169
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 165
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "k":I
    .restart local v4    # "k":I
    goto :goto_1a

    .line 171
    .end local v2    # "j":I
    :cond_46
    return-object v5
.end method

.method public final inxbuild()V
    .registers 16

    .prologue
    const/16 v14, 0x100

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, "previouscol":I
    const/4 v7, 0x0

    .line 188
    .local v7, "startpos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v14, :cond_64

    .line 189
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v8, v0

    .line 190
    .local v2, "p":[I
    move v5, v0

    .line 191
    .local v5, "smallpos":I
    aget v6, v2, v10

    .line 193
    .local v6, "smallval":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_14
    if-ge v1, v14, :cond_24

    .line 194
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v4, v8, v1

    .line 195
    .local v4, "q":[I
    aget v8, v4, v10

    if-ge v8, v6, :cond_21

    .line 196
    move v5, v1

    .line 197
    aget v6, v4, v10

    .line 193
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 200
    .end local v4    # "q":[I
    :cond_24
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v4, v8, v5

    .line 202
    .restart local v4    # "q":[I
    if-eq v0, v5, :cond_4a

    .line 203
    aget v1, v4, v11

    .line 204
    aget v8, v2, v11

    aput v8, v4, v11

    .line 205
    aput v1, v2, v11

    .line 206
    aget v1, v4, v10

    .line 207
    aget v8, v2, v10

    aput v8, v4, v10

    .line 208
    aput v1, v2, v10

    .line 209
    aget v1, v4, v12

    .line 210
    aget v8, v2, v12

    aput v8, v4, v12

    .line 211
    aput v1, v2, v12

    .line 212
    aget v1, v4, v13

    .line 213
    aget v8, v2, v13

    aput v8, v4, v13

    .line 214
    aput v1, v2, v13

    .line 217
    :cond_4a
    if-eq v6, v3, :cond_61

    .line 218
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int v9, v7, v0

    shr-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 219
    add-int/lit8 v1, v3, 0x1

    :goto_56
    if-ge v1, v6, :cond_5f

    .line 220
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aput v0, v8, v1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 221
    :cond_5f
    move v3, v6

    .line 222
    move v7, v0

    .line 188
    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 225
    .end local v1    # "j":I
    .end local v2    # "p":[I
    .end local v4    # "q":[I
    .end local v5    # "smallpos":I
    .end local v6    # "smallval":I
    :cond_64
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int/lit16 v9, v7, 0xff

    shr-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 226
    add-int/lit8 v1, v3, 0x1

    .restart local v1    # "j":I
    :goto_6e
    if-ge v1, v14, :cond_79

    .line 227
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    const/16 v9, 0xff

    aput v9, v8, v1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 228
    :cond_79
    return-void
.end method

.method public final learn()V
    .registers 28

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v16, v0

    const/16 v17, 0x5e5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_16

    .line 241
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    .line 242
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    div-int/lit8 v16, v16, 0x3

    add-int/lit8 v16, v16, 0x1e

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    .line 243
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    .line 244
    .local v9, "p":[B
    const/4 v10, 0x0

    .line 245
    .local v10, "pix":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    .line 246
    .local v8, "lim":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3

    div-int v14, v16, v17

    .line 247
    .local v14, "samplepixels":I
    div-int/lit8 v4, v14, 0x64

    .line 248
    .local v4, "delta":I
    const/16 v2, 0x400

    .line 249
    .local v2, "alpha":I
    const/16 v13, 0x800

    .line 251
    .local v13, "radius":I
    const/16 v12, 0x20

    .line 254
    .local v12, "rad":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4a
    const/16 v16, 0x20

    move/from16 v0, v16

    if-ge v6, v0, :cond_75

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    move-object/from16 v16, v0

    mul-int v17, v6, v6

    move/from16 v0, v17

    rsub-int v0, v0, 0x400

    move/from16 v17, v0

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    aput v17, v16, v6

    .line 254
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 259
    :cond_75
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v16, v0

    const/16 v17, 0x5e5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_13d

    .line 260
    const/4 v15, 0x3

    .line 274
    .local v15, "step":I
    :goto_84
    const/4 v6, 0x0

    .line 275
    :cond_85
    if-ge v6, v14, :cond_30d

    .line 276
    add-int/lit8 v16, v10, 0x0

    aget-byte v16, v9, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v3, v16, 0x4

    .line 277
    .local v3, "b":I
    add-int/lit8 v16, v10, 0x1

    aget-byte v16, v9, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v5, v16, 0x4

    .line 278
    .local v5, "g":I
    add-int/lit8 v16, v10, 0x2

    aget-byte v16, v9, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v11, v16, 0x4

    .line 1471
    .local v11, "r":I
    const v18, 0x7fffffff

    .line 1472
    const v21, 0x7fffffff

    .line 1473
    const/16 v20, -0x1

    .line 1474
    const/4 v7, -0x1

    .line 1476
    const/16 v19, 0x0

    :goto_b6
    const/16 v16, 0x100

    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_177

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move-object/from16 v16, v0

    aget-object v22, v16, v19

    .line 1478
    const/16 v16, 0x0

    aget v16, v22, v16

    sub-int v16, v16, v3

    .line 1479
    if-gez v16, :cond_d3

    .line 1480
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    .line 1481
    :cond_d3
    const/16 v17, 0x1

    aget v17, v22, v17

    sub-int v17, v17, v5

    .line 1482
    if-gez v17, :cond_e0

    .line 1483
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    .line 1484
    :cond_e0
    add-int v17, v17, v16

    .line 1485
    const/16 v16, 0x2

    aget v16, v22, v16

    sub-int v16, v16, v11

    .line 1486
    if-gez v16, :cond_ef

    .line 1487
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    .line 1488
    :cond_ef
    add-int v17, v17, v16

    .line 1489
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_31a

    move/from16 v16, v17

    move/from16 v18, v19

    .line 1493
    :goto_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    move-object/from16 v20, v0

    aget v20, v20, v19

    shr-int/lit8 v20, v20, 0xc

    sub-int v17, v17, v20

    .line 1494
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_316

    move/from16 v7, v19

    .line 1498
    :goto_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    move-object/from16 v20, v0

    aget v20, v20, v19

    shr-int/lit8 v20, v20, 0xa

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    move-object/from16 v21, v0

    aget v22, v21, v19

    sub-int v22, v22, v20

    aput v22, v21, v19

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    move-object/from16 v21, v0

    aget v22, v21, v19

    shl-int/lit8 v20, v20, 0xa

    add-int v20, v20, v22

    aput v20, v21, v19

    .line 1476
    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v17

    move/from16 v20, v18

    move/from16 v18, v16

    goto/16 :goto_b6

    .line 261
    .end local v3    # "b":I
    .end local v5    # "g":I
    .end local v11    # "r":I
    .end local v15    # "step":I
    :cond_13d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v16, v0

    move/from16 v0, v16

    rem-int/lit16 v0, v0, 0x1f3

    move/from16 v16, v0

    if-eqz v16, :cond_14f

    .line 262
    const/16 v15, 0x5d9

    .restart local v15    # "step":I
    goto/16 :goto_84

    .line 264
    .end local v15    # "step":I
    :cond_14f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v16, v0

    move/from16 v0, v16

    rem-int/lit16 v0, v0, 0x1eb

    move/from16 v16, v0

    if-eqz v16, :cond_161

    .line 265
    const/16 v15, 0x5c1

    .restart local v15    # "step":I
    goto/16 :goto_84

    .line 267
    .end local v15    # "step":I
    :cond_161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v16, v0

    move/from16 v0, v16

    rem-int/lit16 v0, v0, 0x1e7

    move/from16 v16, v0

    if-eqz v16, :cond_173

    .line 268
    const/16 v15, 0x5b5

    .restart local v15    # "step":I
    goto/16 :goto_84

    .line 270
    .end local v15    # "step":I
    :cond_173
    const/16 v15, 0x5e5

    .restart local v15    # "step":I
    goto/16 :goto_84

    .line 1502
    .restart local v3    # "b":I
    .restart local v5    # "g":I
    .restart local v11    # "r":I
    :cond_177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    move-object/from16 v16, v0

    aget v17, v16, v20

    add-int/lit8 v17, v17, 0x40

    aput v17, v16, v20

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    move-object/from16 v16, v0

    aget v17, v16, v20

    const/high16 v18, 0x10000

    sub-int v17, v17, v18

    aput v17, v16, v20

    .line 2451
    .local v7, "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    .line 2452
    const/16 v17, 0x0

    aget v18, v16, v17

    const/16 v19, 0x0

    aget v19, v16, v19

    sub-int v19, v19, v3

    mul-int v19, v19, v2

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    sub-int v18, v18, v19

    aput v18, v16, v17

    .line 2453
    const/16 v17, 0x1

    aget v18, v16, v17

    const/16 v19, 0x1

    aget v19, v16, v19

    sub-int v19, v19, v5

    mul-int v19, v19, v2

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    sub-int v18, v18, v19

    aput v18, v16, v17

    .line 2454
    const/16 v17, 0x2

    aget v18, v16, v17

    const/16 v19, 0x2

    aget v19, v16, v19

    sub-int v19, v19, v11

    mul-int v19, v19, v2

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    sub-int v18, v18, v19

    aput v18, v16, v17

    .line 282
    if-eqz v12, :cond_2c2

    .line 3411
    sub-int v16, v7, v12

    .line 3412
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_312

    .line 3413
    const/16 v16, -0x1

    move/from16 v21, v16

    .line 3414
    :goto_1eb
    add-int v16, v7, v12

    .line 3415
    const/16 v17, 0x100

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1f7

    .line 3416
    const/16 v16, 0x100

    .line 3418
    :cond_1f7
    add-int/lit8 v19, v7, 0x1

    .line 3419
    add-int/lit8 v18, v7, -0x1

    .line 3420
    const/16 v17, 0x1

    move/from16 v20, v19

    move/from16 v19, v18

    .line 3421
    :goto_201
    move/from16 v0, v20

    move/from16 v1, v16

    if-lt v0, v1, :cond_20d

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_2c2

    .line 3422
    :cond_20d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    move-object/from16 v22, v0

    add-int/lit8 v18, v17, 0x1

    aget v22, v22, v17

    .line 3423
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_265

    .line 3424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move-object/from16 v23, v0

    add-int/lit8 v17, v20, 0x1

    aget-object v20, v23, v20

    .line 3426
    const/16 v23, 0x0

    :try_start_229
    aget v24, v20, v23

    const/16 v25, 0x0

    aget v25, v20, v25

    sub-int v25, v25, v3

    mul-int v25, v25, v22

    const/high16 v26, 0x40000

    div-int v25, v25, v26

    sub-int v24, v24, v25

    aput v24, v20, v23

    .line 3427
    const/16 v23, 0x1

    aget v24, v20, v23

    const/16 v25, 0x1

    aget v25, v20, v25

    sub-int v25, v25, v5

    mul-int v25, v25, v22

    const/high16 v26, 0x40000

    div-int v25, v25, v26

    sub-int v24, v24, v25

    aput v24, v20, v23

    .line 3428
    const/16 v23, 0x2

    aget v24, v20, v23

    const/16 v25, 0x2

    aget v25, v20, v25

    sub-int v25, v25, v11

    mul-int v25, v25, v22

    const/high16 v26, 0x40000

    div-int v25, v25, v26

    sub-int v24, v24, v25

    aput v24, v20, v23
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_263} :catch_2b7

    move/from16 v20, v17

    .line 3432
    :cond_265
    :goto_265
    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_30e

    .line 3433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move-object/from16 v23, v0

    add-int/lit8 v17, v19, -0x1

    aget-object v19, v23, v19

    .line 3435
    const/16 v23, 0x0

    :try_start_277
    aget v24, v19, v23

    const/16 v25, 0x0

    aget v25, v19, v25

    sub-int v25, v25, v3

    mul-int v25, v25, v22

    const/high16 v26, 0x40000

    div-int v25, v25, v26

    sub-int v24, v24, v25

    aput v24, v19, v23

    .line 3436
    const/16 v23, 0x1

    aget v24, v19, v23

    const/16 v25, 0x1

    aget v25, v19, v25

    sub-int v25, v25, v5

    mul-int v25, v25, v22

    const/high16 v26, 0x40000

    div-int v25, v25, v26

    sub-int v24, v24, v25

    aput v24, v19, v23

    .line 3437
    const/16 v23, 0x2

    aget v24, v19, v23

    const/16 v25, 0x2

    aget v25, v19, v25

    sub-int v25, v25, v11

    mul-int v22, v22, v25

    const/high16 v25, 0x40000

    div-int v22, v22, v25

    sub-int v22, v24, v22

    aput v22, v19, v23
    :try_end_2b1
    .catch Ljava/lang/Exception; {:try_start_277 .. :try_end_2b1} :catch_2bb

    move/from16 v19, v17

    move/from16 v17, v18

    .line 3439
    goto/16 :goto_201

    :catch_2b7
    move-exception v20

    move/from16 v20, v17

    goto :goto_265

    :catch_2bb
    move-exception v19

    move/from16 v19, v17

    move/from16 v17, v18

    goto/16 :goto_201

    .line 285
    :cond_2c2
    add-int/2addr v10, v15

    .line 286
    if-lt v10, v8, :cond_2cd

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v16, v0

    sub-int v10, v10, v16

    .line 289
    :cond_2cd
    add-int/lit8 v6, v6, 0x1

    .line 290
    if-nez v4, :cond_2d2

    .line 291
    const/4 v4, 0x1

    .line 292
    :cond_2d2
    rem-int v16, v6, v4

    if-nez v16, :cond_85

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    move/from16 v16, v0

    div-int v16, v2, v16

    sub-int v2, v2, v16

    .line 294
    div-int/lit8 v16, v13, 0x1e

    sub-int v13, v13, v16

    .line 295
    shr-int/lit8 v12, v13, 0x6

    .line 296
    const/16 v16, 0x1

    move/from16 v0, v16

    if-gt v12, v0, :cond_2ed

    .line 297
    const/4 v12, 0x0

    .line 298
    :cond_2ed
    const/4 v7, 0x0

    :goto_2ee
    if-ge v7, v12, :cond_85

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    move-object/from16 v16, v0

    mul-int v17, v12, v12

    mul-int v18, v7, v7

    sub-int v17, v17, v18

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    mul-int v18, v12, v12

    div-int v17, v17, v18

    mul-int v17, v17, v2

    aput v17, v16, v7

    .line 298
    add-int/lit8 v7, v7, 0x1

    goto :goto_2ee

    .line 304
    .end local v3    # "b":I
    .end local v5    # "g":I
    .end local v7    # "j":I
    .end local v11    # "r":I
    :cond_30d
    return-void

    .restart local v3    # "b":I
    .restart local v5    # "g":I
    .restart local v7    # "j":I
    .restart local v11    # "r":I
    :cond_30e
    move/from16 v17, v18

    goto/16 :goto_201

    :cond_312
    move/from16 v21, v16

    goto/16 :goto_1eb

    .end local v7    # "j":I
    :cond_316
    move/from16 v17, v21

    goto/16 :goto_10f

    :cond_31a
    move/from16 v16, v18

    move/from16 v18, v20

    goto/16 :goto_fb
.end method

.method public final map(III)I
    .registers 12
    .param p1, "b"    # I
    .param p2, "g"    # I
    .param p3, "r"    # I

    .prologue
    .line 317
    const/16 v2, 0x3e8

    .line 318
    .local v2, "bestd":I
    const/4 v1, -0x1

    .line 319
    .local v1, "best":I
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aget v4, v7, p2

    .line 320
    .local v4, "i":I
    add-int/lit8 v5, v4, -0x1

    .line 322
    .local v5, "j":I
    :cond_9
    :goto_9
    const/16 v7, 0x100

    if-lt v4, v7, :cond_f

    if-ltz v5, :cond_6f

    .line 323
    :cond_f
    const/16 v7, 0x100

    if-ge v4, v7, :cond_20

    .line 324
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v7, v4

    .line 325
    .local v6, "p":[I
    const/4 v7, 0x1

    aget v7, v6, v7

    sub-int v3, v7, p2

    .line 326
    .local v3, "dist":I
    if-lt v3, v2, :cond_2f

    .line 327
    const/16 v4, 0x100

    .line 348
    .end local v3    # "dist":I
    .end local v6    # "p":[I
    :cond_20
    :goto_20
    if-ltz v5, :cond_9

    .line 349
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v7, v5

    .line 350
    .restart local v6    # "p":[I
    const/4 v7, 0x1

    aget v7, v6, v7

    sub-int v3, p2, v7

    .line 351
    .restart local v3    # "dist":I
    if-lt v3, v2, :cond_4f

    .line 352
    const/4 v5, -0x1

    goto :goto_9

    .line 329
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    .line 330
    if-gez v3, :cond_34

    .line 331
    neg-int v3, v3

    .line 332
    :cond_34
    const/4 v7, 0x0

    aget v7, v6, v7

    sub-int v0, v7, p1

    .line 333
    .local v0, "a":I
    if-gez v0, :cond_3c

    .line 334
    neg-int v0, v0

    .line 335
    :cond_3c
    add-int/2addr v3, v0

    .line 336
    if-ge v3, v2, :cond_20

    .line 337
    const/4 v7, 0x2

    aget v7, v6, v7

    sub-int v0, v7, p3

    .line 338
    if-gez v0, :cond_47

    .line 339
    neg-int v0, v0

    .line 340
    :cond_47
    add-int/2addr v3, v0

    .line 341
    if-ge v3, v2, :cond_20

    .line 342
    move v2, v3

    .line 343
    const/4 v7, 0x3

    aget v1, v6, v7

    goto :goto_20

    .line 354
    .end local v0    # "a":I
    :cond_4f
    add-int/lit8 v5, v5, -0x1

    .line 355
    if-gez v3, :cond_54

    .line 356
    neg-int v3, v3

    .line 357
    :cond_54
    const/4 v7, 0x0

    aget v7, v6, v7

    sub-int v0, v7, p1

    .line 358
    .restart local v0    # "a":I
    if-gez v0, :cond_5c

    .line 359
    neg-int v0, v0

    .line 360
    :cond_5c
    add-int/2addr v3, v0

    .line 361
    if-ge v3, v2, :cond_9

    .line 362
    const/4 v7, 0x2

    aget v7, v6, v7

    sub-int v0, v7, p3

    .line 363
    if-gez v0, :cond_67

    .line 364
    neg-int v0, v0

    .line 365
    :cond_67
    add-int/2addr v3, v0

    .line 366
    if-ge v3, v2, :cond_9

    .line 367
    move v2, v3

    .line 368
    const/4 v7, 0x3

    aget v1, v6, v7

    goto :goto_9

    .line 374
    .end local v0    # "a":I
    .end local v3    # "dist":I
    .end local v6    # "p":[I
    :cond_6f
    return v1
.end method

.method public final unbiasnet()V
    .registers 5

    .prologue
    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_30

    .line 394
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    .line 395
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    .line 396
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    .line 397
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x3

    aput v0, v1, v2

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 399
    :cond_30
    return-void
.end method
