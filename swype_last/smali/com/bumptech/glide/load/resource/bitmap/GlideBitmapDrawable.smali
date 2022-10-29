.class public Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
.super Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "GlideBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    }
.end annotation


# instance fields
.field private applyGravity:Z

.field private final destRect:Landroid/graphics/Rect;

.field private height:I

.field private mutated:Z

.field state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "state"    # Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 20
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->destRect:Landroid/graphics/Rect;

    .line 32
    if-nez p2, :cond_15

    .line 33
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "BitmapState must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_15
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    .line 38
    if-eqz p1, :cond_38

    .line 39
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 40
    .local v0, "density":I
    if-nez v0, :cond_36

    const/16 v1, 0xa0

    .line 41
    .local v1, "targetDensity":I
    :goto_23
    iput v1, p2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->targetDensity:I

    .line 45
    .end local v0    # "density":I
    :goto_25
    iget-object v2, p2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v2

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->width:I

    .line 46
    iget-object v2, p2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v2

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->height:I

    .line 47
    return-void

    .end local v1    # "targetDensity":I
    .restart local v0    # "density":I
    :cond_36
    move v1, v0

    .line 40
    goto :goto_23

    .line 43
    .end local v0    # "density":I
    :cond_38
    iget v1, p2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->targetDensity:I

    .restart local v1    # "targetDensity":I
    goto :goto_25
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->applyGravity:Z

    if-eqz v0, :cond_16

    .line 98
    const/16 v0, 0x77

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->width:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->height:I

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->destRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->applyGravity:Z

    .line 101
    :cond_16
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->destRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 102
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->width:I

    return v0
.end method

.method public getOpacity()I
    .registers 4

    .prologue
    .line 121
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v0, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    .line 122
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_1a

    :cond_18
    const/4 v1, -0x3

    :goto_19
    return v1

    :cond_1a
    const/4 v1, -0x1

    goto :goto_19
.end method

.method public final isAnimated()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->mutated:Z

    if-nez v0, :cond_16

    invoke-super {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_16

    .line 129
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;-><init>(Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->mutated:Z

    .line 132
    :cond_16
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->applyGravity:Z

    .line 88
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 107
    if-eq v0, p1, :cond_17

    .line 108
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    .line 1165
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->mutatePaint()V

    .line 1166
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->invalidateSelf()V

    .line 111
    :cond_17
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    .line 2160
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->mutatePaint()V

    .line 2161
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 116
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->invalidateSelf()V

    .line 117
    return-void
.end method

.method public final setLoopCount(I)V
    .registers 2
    .param p1, "loopCount"    # I

    .prologue
    .line 67
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 72
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method
