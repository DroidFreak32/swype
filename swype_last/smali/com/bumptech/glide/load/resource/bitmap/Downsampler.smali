.class public abstract Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "Downsampler.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field public static final AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field public static final NONE:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final OPTIONS_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPES_THAT_USE_POOL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL:Ljava/util/Set;

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 54
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 72
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NONE:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "is"    # Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    .param p1, "bufferedStream"    # Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 315
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v2, :cond_16

    .line 321
    const/high16 v2, 0x500000

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->mark(I)V

    .line 329
    :goto_9
    const/4 v2, 0x0

    invoke-static {p0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 332
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_e
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v2, :cond_15

    .line 333
    invoke-virtual {p0}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->reset()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_1a

    .line 342
    :cond_15
    :goto_15
    return-object v1

    .line 326
    .end local v1    # "result":Landroid/graphics/Bitmap;
    :cond_16
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fixMarkLimit()V

    goto :goto_9

    .line 335
    .restart local v1    # "result":Landroid/graphics/Bitmap;
    :catch_1a
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Downsampler"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 337
    const-string/jumbo v2, "Downsampler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception loading inDecodeBounds="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sample="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private static getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "format"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    const/4 v5, 0x5

    .line 254
    sget-object v2, Lcom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p1, v2, :cond_f

    sget-object v2, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p1, v2, :cond_f

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_12

    .line 256
    :cond_f
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 278
    :goto_11
    return-object v2

    .line 259
    :cond_12
    const/4 v1, 0x0

    .line 261
    .local v1, "hasAlpha":Z
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 263
    :try_start_18
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    .line 5083
    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha()Z
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_41
    .catchall {:try_start_18 .. :try_end_24} :catchall_7a

    move-result v1

    .line 270
    :try_start_25
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2d

    .line 278
    :cond_28
    :goto_28
    if-eqz v1, :cond_93

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_11

    .line 271
    :catch_2d
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Downsampler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 273
    const-string/jumbo v2, "Downsampler"

    const-string/jumbo v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 264
    .end local v0    # "e":Ljava/io/IOException;
    :catch_41
    move-exception v0

    .line 265
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_42
    const-string/jumbo v2, "Downsampler"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 266
    const-string/jumbo v2, "Downsampler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot determine whether the image has alpha or not from header for format "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_42 .. :try_end_62} :catchall_7a

    .line 270
    :cond_62
    :try_start_62
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_28

    .line 271
    :catch_66
    move-exception v0

    .line 272
    const-string/jumbo v2, "Downsampler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 273
    const-string/jumbo v2, "Downsampler"

    const-string/jumbo v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 269
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_7a
    move-exception v2

    .line 270
    :try_start_7b
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 275
    :cond_7e
    :goto_7e
    throw v2

    .line 271
    :catch_7f
    move-exception v0

    .line 272
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "Downsampler"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 273
    const-string/jumbo v3, "Downsampler"

    const-string/jumbo v4, "Cannot reset the input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    .line 278
    .end local v0    # "e":Ljava/io/IOException;
    :cond_93
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_11
.end method

.method private static declared-synchronized getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 355
    const-class v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-enter v2

    :try_start_3
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    .line 356
    :try_start_6
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    .line 357
    .local v0, "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1b

    .line 358
    if-nez v0, :cond_19

    .line 359
    :try_start_11
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .end local v0    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 360
    .restart local v0    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    .line 363
    :cond_19
    monitor-exit v2

    return-object v0

    .line 357
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 355
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .registers 3
    .param p0, "decodeBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 367
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 368
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v1

    .line 369
    :try_start_6
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 370
    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .registers 5
    .param p0, "decodeBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 375
    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 376
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 377
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 378
    iput v3, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 379
    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 380
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 381
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 382
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 383
    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 385
    const/16 v0, 0xb

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_1f

    .line 386
    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 387
    iput-boolean v3, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 389
    :cond_1f
    return-void
.end method

