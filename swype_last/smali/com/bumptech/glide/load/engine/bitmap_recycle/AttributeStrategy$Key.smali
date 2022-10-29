.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
.super Ljava/lang/Object;
.source "AttributeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Key"
.end annotation


# instance fields
.field config:Landroid/graphics/Bitmap$Config;

.field height:I

.field private final pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

.field width:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;)V
    .registers 2
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    .line 84
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 94
    instance-of v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    if-eqz v2, :cond_1b

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    .line 96
    .local v0, "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    if-ne v2, v3, :cond_1b

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    if-ne v2, v3, :cond_1b

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1b

    const/4 v1, 0x1

    .line 100
    .end local v0    # "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    :cond_1b
    return v1
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 105
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    .line 106
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    add-int v0, v1, v2

    .line 107
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    :goto_14
    add-int/2addr v1, v2

    .line 108
    return v1

    .line 107
    :cond_16
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public final offer()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 119
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 113
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    .line 1010
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->getBitmapString(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    .line 113
    return-object v0
.end method
