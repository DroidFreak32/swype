.class public final Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private quality:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(B)V

    .line 33
    return-void
.end method

.method private constructor <init>(B)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 37
    const/16 v0, 0x5a

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->quality:I

    .line 38
    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 10
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 25
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    .line 1042
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1044
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 1060
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v1, :cond_57

    .line 1061
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 1046
    :goto_12
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->quality:I

    invoke-virtual {v0, v1, v4, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1047
    const-string/jumbo v4, "BitmapEncoder"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1048
    const-string/jumbo v4, "BitmapEncoder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Compressed with type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " of size "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_55
    const/4 v0, 0x1

    .line 25
    return v0

    .line 1062
    :cond_57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1063
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_12

    .line 1065
    :cond_60
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_12
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    const-string/jumbo v0, "BitmapEncoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
