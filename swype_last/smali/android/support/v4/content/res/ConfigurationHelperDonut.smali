.class final Landroid/support/v4/content/res/ConfigurationHelperDonut;
.super Ljava/lang/Object;
.source "ConfigurationHelperDonut.java"


# direct methods
.method static getScreenHeightDp(Landroid/content/res/Resources;)I
    .registers 4
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 28
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method static getScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 4
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 33
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
