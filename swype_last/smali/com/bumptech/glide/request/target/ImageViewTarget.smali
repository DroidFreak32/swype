.class public abstract Lcom/bumptech/glide/request/target/ImageViewTarget;
.super Lcom/bumptech/glide/request/target/ViewTarget;
.source "ImageViewTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/ViewTarget",
        "<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 17
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;-><init>(Landroid/view/View;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 26
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 70
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method public final onLoadFailed$71731cd5(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 59
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method

.method public final onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 48
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    .local p1, "resource":Ljava/lang/Object;, "TZ;"
    .local p2, "glideAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-TZ;>;"
    if-eqz p2, :cond_8

    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/request/animation/GlideAnimation;->animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 76
    :cond_8
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setResource(Ljava/lang/Object;)V

    .line 78
    :cond_b
    return-void
.end method

.method public final setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 37
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method

.method protected abstract setResource(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method
