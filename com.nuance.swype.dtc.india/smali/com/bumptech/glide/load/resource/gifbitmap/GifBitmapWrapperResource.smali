.class public final Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V
    .locals 2
    .param p1, "data"    # Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_0

    .line 16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Data must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 19
    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    .line 2023
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 11
    return-object v0
.end method

.method public final getSize()I
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 1031
    iget-object v1, v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->bitmapResource:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v1, :cond_0

    .line 1032
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->bitmapResource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v0

    :goto_0
    return v0

    .line 1034
    :cond_0
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->gifResource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v0

    goto :goto_0
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 33
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 1042
    iget-object v0, v2, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->bitmapResource:Lcom/bumptech/glide/load/engine/Resource;

    .line 34
    .local v0, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 1049
    iget-object v1, v2, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->gifResource:Lcom/bumptech/glide/load/engine/Resource;

    .line 38
    .local v1, "gifDataResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    if-eqz v1, :cond_1

    .line 39
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 41
    :cond_1
    return-void
.end method
