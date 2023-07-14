.class public Lcom/bumptech/glide/DrawableRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "DrawableRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "glide"    # Lcom/bumptech/glide/Glide;
    .param p5, "requestTracker"    # Lcom/bumptech/glide/manager/RequestTracker;
    .param p6, "lifecycle"    # Lcom/bumptech/glide/manager/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    .local p3, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TModelType;Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    const-class v4, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 1247
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 52
    return-void
.end method


# virtual methods
.method public final bridge synthetic animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .prologue
    .line 42
    .line 9299
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 42
    return-object p0
.end method

.method final applyCenterCrop()V
    .locals 0

    .prologue
    .line 467
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 468
    return-void
.end method

.method final applyFitCenter()V
    .locals 3

    .prologue
    .line 462
    .line 3195
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    .line 3345
    iget-object v2, v2, Lcom/bumptech/glide/Glide;->drawableFitCenter:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    .line 3195
    aput-object v2, v0, v1

    .line 4229
    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 463
    return-void
.end method

.method public final centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    .line 1341
    iget-object v2, v2, Lcom/bumptech/glide/Glide;->drawableCenterCrop:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    .line 180
    aput-object v2, v0, v1

    .line 2229
    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 180
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    .line 4440
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 42
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    .line 13440
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 42
    return-object v0
.end method

.method public final bridge synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/load/ResourceDecoder;

    .prologue
    .line 42
    .line 12116
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 42
    return-object p0
.end method

.method public final diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "strategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 387
    return-object p0
.end method

.method public final bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .prologue
    .line 42
    .line 11386
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 42
    return-object p0
.end method

.method public final dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;

    .line 282
    return-object p0
.end method

.method public final bridge synthetic dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0

    .prologue
    .line 42
    .line 10281
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;

    .line 42
    return-object p0
.end method

.method public final into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public final load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 435
    return-object p0
.end method

.method public final bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    .line 5434
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 42
    return-object p0
.end method

.method public final override(II)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 405
    return-object p0
.end method

.method public final bridge synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 42
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 329
    return-object p0
.end method

.method public final bridge synthetic placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 42
    .line 8328
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 42
    return-object p0
.end method

.method public final signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "signature"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 429
    return-object p0
.end method

.method public final bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 42
    .line 6428
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 42
    return-object p0
.end method

.method public final bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 42
    .line 7395
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 42
    return-object p0
.end method

.method public final bridge synthetic sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/load/Encoder;

    .prologue
    .line 42
    .line 11413
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 42
    return-object p0
.end method

.method public final thumbnail(Lcom/bumptech/glide/DrawableRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<*>;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "thumbnailRequest":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<*>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 80
    return-object p0
.end method

.method public final bridge synthetic thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/GenericRequestBuilder;

    .prologue
    .line 42
    .line 13089
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 42
    return-object p0
.end method

.method public final bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "x0"    # [Lcom/bumptech/glide/load/Transformation;

    .prologue
    .line 42
    .line 11229
    .local p0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 42
    return-object p0
.end method
