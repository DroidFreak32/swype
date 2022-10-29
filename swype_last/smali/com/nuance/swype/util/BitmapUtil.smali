.class public final Lcom/nuance/swype/util/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public static createDeviceOptimizedBitmap(IIZ)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "isLowEndDevice"    # Z

    .prologue
    .line 55
    if-eqz p2, :cond_9

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 58
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    :goto_4
    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 55
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    :cond_9
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_4
.end method
