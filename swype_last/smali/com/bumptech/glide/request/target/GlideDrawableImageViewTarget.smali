.class public final Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;
.source "GlideDrawableImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/ImageViewTarget",
        "<",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private maxLoopCount:I

.field private resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;-><init>(Landroid/widget/ImageView;B)V

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/widget/ImageView;B)V
    .registers 4
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->maxLoopCount:I

    .line 39
    return-void
.end method


# virtual methods
.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 8
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/bumptech/glide/request/animation/GlideAnimation;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3d4ccccd    # 0.05f

    .line 12
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 2052
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->isAnimated()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 2059
    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 2060
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2061
    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4d

    sub-float v0, v1, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4d

    .line 2063
    new-instance v1, Lcom/bumptech/glide/request/target/SquaringDrawable;

    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/bumptech/glide/request/target/SquaringDrawable;-><init>(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;I)V

    move-object p1, v1

    .line 2066
    :cond_4d
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTarget;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 2067
    iput-object p1, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 2068
    iget v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->maxLoopCount:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setLoopCount(I)V

    .line 2069
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->start()V

    .line 12
    return-void
.end method

.method public final onStart()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    if-eqz v0, :cond_9

    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->start()V

    .line 88
    :cond_9
    return-void
.end method

.method public final onStop()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    if-eqz v0, :cond_9

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->stop()V

    .line 95
    :cond_9
    return-void
.end method

.method protected final bridge synthetic setResource(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 1080
    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method
