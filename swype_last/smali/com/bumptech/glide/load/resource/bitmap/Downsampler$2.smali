.class final Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;
.super Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const-string/jumbo v0, "AT_MOST.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method

.method protected final getSampleSize(IIII)I
    .registers 10
    .param p1, "inWidth"    # I
    .param p2, "inHeight"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    const/4 v1, 0x1

    .line 57
    int-to-float v2, p2

    int-to-float v3, p4

    div-float/2addr v2, v3

    int-to-float v3, p1

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 59
    .local v0, "maxIntegerFactor":I
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 60
    if-ge v2, v0, :cond_1e

    :goto_1b
    shl-int v1, v2, v1

    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1b
.end method
