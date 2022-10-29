.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "AttributeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool",
        "<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .registers 2

    .prologue
    .line 61
    .line 2070
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;)V

    .line 61
    return-object v0
.end method

.method public final get(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    .line 1087
    .local v0, "result":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    iput p1, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    .line 1088
    iput p2, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    .line 1089
    iput-object p3, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    .line 65
    return-object v0
.end method