.method private static shouldUsePool(Ljava/io/InputStream;)Z
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x5

    .line 225
    const/16 v2, 0x13

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v3, :cond_9

    .line 226
    const/4 v2, 0x1

    .line 248
    :cond_8
    :goto_8
    return v2

    .line 229
    :cond_9
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 231
    :try_start_e
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v1

    .line 234
    .local v1, "type":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_35
    .catchall {:try_start_e .. :try_end_1c} :catchall_62

    move-result v2

    .line 241
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_8

    .line 242
    :catch_21
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "Downsampler"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 244
    const-string/jumbo v3, "Downsampler"

    const-string/jumbo v4, "Cannot reset the input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "type":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    :catch_35
    move-exception v0

    .line 236
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_36
    const-string/jumbo v2, "Downsampler"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 237
    const-string/jumbo v2, "Downsampler"

    const-string/jumbo v3, "Cannot determine the image type from header"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_62

    .line 241
    :cond_49
    :try_start_49
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4e

    .line 248
    :cond_4c
    :goto_4c
    const/4 v2, 0x0

    goto :goto_8

    .line 242
    :catch_4e
    move-exception v0

    .line 243
    const-string/jumbo v2, "Downsampler"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 244
    const-string/jumbo v2, "Downsampler"

    const-string/jumbo v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 240
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_62
    move-exception v2

    .line 241
    :try_start_63
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 246
    :cond_66
    :goto_66
    throw v2

    .line 242
    :catch_67
    move-exception v0

    .line 243
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "Downsampler"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 244
    const-string/jumbo v3, "Downsampler"

    const-string/jumbo v4, "Cannot reset the input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66
.end method


