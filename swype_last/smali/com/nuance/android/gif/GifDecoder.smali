.class public Lcom/nuance/android/gif/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/android/gif/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected copyScratch:[I

.field protected currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

.field protected currentImage:Landroid/graphics/Bitmap;

.field protected frameCount:I

.field protected framePointer:I

.field protected frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/android/gif/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected mainPixels:[B

.field protected mainScratch:[I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected prefix:[S

.field protected previousImage:Landroid/graphics/Bitmap;

.field protected rawData:Ljava/nio/ByteBuffer;

.field protected status:I

.field protected suffix:[B

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/nuance/android/gif/GifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/gif/GifDecoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/android/gif/GifDecoder;->loopCount:I

    .line 113
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->block:[B

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/android/gif/GifDecoder;->blockSize:I

    return-void
.end method

.method private decodeBitmapData(Lcom/nuance/android/gif/GifDecoder$GifFrame;[B)V
    .registers 27
    .param p1, "frame"    # Lcom/nuance/android/gif/GifDecoder$GifFrame;
    .param p2, "dstPixels"    # [B

    .prologue
    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 422
    if-eqz p1, :cond_14

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/nuance/android/gif/GifDecoder$GifFrame;->bufferFrameStart:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 428
    :cond_14
    if-nez p1, :cond_aa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/android/gif/GifDecoder;->width:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/android/gif/GifDecoder;->height:I

    move/from16 v23, v0

    mul-int v16, v22, v23

    .line 431
    .local v16, "npix":I
    :goto_24
    if-eqz p2, :cond_31

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_37

    .line 432
    :cond_31
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 p2, v0

    .line 434
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    if-nez v22, :cond_4d

    .line 435
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v0, v0, [S

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/android/gif/GifDecoder;->prefix:[S

    .line 437
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_63

    .line 438
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/android/gif/GifDecoder;->suffix:[B

    .line 440
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_79

    .line 441
    const/16 v22, 0x1001

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/android/gif/GifDecoder;->pixelStack:[B

    .line 445
    :cond_79
    invoke-direct/range {p0 .. p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    move-result v10

    .line 446
    .local v10, "data_size":I
    const/16 v22, 0x1

    shl-int v5, v22, v10

    .line 447
    .local v5, "clear":I
    add-int/lit8 v12, v5, 0x1

    .line 448
    .local v12, "end_of_information":I
    add-int/lit8 v2, v5, 0x2

    .line 449
    .local v2, "available":I
    const/16 v17, -0x1

    .line 450
    .local v17, "old_code":I
    add-int/lit8 v8, v10, 0x1

    .line 451
    .local v8, "code_size":I
    const/16 v22, 0x1

    shl-int v22, v22, v8

    add-int/lit8 v7, v22, -0x1

    .line 452
    .local v7, "code_mask":I
    const/4 v6, 0x0

    .local v6, "code":I
    :goto_90
    if-ge v6, v5, :cond_ba

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-short v23, v22, v6

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    int-to-byte v0, v6

    move/from16 v23, v0

    aput-byte v23, v22, v6

    .line 452
    add-int/lit8 v6, v6, 0x1

    goto :goto_90

    .line 428
    .end local v2    # "available":I
    .end local v5    # "clear":I
    .end local v6    # "code":I
    .end local v7    # "code_mask":I
    .end local v8    # "code_size":I
    .end local v10    # "data_size":I
    .end local v12    # "end_of_information":I
    .end local v16    # "npix":I
    .end local v17    # "old_code":I
    :cond_aa
    move-object/from16 v0, p1

    iget v0, v0, Lcom/nuance/android/gif/GifDecoder$GifFrame;->iw:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/nuance/android/gif/GifDecoder$GifFrame;->ih:I

    move/from16 v23, v0

    mul-int v16, v22, v23

    goto/16 :goto_24

    .line 458
    .restart local v2    # "available":I
    .restart local v5    # "clear":I
    .restart local v6    # "code":I
    .restart local v7    # "code_mask":I
    .restart local v8    # "code_size":I
    .restart local v10    # "data_size":I
    .restart local v12    # "end_of_information":I
    .restart local v16    # "npix":I
    .restart local v17    # "old_code":I
    :cond_ba
    const/4 v3, 0x0

    .local v3, "bi":I
    move/from16 v18, v3

    .local v18, "pi":I
    move/from16 v20, v3

    .local v20, "top":I
    move v13, v3

    .local v13, "first":I
    move v9, v3

    .local v9, "count":I
    move v4, v3

    .local v4, "bits":I
    move v11, v3

    .line 459
    .local v11, "datum":I
    const/4 v14, 0x0

    .local v14, "i":I
    move/from16 v19, v18

    .end local v18    # "pi":I
    .local v19, "pi":I
    move/from16 v21, v20

    .end local v20    # "top":I
    .local v21, "top":I
    :goto_c8
    move/from16 v0, v16

    if-ge v14, v0, :cond_1ba

    .line 460
    if-nez v21, :cond_1ca

    .line 461
    if-ge v4, v8, :cond_f2

    .line 463
    if-nez v9, :cond_d9

    .line 465
    invoke-direct/range {p0 .. p0}, Lcom/nuance/android/gif/GifDecoder;->readBlock()I

    move-result v9

    .line 466
    if-lez v9, :cond_1ba

    .line 469
    const/4 v3, 0x0

    .line 471
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->block:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v3

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int v22, v22, v4

    add-int v11, v11, v22

    .line 472
    add-int/lit8 v4, v4, 0x8

    .line 473
    add-int/lit8 v3, v3, 0x1

    .line 474
    add-int/lit8 v9, v9, -0x1

    .line 475
    goto :goto_c8

    .line 478
    :cond_f2
    and-int v6, v11, v7

    .line 479
    shr-int/2addr v11, v8

    .line 480
    sub-int/2addr v4, v8

    .line 482
    if-gt v6, v2, :cond_1ba

    if-eq v6, v12, :cond_1ba

    .line 485
    if-ne v6, v5, :cond_109

    .line 487
    add-int/lit8 v8, v10, 0x1

    .line 488
    const/16 v22, 0x1

    shl-int v22, v22, v8

    add-int/lit8 v7, v22, -0x1

    .line 489
    add-int/lit8 v2, v5, 0x2

    .line 490
    const/16 v17, -0x1

    .line 491
    goto :goto_c8

    .line 493
    :cond_109
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_129

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    aput-byte v23, v22, v21

    .line 495
    move/from16 v17, v6

    .line 496
    move v13, v6

    move/from16 v21, v20

    .line 497
    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto :goto_c8

    .line 499
    :cond_129
    move v15, v6

    .line 500
    .local v15, "in_code":I
    if-ne v6, v2, :cond_13d

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 502
    move/from16 v6, v17

    move/from16 v21, v20

    .line 504
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_13d
    :goto_13d
    if-le v6, v5, :cond_15c

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    aput-byte v23, v22, v21

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    aget-short v6, v22, v6

    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto :goto_13d

    .line 508
    :cond_15c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v13, v0, 0xff

    .line 510
    const/16 v22, 0x1000

    move/from16 v0, v22

    if-ge v2, v0, :cond_1ba

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v23, v0

    aput-short v23, v22, v2

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v2

    .line 516
    add-int/lit8 v2, v2, 0x1

    .line 517
    and-int v22, v2, v7

    if-nez v22, :cond_1a2

    const/16 v22, 0x1000

    move/from16 v0, v22

    if-ge v2, v0, :cond_1a2

    .line 518
    add-int/lit8 v8, v8, 0x1

    .line 519
    add-int/2addr v7, v2

    .line 521
    :cond_1a2
    move/from16 v17, v15

    .line 524
    .end local v15    # "in_code":I
    :goto_1a4
    add-int/lit8 v20, v20, -0x1

    .line 525
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/android/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v20

    aput-byte v22, p2, v19

    .line 526
    add-int/lit8 v14, v14, 0x1

    move/from16 v19, v18

    .end local v18    # "pi":I
    .restart local v19    # "pi":I
    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_c8

    :cond_1ba
    move/from16 v20, v21

    .line 529
    .end local v21    # "top":I
    .restart local v20    # "top":I
    move/from16 v14, v19

    :goto_1be
    move/from16 v0, v16

    if-ge v14, v0, :cond_1c9

    .line 530
    const/16 v22, 0x0

    aput-byte v22, p2, v14

    .line 529
    add-int/lit8 v14, v14, 0x1

    goto :goto_1be

    .line 532
    :cond_1c9
    return-void

    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_1ca
    move/from16 v20, v21

    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto :goto_1a4
.end method

.method private err()Z
    .registers 2

    .prologue
    .line 538
    iget v0, p0, Lcom/nuance/android/gif/GifDecoder;->status:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private read()I
    .registers 3

    .prologue
    .line 556
    const/4 v0, 0x0

    .line 558
    .local v0, "curByte":I
    :try_start_1
    iget-object v1, p0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_a

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 562
    :goto_9
    return v0

    .line 560
    :catch_a
    move-exception v1

    const/4 v1, 0x1

    iput v1, p0, Lcom/nuance/android/gif/GifDecoder;->status:I

    goto :goto_9
.end method

.method private readBlock()I
    .registers 6

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    move-result v3

    iput v3, p0, Lcom/nuance/android/gif/GifDecoder;->blockSize:I

    .line 572
    const/4 v2, 0x0

    .line 573
    .local v2, "n":I
    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->blockSize:I

    if-lez v3, :cond_28

    .line 576
    :goto_b
    :try_start_b
    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_28

    .line 577
    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->blockSize:I

    sub-int v0, v3, v2

    .line 578
    .local v0, "count":I
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/nuance/android/gif/GifDecoder;->block:[B

    invoke-virtual {v3, v4, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1c

    .line 580
    add-int/2addr v2, v0

    goto :goto_b

    .line 582
    .end local v0    # "count":I
    :catch_1c
    move-exception v1

    .line 583
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/nuance/android/gif/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error Reading Block"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    const/4 v3, 0x1

    iput v3, p0, Lcom/nuance/android/gif/GifDecoder;->status:I

    .line 587
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_28
    return v2
.end method

.method private readColorTable(I)[I
    .registers 15
    .param p1, "ncolors"    # I

    .prologue
    .line 597
    mul-int/lit8 v8, p1, 0x3

    .line 598
    .local v8, "nbytes":I
    const/4 v10, 0x0

    .line 599
    .local v10, "tab":[I
    new-array v1, v8, [B

    .line 602
    .local v1, "c":[B
    :try_start_5
    iget-object v11, p0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 604
    const/16 v11, 0x100

    new-array v10, v11, [I

    .line 605
    const/4 v4, 0x0

    .line 606
    .local v4, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    move v7, v6

    .end local v6    # "j":I
    .local v7, "j":I
    move v5, v4

    .line 607
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_12
    if-ge v5, p1, :cond_42

    .line 608
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v11, v1, v7

    and-int/lit16 v9, v11, 0xff

    .line 609
    .local v9, "r":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    aget-byte v11, v1, v6

    and-int/lit16 v3, v11, 0xff

    .line 610
    .local v3, "g":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v11, v1, v7

    and-int/lit16 v0, v11, 0xff

    .line 611
    .local v0, "b":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/high16 v11, -0x1000000

    shl-int/lit8 v12, v9, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v3, 0x8

    or-int/2addr v11, v12

    or-int/2addr v11, v0

    aput v11, v10, v5
    :try_end_33
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_33} :catch_36

    move v7, v6

    .end local v6    # "j":I
    .restart local v7    # "j":I
    move v5, v4

    .line 612
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_12

    .line 613
    .end local v0    # "b":I
    .end local v3    # "g":I
    .end local v5    # "i":I
    .end local v7    # "j":I
    .end local v9    # "r":I
    :catch_36
    move-exception v2

    .line 614
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    sget-object v11, Lcom/nuance/android/gif/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Format Error Reading Color Table"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    const/4 v11, 0x1

    iput v11, p0, Lcom/nuance/android/gif/GifDecoder;->status:I

    .line 618
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :cond_42
    return-object v10
.end method

.method private readContents()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 626
    const/4 v1, 0x0

    .line 627
    .local v1, "done":Z
    :cond_4
    :goto_4
    if-nez v1, :cond_132

    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->err()Z

    move-result v3

    if-nez v3, :cond_132

    .line 628
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    move-result v3

    .line 629
    sparse-switch v3, :sswitch_data_134

    .line 668
    iput v4, p0, Lcom/nuance/android/gif/GifDecoder;->status:I

    goto :goto_4

    .line 2712
    :sswitch_16
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    .line 2787
    iget-object v6, p0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 2712
    iput v6, v3, Lcom/nuance/android/gif/GifDecoder$GifFrame;->ix:I

    .line 2713
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    .line 3787
    iget-object v6, p0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 2713
    iput v6, v3, Lcom/nuance/android/gif/GifDecoder$GifFrame;->iy:I

    .line 2714
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    .line 4787
    iget-object v6, p0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 2714
    iput v6, v3, Lcom/nuance/android/gif/GifDecoder$GifFrame;->iw:I

    .line 2715
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    .line 5787
    iget-object v6, p0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 2715
    iput v6, v3, Lcom/nuance/android/gif/GifDecoder$GifFrame;->ih:I

    .line 2717
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    move-result v6

    .line 2718
    and-int/lit16 v3, v6, 0x80

    if-eqz v3, :cond_95

    move v3, v4

    :goto_47
    iput-boolean v3, p0, Lcom/nuance/android/gif/GifDecoder;->lctFlag:Z

    .line 2719
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    and-int/lit8 v3, v6, 0x7

    add-int/lit8 v3, v3, 0x1

    int-to-double v10, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v3, v8

    iput v3, p0, Lcom/nuance/android/gif/GifDecoder;->lctSize:I

    .line 2723
    iget-object v7, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    and-int/lit8 v3, v6, 0x40

    if-eqz v3, :cond_97

    move v3, v4

    :goto_5e
    iput-boolean v3, v7, Lcom/nuance/android/gif/GifDecoder$GifFrame;->interlace:Z

    .line 2724
    iget-boolean v3, p0, Lcom/nuance/android/gif/GifDecoder;->lctFlag:Z

    if-eqz v3, :cond_99

    .line 2725
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    iget v6, p0, Lcom/nuance/android/gif/GifDecoder;->lctSize:I

    invoke-direct {p0, v6}, Lcom/nuance/android/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v6

    iput-object v6, v3, Lcom/nuance/android/gif/GifDecoder$GifFrame;->lct:[I

    .line 2730
    :goto_6e
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    iget-object v6, p0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, v3, Lcom/nuance/android/gif/GifDecoder$GifFrame;->bufferFrameStart:I

    .line 2732
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->mainPixels:[B

    invoke-direct {p0, v12, v3}, Lcom/nuance/android/gif/GifDecoder;->decodeBitmapData(Lcom/nuance/android/gif/GifDecoder$GifFrame;[B)V

    .line 2733
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->skip()V

    .line 2734
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->err()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2738
    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->frameCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nuance/android/gif/GifDecoder;->frameCount:I

    .line 2739
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->frames:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_95
    move v3, v5

    .line 2718
    goto :goto_47

    :cond_97
    move v3, v5

    .line 2723
    goto :goto_5e

    .line 2727
    :cond_99
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    iput-object v12, v3, Lcom/nuance/android/gif/GifDecoder$GifFrame;->lct:[I

    goto :goto_6e

    .line 634
    :sswitch_9e
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    move-result v3

    .line 635
    sparse-switch v3, :sswitch_data_142

    .line 660
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->skip()V

    goto/16 :goto_4

    .line 638
    :sswitch_aa
    new-instance v3, Lcom/nuance/android/gif/GifDecoder$GifFrame;

    invoke-direct {v3, v5}, Lcom/nuance/android/gif/GifDecoder$GifFrame;-><init>(B)V

    iput-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    .line 6696
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    .line 6697
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    move-result v3

    .line 6698
    iget-object v6, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    and-int/lit8 v7, v3, 0x1c

    shr-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/nuance/android/gif/GifDecoder$GifFrame;->dispose:I

    .line 6699
    iget-object v6, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    iget v6, v6, Lcom/nuance/android/gif/GifDecoder$GifFrame;->dispose:I

    if-nez v6, :cond_ca

    .line 6700
    iget-object v6, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    iput v4, v6, Lcom/nuance/android/gif/GifDecoder$GifFrame;->dispose:I

    .line 6702
    :cond_ca
    iget-object v6, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_ec

    move v3, v4

    :goto_d1
    iput-boolean v3, v6, Lcom/nuance/android/gif/GifDecoder$GifFrame;->transparency:Z

    .line 6703
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    .line 6787
    iget-object v6, p0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 6703
    mul-int/lit8 v6, v6, 0xa

    iput v6, v3, Lcom/nuance/android/gif/GifDecoder$GifFrame;->delay:I

    .line 6704
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->currentFrame:Lcom/nuance/android/gif/GifDecoder$GifFrame;

    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    move-result v6

    iput v6, v3, Lcom/nuance/android/gif/GifDecoder$GifFrame;->transIndex:I

    .line 6705
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    goto/16 :goto_4

    :cond_ec
    move v3, v5

    .line 6702
    goto :goto_d1

    .line 642
    :sswitch_ee
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->readBlock()I

    .line 643
    const-string/jumbo v0, ""

    .line 644
    .local v0, "app":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f5
    const/16 v3, 0xb

    if-ge v2, v3, :cond_112

    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/nuance/android/gif/GifDecoder;->block:[B

    aget-byte v6, v6, v2

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    add-int/lit8 v2, v2, 0x1

    goto :goto_f5

    .line 647
    :cond_112
    const-string/jumbo v3, "NETSCAPE2.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 648
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->readNetscapeExt()V

    goto/16 :goto_4

    .line 650
    :cond_120
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->skip()V

    goto/16 :goto_4

    .line 654
    .end local v0    # "app":Ljava/lang/String;
    .end local v2    # "i":I
    :sswitch_125
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->skip()V

    goto/16 :goto_4

    .line 657
    :sswitch_12a
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->skip()V

    goto/16 :goto_4

    .line 664
    :sswitch_12f
    const/4 v1, 0x1

    .line 665
    goto/16 :goto_4

    .line 671
    :cond_132
    return-void

    .line 629
    nop

    :sswitch_data_134
    .sparse-switch
        0x21 -> :sswitch_9e
        0x2c -> :sswitch_16
        0x3b -> :sswitch_12f
    .end sparse-switch

    .line 635
    :sswitch_data_142
    .sparse-switch
        0x1 -> :sswitch_12a
        0xf9 -> :sswitch_aa
        0xfe -> :sswitch_125
        0xff -> :sswitch_ee
    .end sparse-switch
.end method

.method private readHeader()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 677
    const-string/jumbo v1, ""

    .line 678
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    const/4 v3, 0x6

    if-ge v0, v3, :cond_21

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 681
    :cond_21
    const-string/jumbo v3, "GIF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 682
    iput v2, p0, Lcom/nuance/android/gif/GifDecoder;->status:I

    .line 690
    :cond_2c
    :goto_2c
    return-void

    .line 7787
    :cond_2d
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 7747
    iput v3, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    .line 8787
    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 7748
    iput v3, p0, Lcom/nuance/android/gif/GifDecoder;->height:I

    .line 7750
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    move-result v3

    .line 7751
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_a7

    :goto_45
    iput-boolean v2, p0, Lcom/nuance/android/gif/GifDecoder;->gctFlag:Z

    .line 7754
    const/4 v2, 0x2

    and-int/lit8 v3, v3, 0x7

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/android/gif/GifDecoder;->gctSize:I

    .line 7755
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    move-result v2

    iput v2, p0, Lcom/nuance/android/gif/GifDecoder;->bgIndex:I

    .line 7756
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->read()I

    move-result v2

    iput v2, p0, Lcom/nuance/android/gif/GifDecoder;->pixelAspect:I

    .line 7759
    iget v2, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/nuance/android/gif/GifDecoder;->mainPixels:[B

    .line 7760
    iget v2, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/nuance/android/gif/GifDecoder;->mainScratch:[I

    .line 7761
    iget v2, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/nuance/android/gif/GifDecoder;->copyScratch:[I

    .line 7763
    iget v2, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/android/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 7764
    iget v2, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/android/gif/GifDecoder;->currentImage:Landroid/graphics/Bitmap;

    .line 686
    iget-boolean v2, p0, Lcom/nuance/android/gif/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_2c

    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 687
    iget v2, p0, Lcom/nuance/android/gif/GifDecoder;->gctSize:I

    invoke-direct {p0, v2}, Lcom/nuance/android/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/android/gif/GifDecoder;->gct:[I

    .line 688
    iget-object v2, p0, Lcom/nuance/android/gif/GifDecoder;->gct:[I

    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/nuance/android/gif/GifDecoder;->bgColor:I

    goto :goto_2c

    .line 7751
    :cond_a7
    const/4 v2, 0x0

    goto :goto_45
.end method

.method private readNetscapeExt()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 772
    :cond_1
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->readBlock()I

    .line 773
    iget-object v2, p0, Lcom/nuance/android/gif/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1d

    .line 775
    iget-object v2, p0, Lcom/nuance/android/gif/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 776
    .local v0, "b1":I
    iget-object v2, p0, Lcom/nuance/android/gif/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 777
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/nuance/android/gif/GifDecoder;->loopCount:I

    .line 779
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :cond_1d
    iget v2, p0, Lcom/nuance/android/gif/GifDecoder;->blockSize:I

    if-lez v2, :cond_27

    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    :cond_27
    return-void
.end method

.method private skip()V
    .registers 2

    .prologue
    .line 795
    :cond_0
    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->readBlock()I

    .line 796
    iget v0, p0, Lcom/nuance/android/gif/GifDecoder;->blockSize:I

    if-lez v0, :cond_d

    invoke-direct {p0}, Lcom/nuance/android/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    :cond_d
    return-void
.end method


# virtual methods
.method public final advance()V
    .registers 3

    .prologue
    .line 154
    iget v0, p0, Lcom/nuance/android/gif/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/nuance/android/gif/GifDecoder;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/android/gif/GifDecoder;->framePointer:I

    .line 155
    return-void
.end method

.method public final getDelay(I)I
    .registers 4
    .param p1, "n"    # I

    .prologue
    .line 164
    const/4 v0, -0x1

    .line 165
    .local v0, "delay":I
    if-ltz p1, :cond_11

    iget v1, p0, Lcom/nuance/android/gif/GifDecoder;->frameCount:I

    if-ge p1, v1, :cond_11

    .line 166
    iget-object v1, p0, Lcom/nuance/android/gif/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/android/gif/GifDecoder$GifFrame;

    iget v0, v1, Lcom/nuance/android/gif/GifDecoder$GifFrame;->delay:I

    .line 168
    :cond_11
    return v0
.end method

.method public final getFrameCount()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/nuance/android/gif/GifDecoder;->frameCount:I

    return v0
.end method

.method public final getLoopCount()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/nuance/android/gif/GifDecoder;->loopCount:I

    return v0
.end method

.method public final getNextFrame()Landroid/graphics/Bitmap;
    .registers 15

    .prologue
    .line 215
    iget v0, p0, Lcom/nuance/android/gif/GifDecoder;->frameCount:I

    if-lez v0, :cond_c

    iget v0, p0, Lcom/nuance/android/gif/GifDecoder;->framePointer:I

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->currentImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_e

    .line 216
    :cond_c
    const/4 v0, 0x0

    .line 249
    :goto_d
    return-object v0

    .line 219
    :cond_e
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->frames:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nuance/android/gif/GifDecoder;->framePointer:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/android/gif/GifDecoder$GifFrame;

    .line 222
    .local v10, "frame":Lcom/nuance/android/gif/GifDecoder$GifFrame;
    iget-object v0, v10, Lcom/nuance/android/gif/GifDecoder$GifFrame;->lct:[I

    if-nez v0, :cond_43

    .line 223
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->gct:[I

    iput-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->act:[I

    .line 231
    :cond_20
    :goto_20
    const/4 v11, 0x0

    .line 232
    .local v11, "save":I
    iget-boolean v0, v10, Lcom/nuance/android/gif/GifDecoder$GifFrame;->transparency:Z

    if-eqz v0, :cond_32

    .line 233
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->act:[I

    iget v1, v10, Lcom/nuance/android/gif/GifDecoder$GifFrame;->transIndex:I

    aget v11, v0, v1

    .line 234
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->act:[I

    iget v1, v10, Lcom/nuance/android/gif/GifDecoder$GifFrame;->transIndex:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 236
    :cond_32
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->act:[I

    if-nez v0, :cond_51

    .line 237
    sget-object v0, Lcom/nuance/android/gif/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/android/gif/GifDecoder;->status:I

    .line 239
    const/4 v0, 0x0

    goto :goto_d

    .line 225
    .end local v11    # "save":I
    :cond_43
    iget-object v0, v10, Lcom/nuance/android/gif/GifDecoder$GifFrame;->lct:[I

    iput-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->act:[I

    .line 226
    iget v0, p0, Lcom/nuance/android/gif/GifDecoder;->bgIndex:I

    iget v1, v10, Lcom/nuance/android/gif/GifDecoder$GifFrame;->transIndex:I

    if-ne v0, v1, :cond_20

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/android/gif/GifDecoder;->bgColor:I

    goto :goto_20

    .line 242
    .restart local v11    # "save":I
    :cond_51
    iget v1, p0, Lcom/nuance/android/gif/GifDecoder;->framePointer:I

    .line 1321
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/nuance/android/gif/GifDecoder$GifFrame;

    .line 1322
    const/4 v0, 0x0

    .line 1323
    add-int/lit8 v1, v1, -0x1

    .line 1324
    if-ltz v1, :cond_164

    .line 1325
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/android/gif/GifDecoder$GifFrame;

    move-object v9, v0

    .line 1329
    :goto_6a
    iget-object v1, p0, Lcom/nuance/android/gif/GifDecoder;->mainScratch:[I

    .line 1332
    if-eqz v9, :cond_c7

    iget v0, v9, Lcom/nuance/android/gif/GifDecoder$GifFrame;->dispose:I

    if-lez v0, :cond_c7

    .line 1333
    iget v0, v9, Lcom/nuance/android/gif/GifDecoder$GifFrame;->dispose:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_89

    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->currentImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_89

    .line 1335
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->currentImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    iget v7, p0, Lcom/nuance/android/gif/GifDecoder;->height:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1337
    :cond_89
    iget v0, v9, Lcom/nuance/android/gif/GifDecoder$GifFrame;->dispose:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b0

    .line 1339
    const/4 v0, 0x0

    .line 1340
    iget-boolean v2, v8, Lcom/nuance/android/gif/GifDecoder$GifFrame;->transparency:Z

    if-nez v2, :cond_95

    .line 1341
    iget v0, p0, Lcom/nuance/android/gif/GifDecoder;->bgColor:I

    .line 1343
    :cond_95
    const/4 v2, 0x0

    :goto_96
    iget v3, v9, Lcom/nuance/android/gif/GifDecoder$GifFrame;->ih:I

    if-ge v2, v3, :cond_b0

    .line 1344
    iget v3, v9, Lcom/nuance/android/gif/GifDecoder$GifFrame;->iy:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    mul-int/2addr v3, v4

    iget v4, v9, Lcom/nuance/android/gif/GifDecoder$GifFrame;->ix:I

    add-int/2addr v3, v4

    .line 1345
    iget v4, v9, Lcom/nuance/android/gif/GifDecoder$GifFrame;->iw:I

    add-int/2addr v4, v3

    .line 1346
    :goto_a6
    if-ge v3, v4, :cond_ad

    .line 1347
    aput v0, v1, v3

    .line 1346
    add-int/lit8 v3, v3, 0x1

    goto :goto_a6

    .line 1343
    :cond_ad
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 1351
    :cond_b0
    iget v0, v9, Lcom/nuance/android/gif/GifDecoder$GifFrame;->dispose:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c7

    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c7

    .line 1353
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    iget v7, p0, Lcom/nuance/android/gif/GifDecoder;->height:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1358
    :cond_c7
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->mainPixels:[B

    invoke-direct {p0, v8, v0}, Lcom/nuance/android/gif/GifDecoder;->decodeBitmapData(Lcom/nuance/android/gif/GifDecoder$GifFrame;[B)V

    .line 1361
    const/4 v4, 0x1

    .line 1362
    const/16 v3, 0x8

    .line 1363
    const/4 v2, 0x0

    .line 1364
    const/4 v0, 0x0

    :goto_d1
    iget v5, v8, Lcom/nuance/android/gif/GifDecoder$GifFrame;->ih:I

    if-ge v0, v5, :cond_126

    .line 1366
    iget-boolean v5, v8, Lcom/nuance/android/gif/GifDecoder$GifFrame;->interlace:Z

    if-eqz v5, :cond_162

    .line 1367
    iget v5, v8, Lcom/nuance/android/gif/GifDecoder$GifFrame;->ih:I

    if-lt v2, v5, :cond_e2

    .line 1368
    add-int/lit8 v4, v4, 0x1

    .line 1369
    packed-switch v4, :pswitch_data_168

    .line 1386
    :cond_e2
    :goto_e2
    add-int v5, v2, v3

    move v13, v2

    move v2, v5

    move v5, v13

    .line 1388
    :goto_e7
    iget v6, v8, Lcom/nuance/android/gif/GifDecoder$GifFrame;->iy:I

    add-int/2addr v5, v6

    .line 1389
    iget v6, p0, Lcom/nuance/android/gif/GifDecoder;->height:I

    if-ge v5, v6, :cond_123

    .line 1390
    iget v6, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    mul-int/2addr v6, v5

    .line 1391
    iget v5, v8, Lcom/nuance/android/gif/GifDecoder$GifFrame;->ix:I

    add-int v7, v6, v5

    .line 1392
    iget v5, v8, Lcom/nuance/android/gif/GifDecoder$GifFrame;->iw:I

    add-int/2addr v5, v7

    .line 1393
    iget v9, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    add-int/2addr v9, v6

    if-ge v9, v5, :cond_100

    .line 1394
    iget v5, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    add-int/2addr v5, v6

    .line 1396
    :cond_100
    iget v6, v8, Lcom/nuance/android/gif/GifDecoder$GifFrame;->iw:I

    mul-int/2addr v6, v0

    move v9, v7

    .line 1397
    :goto_104
    if-ge v9, v5, :cond_123

    .line 1399
    iget-object v12, p0, Lcom/nuance/android/gif/GifDecoder;->mainPixels:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v12, v6

    and-int/lit16 v6, v6, 0xff

    .line 1400
    iget-object v12, p0, Lcom/nuance/android/gif/GifDecoder;->act:[I

    aget v6, v12, v6

    .line 1401
    if-eqz v6, :cond_116

    .line 1402
    aput v6, v1, v9

    .line 1404
    :cond_116
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v6, v7

    .line 1405
    goto :goto_104

    .line 1371
    :pswitch_11b
    const/4 v2, 0x4

    .line 1372
    goto :goto_e2

    .line 1374
    :pswitch_11d
    const/4 v2, 0x2

    .line 1375
    const/4 v3, 0x4

    .line 1376
    goto :goto_e2

    .line 1378
    :pswitch_120
    const/4 v2, 0x1

    .line 1379
    const/4 v3, 0x2

    goto :goto_e2

    .line 1364
    :cond_123
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    .line 1410
    :cond_126
    iget-object v2, p0, Lcom/nuance/android/gif/GifDecoder;->currentImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->copyScratch:[I

    const/4 v4, 0x0

    iget v5, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    iget v9, p0, Lcom/nuance/android/gif/GifDecoder;->height:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1411
    iget-object v2, p0, Lcom/nuance/android/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/nuance/android/gif/GifDecoder;->copyScratch:[I

    const/4 v4, 0x0

    iget v5, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    iget v9, p0, Lcom/nuance/android/gif/GifDecoder;->height:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1413
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->currentImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/nuance/android/gif/GifDecoder;->width:I

    iget v7, p0, Lcom/nuance/android/gif/GifDecoder;->height:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 245
    iget-boolean v0, v10, Lcom/nuance/android/gif/GifDecoder$GifFrame;->transparency:Z

    if-eqz v0, :cond_15e

    .line 246
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->act:[I

    iget v1, v10, Lcom/nuance/android/gif/GifDecoder$GifFrame;->transIndex:I

    aput v11, v0, v1

    .line 249
    :cond_15e
    iget-object v0, p0, Lcom/nuance/android/gif/GifDecoder;->currentImage:Landroid/graphics/Bitmap;

    goto/16 :goto_d

    :cond_162
    move v5, v0

    goto :goto_e7

    :cond_164
    move-object v9, v0

    goto/16 :goto_6a

    .line 1369
    nop

    :pswitch_data_168
    .packed-switch 0x2
        :pswitch_11b
        :pswitch_11d
        :pswitch_120
    .end packed-switch
.end method

.method public final read(Ljava/io/InputStream;I)I
    .registers 19
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I

    .prologue
    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 260
    .local v10, "startTime":J
    if-eqz p1, :cond_b3

    .line 262
    if-lez p2, :cond_53

    move/from16 v0, p2

    add-int/lit16 v3, v0, 0x1000

    .line 263
    .local v3, "capacity":I
    :goto_c
    :try_start_c
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 265
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x4000

    new-array v4, v9, [B

    .line 266
    .local v4, "data":[B
    :goto_15
    const/4 v9, 0x0

    const/16 v12, 0x4000

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .local v8, "nRead":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_56

    .line 267
    const/4 v9, 0x0

    invoke-virtual {v2, v4, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_25} :catch_26

    goto :goto_15

    .line 272
    .end local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "data":[B
    .end local v8    # "nRead":I
    :catch_26
    move-exception v5

    .line 273
    .local v5, "e":Ljava/io/IOException;
    sget-object v9, Lcom/nuance/android/gif/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error reading data from stream"

    invoke-static {v9, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .end local v3    # "capacity":I
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_ba

    .line 284
    :goto_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 285
    .local v6, "endTime":J
    const-string/jumbo v9, "GifDecoder"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "nhbinh-decodeGif = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v14, v6, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/android/gif/GifDecoder;->status:I

    return v9

    .line 262
    .end local v6    # "endTime":J
    :cond_53
    const/16 v3, 0x1000

    goto :goto_c

    .line 269
    .restart local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "capacity":I
    .restart local v4    # "data":[B
    .restart local v8    # "nRead":I
    :cond_56
    :try_start_56
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 271
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 2545
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/nuance/android/gif/GifDecoder;->status:I

    .line 2546
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/nuance/android/gif/GifDecoder;->frameCount:I

    .line 2547
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/nuance/android/gif/GifDecoder;->framePointer:I

    .line 2548
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/nuance/android/gif/GifDecoder;->frames:Ljava/util/ArrayList;

    .line 2549
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/nuance/android/gif/GifDecoder;->gct:[I

    .line 2297
    if-eqz v9, :cond_ac

    .line 2299
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 2300
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2301
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/android/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2303
    invoke-direct/range {p0 .. p0}, Lcom/nuance/android/gif/GifDecoder;->readHeader()V

    .line 2304
    invoke-direct/range {p0 .. p0}, Lcom/nuance/android/gif/GifDecoder;->err()Z

    move-result v9

    if-nez v9, :cond_2f

    .line 2305
    invoke-direct/range {p0 .. p0}, Lcom/nuance/android/gif/GifDecoder;->readContents()V

    .line 2306
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/android/gif/GifDecoder;->frameCount:I

    if-gez v9, :cond_2f

    .line 2307
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/nuance/android/gif/GifDecoder;->status:I

    goto :goto_2f

    .line 2311
    :cond_ac
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/nuance/android/gif/GifDecoder;->status:I
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_b1} :catch_26

    goto/16 :goto_2f

    .line 276
    .end local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "capacity":I
    .end local v4    # "data":[B
    .end local v8    # "nRead":I
    :cond_b3
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/nuance/android/gif/GifDecoder;->status:I

    goto/16 :goto_2f

    .line 281
    :catch_ba
    move-exception v5

    .line 282
    .local v5, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/nuance/android/gif/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error closing stream"

    invoke-static {v9, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32
.end method
