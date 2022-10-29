.class public final Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;
.super Ljava/lang/Object;
.source "GlideBitmapDrawableTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->resources:Landroid/content/res/Resources;

    .line 27
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 28
    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string/jumbo v0, "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.method public final transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "toTranscode":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->resources:Landroid/content/res/Resources;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 33
    .local v0, "drawable":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;-><init>(Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object v1
.end method
