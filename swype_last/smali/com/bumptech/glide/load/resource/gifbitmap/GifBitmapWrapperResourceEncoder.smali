.class public final Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder",
        "<",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapEncoder:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final gifEncoder:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/ResourceEncoder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "bitmapEncoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<Landroid/graphics/Bitmap;>;"
    .local p2, "gifEncoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->bitmapEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 23
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->gifEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 24
    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 15
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    .line 1028
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 1042
    iget-object v1, v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->bitmapResource:Lcom/bumptech/glide/load/engine/Resource;

    .line 1031
    if-eqz v1, :cond_13

    .line 1032
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->bitmapEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0, v1, p2}, Lcom/bumptech/glide/load/ResourceEncoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    :goto_12
    return v0

    .line 1034
    :cond_13
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->gifEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 1049
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->gifResource:Lcom/bumptech/glide/load/engine/Resource;

    .line 1034
    invoke-interface {v1, v0, p2}, Lcom/bumptech/glide/load/ResourceEncoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    goto :goto_12
.end method

.method public final getId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->id:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->bitmapEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->gifEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->id:Ljava/lang/String;

    .line 43
    :cond_23
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->id:Ljava/lang/String;

    return-object v0
.end method
