.class final Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;
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
    .line 38
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    const-string/jumbo v0, "AT_LEAST.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method

.method protected final getSampleSize(IIII)I
    .registers 7
    .param p1, "inWidth"    # I
    .param p2, "inHeight"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    .line 41
    div-int v0, p2, p4

    div-int v1, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