# virtual methods
.method public final decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .registers 36
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 108
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v5

    .line 109
    .local v5, "byteArrayPool":Lcom/bumptech/glide/util/ByteArrayPool;
    invoke-virtual {v5}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v6

    .line 110
    .local v6, "bytesForOptions":[B
    invoke-virtual {v5}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v7

    .line 111
    .local v7, "bytesForStream":[B
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v16

    .line 114
    .local v16, "options":Landroid/graphics/BitmapFactory$Options;
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v7}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;[B)V

    .line 119
    .local v4, "bufferedStream":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    invoke-static {v4}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->obtain(Ljava/io/InputStream;)Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    move-result-object v11

    .line 124
    .local v11, "exceptionStream":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    new-instance v15, Lcom/bumptech/glide/util/MarkEnforcingInputStream;

    invoke-direct {v15, v11}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 126
    .local v15, "invalidatingStream":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    const/high16 v21, 0x500000

    :try_start_22
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->mark(I)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1a4

    .line 127
    const/16 v17, 0x0

    .line 129
    .local v17, "orientation":I
    :try_start_29
    new-instance v22, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    move-object/from16 v0, v22

    invoke-direct {v0, v11}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    .line 1120
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v21

    .line 1122
    invoke-static/range {v21 .. v21}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->handles(I)Z

    move-result v21

    if-eqz v21, :cond_2be

    .line 1150
    :cond_40
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v21

    .line 1152
    const/16 v23, 0xff

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_1b2

    .line 1153
    const-string/jumbo v21, "ImageHeaderParser"

    const/16 v22, 0x3

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1156
    const/16 v21, 0x0

    move-object/from16 v23, v21

    .line 1126
    :goto_5e
    if-eqz v23, :cond_2b6

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v21, v0

    sget-object v22, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2b6

    const/16 v21, 0x1

    .line 1129
    :goto_74
    if-eqz v21, :cond_93

    .line 1130
    const/16 v22, 0x0

    :goto_78
    sget-object v24, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_93

    .line 1131
    aget-byte v24, v23, v22

    sget-object v25, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    aget-byte v25, v25, v22

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2ba

    .line 1132
    const/16 v21, 0x0

    .line 1138
    :cond_93
    if-eqz v21, :cond_2be

    .line 1139
    new-instance v21, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;-><init>([B)V

    invoke-static/range {v21 .. v21}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_a1} :catch_2dd
    .catchall {:try_start_29 .. :try_end_a1} :catchall_316

    move-result v17

    .line 136
    :goto_a2
    :try_start_a2
    invoke-virtual {v11}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_2c2
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_1a4

    .line 144
    :cond_a5
    :goto_a5
    :try_start_a5
    move-object/from16 v0, v16

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 1307
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1308
    move-object/from16 v0, v16

    invoke-static {v15, v4, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1309
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1310
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v12, v0, [I

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    aput v22, v12, v21

    const/16 v21, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    aput v22, v12, v21

    .line 147
    .local v12, "inDimens":[I
    const/16 v21, 0x0

    aget v14, v12, v21

    .line 148
    .local v14, "inWidth":I
    const/16 v21, 0x1

    aget v13, v12, v21

    .line 2227
    .local v13, "inHeight":I
    packed-switch v17, :pswitch_data_446

    .line 2241
    const/4 v8, 0x0

    .line 3184
    .local v8, "degreesToRotate":I
    :goto_e4
    const/high16 v21, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v21

    if-ne v0, v1, :cond_ee

    move/from16 p4, v13

    .line 3185
    .end local p4    # "outHeight":I
    :cond_ee
    const/high16 v21, -0x80000000

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_f8

    move/from16 p3, v14

    .line 3188
    .end local p3    # "outWidth":I
    :cond_f8
    const/16 v21, 0x5a

    move/from16 v0, v21

    if-eq v8, v0, :cond_104

    const/16 v21, 0x10e

    move/from16 v0, v21

    if-ne v8, v0, :cond_341

    .line 3192
    :cond_104
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v13, v14, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getSampleSize(IIII)I

    move-result v21

    .line 3201
    :goto_10e
    if-nez v21, :cond_34d

    const/16 v21, 0x0

    .line 3204
    :goto_112
    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 3211
    .local v19, "sampleSize":I
    move-object/from16 v0, p5

    invoke-static {v15, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;

    move-result-object v21

    .line 3212
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3213
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3214
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_146

    const/16 v22, 0x13

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_18e

    :cond_146
    invoke-static {v15}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->shouldUsePool(Ljava/io/InputStream;)Z

    move-result v22

    if-eqz v22, :cond_18e

    .line 3215
    int-to-double v0, v14

    move-wide/from16 v22, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    .line 3216
    int-to-double v0, v13

    move-wide/from16 v24, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    .line 3218
    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 3347
    const/16 v22, 0xb

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_18e

    .line 3348
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 3220
    :cond_18e
    move-object/from16 v0, v16

    invoke-static {v15, v4, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 4122
    .local v9, "downsampled":Landroid/graphics/Bitmap;
    iget-object v0, v11, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    move-object/from16 v20, v0

    .line 161
    .local v20, "streamException":Ljava/lang/Exception;
    if-eqz v20, :cond_353

    .line 162
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21
    :try_end_1a4
    .catchall {:try_start_a5 .. :try_end_1a4} :catchall_1a4

    .line 176
    .end local v8    # "degreesToRotate":I
    .end local v9    # "downsampled":Landroid/graphics/Bitmap;
    .end local v12    # "inDimens":[I
    .end local v13    # "inHeight":I
    .end local v14    # "inWidth":I
    .end local v17    # "orientation":I
    .end local v19    # "sampleSize":I
    .end local v20    # "streamException":Ljava/lang/Exception;
    :catchall_1a4
    move-exception v21

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 177
    invoke-virtual {v5, v7}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 178
    invoke-virtual {v11}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->release()V

    .line 179
    invoke-static/range {v16 .. v16}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    throw v21

    .line 1159
    .restart local v17    # "orientation":I
    .restart local p3    # "outWidth":I
    .restart local p4    # "outHeight":I
    :cond_1b2
    :try_start_1b2
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v23

    .line 1161
    const/16 v21, 0xda

    move/from16 v0, v23

    move/from16 v1, v21

    if-ne v0, v1, :cond_1ca

    .line 1162
    const/16 v21, 0x0

    move-object/from16 v23, v21

    goto/16 :goto_5e

    .line 1163
    :cond_1ca
    const/16 v21, 0xd9

    move/from16 v0, v23

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e0

    .line 1164
    const-string/jumbo v21, "ImageHeaderParser"

    const/16 v22, 0x3

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1167
    const/16 v21, 0x0

    move-object/from16 v23, v21

    goto/16 :goto_5e

    .line 1171
    :cond_1e0
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v21

    add-int/lit8 v24, v21, -0x2

    .line 1173
    const/16 v21, 0xe1

    move/from16 v0, v23

    move/from16 v1, v21

    if-eq v0, v1, :cond_24e

    .line 1174
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    move-object/from16 v21, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    move-result-wide v26

    .line 1175
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v21, v26, v28

    if-eqz v21, :cond_40

    .line 1176
    const-string/jumbo v21, "ImageHeaderParser"

    const/16 v22, 0x3

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_248

    .line 1177
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "Unable to skip enough data, type: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", wanted to skip: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", but actually skipped: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1182
    :cond_248
    const/16 v21, 0x0

    move-object/from16 v23, v21

    goto/16 :goto_5e

    .line 1185
    :cond_24e
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 1186
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->read([B)I

    move-result v22

    .line 1187
    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_2b2

    .line 1188
    const-string/jumbo v21, "ImageHeaderParser"

    const/16 v25, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_2ac

    .line 1189
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "Unable to read segment data, type: "

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v23, ", length: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v23, ", actually read: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2ac
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_2ac} :catch_2dd
    .catchall {:try_start_1b2 .. :try_end_2ac} :catchall_316

    .line 1194
    :cond_2ac
    const/16 v21, 0x0

    move-object/from16 v23, v21

    goto/16 :goto_5e

    :cond_2b2
    move-object/from16 v23, v21

    .line 1196
    goto/16 :goto_5e

    .line 1126
    :cond_2b6
    const/16 v21, 0x0

    goto/16 :goto_74

    .line 1130
    :cond_2ba
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_78

    .line 1141
    :cond_2be
    const/16 v17, -0x1

    goto/16 :goto_a2

    .line 137
    :catch_2c2
    move-exception v10

    .line 138
    .local v10, "e":Ljava/io/IOException;
    :try_start_2c3
    const-string/jumbo v21, "Downsampler"

    const/16 v22, 0x5

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_a5

    .line 139
    const-string/jumbo v21, "Downsampler"

    const-string/jumbo v22, "Cannot reset the input stream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2db
    .catchall {:try_start_2c3 .. :try_end_2db} :catchall_1a4

    goto/16 :goto_a5

    .line 130
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2dd
    move-exception v10

    .line 131
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_2de
    const-string/jumbo v21, "Downsampler"

    const/16 v22, 0x5

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_2f6

    .line 132
    const-string/jumbo v21, "Downsampler"

    const-string/jumbo v22, "Cannot determine the image orientation from header"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f6
    .catchall {:try_start_2de .. :try_end_2f6} :catchall_316

    .line 136
    :cond_2f6
    :try_start_2f6
    invoke-virtual {v11}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_2f9
    .catch Ljava/io/IOException; {:try_start_2f6 .. :try_end_2f9} :catch_2fb
    .catchall {:try_start_2f6 .. :try_end_2f9} :catchall_1a4

    goto/16 :goto_a5

    .line 137
    :catch_2fb
    move-exception v10

    .line 138
    :try_start_2fc
    const-string/jumbo v21, "Downsampler"

    const/16 v22, 0x5

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_a5

    .line 139
    const-string/jumbo v21, "Downsampler"

    const-string/jumbo v22, "Cannot reset the input stream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_314
    .catchall {:try_start_2fc .. :try_end_314} :catchall_1a4

    goto/16 :goto_a5

    .line 135
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_316
    move-exception v21

    .line 136
    :try_start_317
    invoke-virtual {v11}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_31a
    .catch Ljava/io/IOException; {:try_start_317 .. :try_end_31a} :catch_31b
    .catchall {:try_start_317 .. :try_end_31a} :catchall_1a4

    .line 141
    :cond_31a
    :goto_31a
    :try_start_31a
    throw v21

    .line 137
    :catch_31b
    move-exception v10

    .line 138
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v22, "Downsampler"

    const/16 v23, 0x5

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_31a

    .line 139
    const-string/jumbo v22, "Downsampler"

    const-string/jumbo v23, "Cannot reset the input stream"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31a

    .line 2230
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v12    # "inDimens":[I
    .restart local v13    # "inHeight":I
    .restart local v14    # "inWidth":I
    :pswitch_335
    const/16 v8, 0x5a

    .line 2231
    goto/16 :goto_e4

    .line 2234
    :pswitch_339
    const/16 v8, 0xb4

    .line 2235
    goto/16 :goto_e4

    .line 2238
    :pswitch_33d
    const/16 v8, 0x10e

    .line 2239
    goto/16 :goto_e4

    .line 3194
    .end local p3    # "outWidth":I
    .end local p4    # "outHeight":I
    .restart local v8    # "degreesToRotate":I
    :cond_341
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v14, v13, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getSampleSize(IIII)I

    move-result v21

    goto/16 :goto_10e

    .line 3201
    :cond_34d
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v21

    goto/16 :goto_112

    .line 165
    .restart local v9    # "downsampled":Landroid/graphics/Bitmap;
    .restart local v19    # "sampleSize":I
    .restart local v20    # "streamException":Ljava/lang/Exception;
    :cond_353
    const/16 v18, 0x0

    .line 166
    .local v18, "rotated":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_37a

    .line 4256
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 4290
    packed-switch v17, :pswitch_data_456

    .line 4258
    :goto_35f
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v22

    if-eqz v22, :cond_3c8

    move-object/from16 v18, v9

    .line 169
    :goto_367
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_37a

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v21

    if-nez v21, :cond_37a

    .line 170
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_37a
    .catchall {:try_start_31a .. :try_end_37a} :catchall_1a4

    .line 176
    :cond_37a
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 177
    invoke-virtual {v5, v7}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 178
    invoke-virtual {v11}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->release()V

    .line 179
    invoke-static/range {v16 .. v16}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    return-object v18

    .line 4292
    :pswitch_387
    const/high16 v22, -0x40800000    # -1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    :try_start_38b
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_35f

    .line 4295
    :pswitch_38f
    const/high16 v22, 0x43340000    # 180.0f

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_35f

    .line 4298
    :pswitch_395
    const/high16 v22, 0x43340000    # 180.0f

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 4299
    const/high16 v22, -0x40800000    # -1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_35f

    .line 4302
    :pswitch_3a2
    const/high16 v22, 0x42b40000    # 90.0f

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 4303
    const/high16 v22, -0x40800000    # -1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_35f

    .line 4306
    :pswitch_3af
    const/high16 v22, 0x42b40000    # 90.0f

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_35f

    .line 4309
    :pswitch_3b5
    const/high16 v22, -0x3d4c0000    # -90.0f

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 4310
    const/high16 v22, -0x40800000    # -1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_35f

    .line 4313
    :pswitch_3c2
    const/high16 v22, -0x3d4c0000    # -90.0f

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_35f

    .line 4263
    :cond_3c8
    new-instance v22, Landroid/graphics/RectF;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4264
    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4266
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 4267
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 4269
    invoke-static {v9}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v25

    .line 4270
    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 4271
    .end local v18    # "rotated":Landroid/graphics/Bitmap;
    if-nez v18, :cond_40c

    .line 4272
    invoke-static/range {v23 .. v25}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 4275
    :cond_40c
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4277
    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4278
    new-instance v23, Landroid/graphics/Paint;

    const/16 v24, 0x6

    invoke-direct/range {v23 .. v24}, Landroid/graphics/Paint;-><init>(I)V

    .line 4279
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v9, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_444
    .catchall {:try_start_38b .. :try_end_444} :catchall_1a4

    goto/16 :goto_367

    .line 2227
    :pswitch_data_446
    .packed-switch 0x3
        :pswitch_339
        :pswitch_339
        :pswitch_335
        :pswitch_335
        :pswitch_33d
        :pswitch_33d
    .end packed-switch

    .line 4290
    :pswitch_data_456
    .packed-switch 0x2
        :pswitch_387
        :pswitch_38f
        :pswitch_395
        :pswitch_3a2
        :pswitch_3af
        :pswitch_3b5
        :pswitch_3c2
    .end packed-switch
.end method

.method protected abstract getSampleSize(IIII)I
.end method
