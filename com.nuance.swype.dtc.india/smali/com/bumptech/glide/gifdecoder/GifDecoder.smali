.class public Lcom/bumptech/glide/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private act:[I

.field public bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private final block:[B

.field public data:[B

.field public framePointer:I

.field public header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field public mainPixels:[B

.field public mainScratch:[I

.field private final pct:[I

.field private pixelStack:[B

.field private prefix:[S

.field public previousImage:Landroid/graphics/Bitmap;

.field public rawData:Ljava/nio/ByteBuffer;

.field private savePrevious:Z

.field private status:I

.field private suffix:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    .line 110
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .prologue
    const/16 v1, 0x100

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    .line 164
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 165
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 166
    return-void
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 756
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-interface {v1, v2, v3, v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 757
    .local v0, "result":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 758
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1766
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1

    .line 1767
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 761
    :cond_1
    return-object v0
.end method

.method private read()I
    .locals 2

    .prologue
    .line 721
    const/4 v0, 0x0

    .line 723
    .local v0, "curByte":I
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 727
    :goto_0
    return v0

    .line 725
    :catch_0
    move-exception v1

    const/4 v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_0
.end method

.method private readBlock()I
    .locals 6

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v0

    .line 737
    .local v0, "blockSize":I
    const/4 v3, 0x0

    .line 738
    .local v3, "n":I
    if-lez v0, :cond_0

    .line 741
    :goto_0
    if-ge v3, v0, :cond_0

    .line 742
    sub-int v1, v0, v3

    .line 743
    .local v1, "count":I
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    invoke-virtual {v4, v5, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    add-int/2addr v3, v1

    goto :goto_0

    .line 747
    :catch_0
    move-exception v2

    .line 748
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error Reading Block"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    const/4 v4, 0x1

    iput v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 752
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return v3
.end method

.method private setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .locals 44
    .param p1, "currentFrame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;
    .param p2, "previousFrame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;

    .prologue
    .line 477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 478
    .local v5, "width":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v9, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 481
    .local v9, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 484
    .local v3, "dest":[I
    if-nez p2, :cond_0

    .line 485
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 489
    :cond_0
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-lez v4, :cond_4

    .line 492
    move-object/from16 v0, p2

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 494
    const/4 v11, 0x0

    .line 495
    .local v11, "c":I
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-nez v4, :cond_1

    .line 496
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v11, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    .line 497
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    if-ne v4, v6, :cond_1

    .line 498
    const/4 v11, 0x0

    .line 502
    :cond_1
    move-object/from16 v0, p2

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int v26, v4, v6

    .line 503
    .local v26, "topLeft":I
    move-object/from16 v0, p2

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    mul-int/2addr v4, v5

    add-int v10, v26, v4

    .line 504
    .local v10, "bottomLeft":I
    move/from16 v19, v26

    .local v19, "left":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v10, :cond_4

    .line 505
    move-object/from16 v0, p2

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    add-int v23, v19, v4

    .line 506
    .local v23, "right":I
    move/from16 v22, v19

    .local v22, "pointer":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 507
    aput v11, v3, v22

    .line 506
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 504
    :cond_2
    add-int v19, v19, v5

    goto :goto_0

    .line 510
    .end local v10    # "bottomLeft":I
    .end local v11    # "c":I
    .end local v19    # "left":I
    .end local v22    # "pointer":I
    .end local v23    # "right":I
    .end local v26    # "topLeft":I
    :cond_3
    move-object/from16 v0, p2

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1591
    :cond_4
    if-eqz p1, :cond_5

    .line 1593
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1596
    :cond_5
    if-nez p1, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v4, v6

    .line 1600
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    array-length v6, v6

    if-ge v6, v4, :cond_7

    .line 1602
    :cond_6
    new-array v6, v4, [B

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 1604
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    if-nez v6, :cond_8

    .line 1605
    const/16 v6, 0x1000

    new-array v6, v6, [S

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    .line 1607
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    if-nez v6, :cond_9

    .line 1608
    const/16 v6, 0x1000

    new-array v6, v6, [B

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    .line 1610
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    if-nez v6, :cond_a

    .line 1611
    const/16 v6, 0x1001

    new-array v6, v6, [B

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    .line 1615
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v38

    .line 1616
    const/4 v6, 0x1

    shl-int v39, v6, v38

    .line 1617
    add-int/lit8 v40, v39, 0x1

    .line 1618
    add-int/lit8 v8, v39, 0x2

    .line 1619
    const/16 v32, -0x1

    .line 1620
    add-int/lit8 v6, v38, 0x1

    .line 1621
    const/4 v7, 0x1

    shl-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    .line 1622
    const/16 v27, 0x0

    :goto_3
    move/from16 v0, v27

    move/from16 v1, v39

    if-ge v0, v1, :cond_c

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-short v29, v28, v27

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v28, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v28, v27

    .line 1622
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 1596
    :cond_b
    move-object/from16 v0, p1

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    mul-int/2addr v4, v6

    goto :goto_2

    .line 1629
    :cond_c
    const/16 v27, 0x0

    .line 1630
    const/16 v29, 0x0

    move/from16 v30, v27

    move/from16 v33, v27

    move/from16 v28, v27

    move/from16 v31, v6

    move/from16 v34, v7

    move/from16 v35, v8

    move/from16 v6, v27

    move/from16 v7, v27

    move/from16 v8, v27

    :goto_4
    move/from16 v0, v29

    if-ge v0, v4, :cond_d

    .line 1632
    if-nez v7, :cond_f

    .line 1634
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->readBlock()I

    move-result v7

    .line 1635
    if-gtz v7, :cond_e

    .line 1636
    const/4 v6, 0x3

    move-object/from16 v0, p0

    iput v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    :cond_d
    move v6, v8

    .line 1712
    :goto_5
    if-ge v6, v4, :cond_15

    .line 1713
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    const/4 v8, 0x0

    aput-byte v8, v7, v6

    .line 1712
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1639
    :cond_e
    const/4 v6, 0x0

    .line 1642
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    move-object/from16 v36, v0

    aget-byte v36, v36, v6

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    shl-int v36, v36, v28

    add-int v27, v27, v36

    .line 1643
    add-int/lit8 v28, v28, 0x8

    .line 1644
    add-int/lit8 v36, v6, 0x1

    .line 1645
    add-int/lit8 v37, v7, -0x1

    move/from16 v6, v31

    move/from16 v7, v34

    move/from16 v31, v33

    move/from16 v43, v28

    move/from16 v28, v27

    move/from16 v27, v8

    move/from16 v8, v35

    move/from16 v35, v43

    .line 1647
    :goto_6
    move/from16 v0, v35

    if-lt v0, v6, :cond_22

    .line 1649
    and-int v33, v28, v7

    .line 1650
    shr-int v34, v28, v6

    .line 1651
    sub-int v35, v35, v6

    .line 1654
    move/from16 v0, v33

    move/from16 v1, v39

    if-ne v0, v1, :cond_10

    .line 1656
    add-int/lit8 v6, v38, 0x1

    .line 1657
    const/4 v7, 0x1

    shl-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    .line 1658
    add-int/lit8 v8, v39, 0x2

    .line 1659
    const/16 v33, -0x1

    move/from16 v28, v34

    move/from16 v32, v33

    .line 1660
    goto :goto_6

    .line 1663
    :cond_10
    move/from16 v0, v33

    if-le v0, v8, :cond_11

    .line 1664
    const/16 v28, 0x3

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    move/from16 v33, v31

    move/from16 v28, v35

    move/from16 v31, v6

    move/from16 v35, v8

    move/from16 v6, v36

    move/from16 v8, v27

    move/from16 v27, v34

    move/from16 v34, v7

    move/from16 v7, v37

    .line 1665
    goto/16 :goto_4

    .line 1668
    :cond_11
    move/from16 v0, v33

    move/from16 v1, v40

    if-eq v0, v1, :cond_21

    .line 1672
    const/16 v28, -0x1

    move/from16 v0, v32

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v31, v0

    add-int/lit8 v28, v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v32, v0

    aget-byte v32, v32, v33

    aput-byte v32, v31, v30

    move/from16 v30, v28

    move/from16 v31, v33

    move/from16 v32, v33

    move/from16 v28, v34

    .line 1676
    goto :goto_6

    .line 1679
    :cond_12
    move/from16 v0, v33

    if-lt v0, v8, :cond_20

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v41, v0

    add-int/lit8 v28, v30, 0x1

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v41, v30

    move/from16 v30, v28

    move/from16 v31, v32

    .line 1683
    :goto_7
    move/from16 v0, v31

    move/from16 v1, v39

    if-lt v0, v1, :cond_13

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v41, v0

    add-int/lit8 v28, v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v42, v0

    aget-byte v42, v42, v31

    aput-byte v42, v41, v30

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    move-object/from16 v30, v0

    aget-short v30, v30, v31

    move/from16 v31, v30

    move/from16 v30, v28

    goto :goto_7

    .line 1687
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v28, v0

    aget-byte v28, v28, v31

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v41, v0

    add-int/lit8 v28, v30, 0x1

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v42, v0

    aput-byte v42, v41, v30

    .line 1691
    const/16 v30, 0x1000

    move/from16 v0, v30

    if-ge v8, v0, :cond_14

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    move-object/from16 v30, v0

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v30, v8

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v30, v0

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v32, v0

    aput-byte v32, v30, v8

    .line 1694
    add-int/lit8 v8, v8, 0x1

    .line 1695
    and-int v30, v8, v7

    if-nez v30, :cond_14

    const/16 v30, 0x1000

    move/from16 v0, v30

    if-ge v8, v0, :cond_14

    .line 1696
    add-int/lit8 v6, v6, 0x1

    .line 1697
    add-int/2addr v7, v8

    :cond_14
    move/from16 v30, v29

    .line 1702
    :goto_8
    if-lez v28, :cond_1f

    .line 1704
    add-int/lit8 v29, v28, -0x1

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    move-object/from16 v32, v0

    add-int/lit8 v28, v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v41, v0

    aget-byte v41, v41, v29

    aput-byte v41, v32, v27

    .line 1706
    add-int/lit8 v27, v30, 0x1

    move/from16 v30, v27

    move/from16 v27, v28

    move/from16 v28, v29

    goto :goto_8

    .line 520
    :cond_15
    const/16 v21, 0x1

    .line 521
    .local v21, "pass":I
    const/16 v16, 0x8

    .line 522
    .local v16, "inc":I
    const/4 v15, 0x0

    .line 523
    .local v15, "iline":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_9
    move-object/from16 v0, p1

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-ge v14, v4, :cond_1b

    .line 524
    move/from16 v20, v14

    .line 525
    .local v20, "line":I
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    if-eqz v4, :cond_17

    .line 526
    move-object/from16 v0, p1

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-lt v15, v4, :cond_16

    .line 527
    add-int/lit8 v21, v21, 0x1

    .line 528
    packed-switch v21, :pswitch_data_0

    .line 544
    :cond_16
    :goto_a
    move/from16 v20, v15

    .line 545
    add-int v15, v15, v16

    .line 547
    :cond_17
    move-object/from16 v0, p1

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    add-int v20, v20, v4

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    move/from16 v0, v20

    if-ge v0, v4, :cond_1a

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    mul-int v18, v20, v4

    .line 551
    .local v18, "k":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int v13, v18, v4

    .line 553
    .local v13, "dx":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    add-int v12, v13, v4

    .line 554
    .local v12, "dlim":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int v4, v4, v18

    if-ge v4, v12, :cond_18

    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int v12, v18, v4

    .line 559
    :cond_18
    move-object/from16 v0, p1

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    mul-int v24, v14, v4

    .local v24, "sx":I
    move/from16 v25, v24

    .line 560
    .end local v24    # "sx":I
    .local v25, "sx":I
    :goto_b
    if-ge v13, v12, :cond_1a

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "sx":I
    .restart local v24    # "sx":I
    aget-byte v4, v4, v25

    and-int/lit16 v0, v4, 0xff

    move/from16 v17, v0

    .line 563
    .local v17, "index":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    aget v11, v4, v17

    .line 564
    .restart local v11    # "c":I
    if-eqz v11, :cond_19

    .line 565
    aput v11, v3, v13

    .line 567
    :cond_19
    add-int/lit8 v13, v13, 0x1

    move/from16 v25, v24

    .line 568
    .end local v24    # "sx":I
    .restart local v25    # "sx":I
    goto :goto_b

    .line 530
    .end local v11    # "c":I
    .end local v12    # "dlim":I
    .end local v13    # "dx":I
    .end local v17    # "index":I
    .end local v18    # "k":I
    .end local v25    # "sx":I
    :pswitch_0
    const/4 v15, 0x4

    .line 531
    goto :goto_a

    .line 533
    :pswitch_1
    const/4 v15, 0x2

    .line 534
    const/16 v16, 0x4

    .line 535
    goto :goto_a

    .line 537
    :pswitch_2
    const/4 v15, 0x1

    .line 538
    const/16 v16, 0x2

    goto :goto_a

    .line 523
    :cond_1a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9

    .line 573
    .end local v20    # "line":I
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    if-eqz v4, :cond_1e

    move-object/from16 v0, p1

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-eqz v4, :cond_1c

    move-object/from16 v0, p1

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1e

    .line 575
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1d

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 578
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 582
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 583
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 584
    return-object v2

    .end local v2    # "result":Landroid/graphics/Bitmap;
    .end local v14    # "i":I
    .end local v15    # "iline":I
    .end local v16    # "inc":I
    .end local v21    # "pass":I
    :cond_1f
    move/from16 v29, v30

    move/from16 v32, v33

    move/from16 v30, v28

    move/from16 v28, v34

    goto/16 :goto_6

    :cond_20
    move/from16 v31, v33

    goto/16 :goto_7

    :cond_21
    move/from16 v33, v31

    move/from16 v28, v35

    move/from16 v31, v6

    move/from16 v35, v8

    move/from16 v6, v36

    move/from16 v8, v27

    move/from16 v27, v34

    move/from16 v34, v7

    move/from16 v7, v37

    goto/16 :goto_4

    :cond_22
    move/from16 v33, v31

    move/from16 v34, v7

    move/from16 v7, v37

    move/from16 v31, v6

    move/from16 v6, v36

    move/from16 v43, v35

    move/from16 v35, v8

    move/from16 v8, v27

    move/from16 v27, v28

    move/from16 v28, v43

    goto/16 :goto_4

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final advance()V
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 197
    return-void
.end method

.method public final getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 206
    const/4 v0, -0x1

    .line 207
    .local v0, "delay":I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v0, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    .line 210
    :cond_0
    return v0
.end method

.method public final declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v4, :cond_2

    .line 315
    :cond_0
    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unable to decode frame, frameCount="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " framePointer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    :cond_1
    const/4 v4, 0x1

    iput v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 320
    :cond_2
    iget v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    if-eq v4, v6, :cond_3

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 321
    :cond_3
    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to decode frame, status="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :cond_4
    :goto_0
    monitor-exit p0

    return-object v3

    .line 326
    :cond_5
    const/4 v4, 0x0

    :try_start_1
    iput v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 328
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 329
    .local v0, "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    const/4 v1, 0x0

    .line 330
    .local v1, "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    iget v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    add-int/lit8 v2, v4, -0x1

    .line 331
    .local v2, "previousIndex":I
    if-ltz v2, :cond_6

    .line 332
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 336
    .restart local v1    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    :cond_6
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    :goto_1
    iput-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    .line 337
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    if-nez v4, :cond_8

    .line 338
    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 342
    const/4 v4, 0x1

    iput v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    .end local v0    # "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v1    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v2    # "previousIndex":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 336
    .restart local v0    # "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .restart local v1    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .restart local v2    # "previousIndex":I
    :cond_7
    :try_start_2
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    goto :goto_1

    .line 346
    :cond_8
    iget-boolean v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v3, :cond_9

    .line 348
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    iput-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    .line 352
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 356
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0
.end method

.method public final setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .locals 3
    .param p1, "header"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 409
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 410
    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 411
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 412
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 414
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 415
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 420
    iput-boolean v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 421
    iget-object v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 422
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 429
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 430
    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 431
    return-void
.end method
