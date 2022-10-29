.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;
.super Ljava/lang/Object;
.source "BitmapPoolAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearMemory()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public final get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public final put(Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public final setSizeMultiplier(F)V
    .registers 2
    .param p1, "sizeMultiplier"    # F

    .prologue
    .line 18
    return-void
.end method

.method public final trimMemory(I)V
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 43
    return-void
.end method
