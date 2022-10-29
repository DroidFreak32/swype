.class public final Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder",
        "<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final FACTORY:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

.field private final provider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->FACTORY:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 3
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .prologue
    .line 33
    sget-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->FACTORY:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;)V
    .registers 4
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "factory"    # Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 39
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->provider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 40
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    .line 41
    return-void
.end method

.method private encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .registers 21
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v10

    .line 47
    .local v10, "startTime":J
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 1130
    .local v6, "drawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    iget-object v14, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v12, v14, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    .line 49
    .local v12, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    instance-of v14, v12, Lcom/bumptech/glide/load/resource/UnitTransformation;

    if-eqz v14, :cond_1d

    .line 1134
    iget-object v14, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v14, v14, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    .line 50
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->writeDataDirect([BLjava/io/OutputStream;)Z

    move-result v9

    .line 84
    :cond_1c
    :goto_1c
    return v9

    .line 2134
    :cond_1d
    iget-object v14, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v14, v14, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    .line 3137
    new-instance v15, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v15}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    .line 3102
    invoke-virtual {v15, v14}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 3103
    invoke-virtual {v15}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v15

    .line 3105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->provider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    move-object/from16 v16, v0

    .line 4133
    new-instance v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    .line 3106
    invoke-virtual {v4, v15, v14}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 3107
    invoke-virtual {v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    .line 4141
    .local v4, "decoder":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    new-instance v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;

    invoke-direct {v7}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;-><init>()V

    .line 56
    .local v7, "encoder":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    move-result v14

    if-nez v14, :cond_4f

    .line 57
    const/4 v9, 0x0

    goto :goto_1c

    .line 60
    :cond_4f
    const/4 v8, 0x0

    .line 4230
    .local v8, "i":I
    :goto_50
    iget-object v14, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v14, v14, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 60
    if-ge v8, v14, :cond_a9

    .line 61
    invoke-virtual {v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5115
    .local v2, "currentFrame":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 5145
    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    invoke-direct {v15, v2, v14}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 5116
    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v12, v15, v14, v0}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v13

    .line 5118
    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7a

    .line 5119
    invoke-interface {v15}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 64
    .local v13, "transformedResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    :cond_7a
    :try_start_7a
    invoke-interface {v13}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v14}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->addFrame(Landroid/graphics/Bitmap;)Z
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_a4

    move-result v14

    if-nez v14, :cond_8b

    .line 73
    invoke-interface {v13}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    const/4 v9, 0x0

    goto :goto_1c

    .line 5239
    :cond_8b
    :try_start_8b
    iget v3, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 68
    .local v3, "currentFrameIndex":I
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v5

    .line 6094
    .local v5, "delay":I
    int-to-float v14, v5

    const/high16 v15, 0x41200000    # 10.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    iput v14, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    .line 71
    invoke-virtual {v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V
    :try_end_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_a4

    .line 73
    invoke-interface {v13}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 60
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    .line 73
    .end local v3    # "currentFrameIndex":I
    .end local v5    # "delay":I
    :catchall_a4
    move-exception v14

    invoke-interface {v13}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    throw v14

    .line 77
    .end local v2    # "currentFrame":Landroid/graphics/Bitmap;
    .end local v13    # "transformedResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    :cond_a9
    invoke-virtual {v7}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->finish()Z

    move-result v9

    .line 79
    .local v9, "result":Z
    const-string/jumbo v14, "GifEncoder"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 80
    const-string/jumbo v14, "GifEncoder"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Encoded gif with "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6230
    iget-object v0, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    move/from16 v16, v0

    .line 80
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " frames and "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 7134
    iget-object v0, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    move-object/from16 v16, v0

    .line 80
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " bytes in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v10, v11}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c
.end method

.method private static writeDataDirect([BLjava/io/OutputStream;)Z
    .registers 5
    .param p0, "data"    # [B
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 88
    const/4 v0, 0x1

    .line 90
    .local v0, "success":Z
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_5

    .line 97
    :goto_4
    return v0

    .line 92
    :catch_5
    move-exception v1

    const-string/jumbo v1, "GifEncoder"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 95
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 25
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    const-string/jumbo v0, ""

    return-object v0
.end method
