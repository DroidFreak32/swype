.class public final Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;,
        Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARSER:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

.field private static final DEFAULT_STREAM_FACTORY:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;


# instance fields
.field private final bitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final gifDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private final parser:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

.field private final streamFactory:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_PARSER:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    .line 24
    new-instance v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_STREAM_FACTORY:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 10
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "bitmapDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"
    .local p2, "gifDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    sget-object v4, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_PARSER:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    sget-object v5, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_STREAM_FACTORY:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;)V
    .registers 6
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p4, "parser"    # Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;
    .param p5, "streamFactory"    # Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "bitmapDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"
    .local p2, "gifDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 46
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->gifDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 47
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 48
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->parser:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    .line 49
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->streamFactory:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    .line 50
    return-void
.end method

.method private decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 13
    .param p1, "source"    # Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v0

    .line 57
    .local v0, "pool":Lcom/bumptech/glide/util/ByteArrayPool;
    invoke-virtual {v0}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v1

    .line 2020
    .local v1, "tempBytes":[B
    :try_start_9
    iget-object v3, p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->streamData:Ljava/io/InputStream;

    .line 1070
    if-eqz v3, :cond_76

    .line 3020
    iget-object v3, p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->streamData:Ljava/io/InputStream;

    .line 3140
    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-direct {v5, v3, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;[B)V

    .line 2081
    const/16 v3, 0x800

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->mark(I)V

    .line 3147
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v3, v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v3

    .line 2083
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    .line 2086
    sget-object v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    if-ne v3, v6, :cond_7b

    .line 4101
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->gifDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3, v5, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    .line 4102
    if-eqz v6, :cond_7b

    .line 4103
    invoke-interface {v6}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 4138
    iget-object v7, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 4230
    iget-object v7, v7, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 4108
    const/4 v8, 0x1

    if-le v7, v8, :cond_5f

    .line 4109
    new-instance v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    const/4 v7, 0x0

    invoke-direct {v3, v7, v6}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V

    .line 2090
    :goto_46
    if-nez v3, :cond_53

    .line 2093
    new-instance v3, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    .line 6024
    iget-object v6, p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2093
    invoke-direct {v3, v5, v6}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    .line 2094
    invoke-direct {p0, v3, p2, p3}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeBitmapWrapper(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_71

    move-result-object v3

    :cond_53
    move-object v2, v3

    .line 63
    .local v2, "wrapper":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :goto_54
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 65
    if-eqz v2, :cond_5e

    new-instance v4, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;

    invoke-direct {v4, v2}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;-><init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V

    :cond_5e
    return-object v4

    .line 4111
    .end local v2    # "wrapper":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :cond_5f
    :try_start_5f
    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 5110
    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    .line 4111
    iget-object v7, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v6, v3, v7}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 4112
    new-instance v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_71

    goto :goto_46

    .line 63
    :catchall_71
    move-exception v3

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    throw v3

    .line 1073
    :cond_76
    :try_start_76
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeBitmapWrapper(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_71

    move-result-object v2

    goto :goto_54

    :cond_7b
    move-object v3, v4

    goto :goto_46
.end method

.method private decodeBitmapWrapper(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .registers 7
    .param p1, "toDecode"    # Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v2, p1, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 122
    .local v0, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_f

    .line 123
    new-instance v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .end local v1    # "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V

    .line 126
    .restart local v1    # "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :cond_f
    return-object v1
.end method


# virtual methods
.method public final bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->id:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->gifDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->id:Ljava/lang/String;

    .line 134
    :cond_23
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->id:Ljava/lang/String;

    return-object v0
.end method
