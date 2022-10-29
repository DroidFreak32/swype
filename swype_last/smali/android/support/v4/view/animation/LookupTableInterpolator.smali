.class abstract Landroid/support/v4/view/animation/LookupTableInterpolator;
.super Ljava/lang/Object;
.source "LookupTableInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mStepSize:F

.field private final mValues:[F


# direct methods
.method public constructor <init>([F)V
    .registers 4
    .param p1, "values"    # [F

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mStepSize:F

    .line 33
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 8
    .param p1, "input"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 37
    cmpl-float v5, p1, v3

    if-ltz v5, :cond_8

    .line 54
    :goto_7
    return v3

    .line 40
    :cond_8
    cmpg-float v3, p1, v4

    if-gtz v3, :cond_e

    move v3, v4

    .line 41
    goto :goto_7

    .line 46
    :cond_e
    iget-object v3, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 49
    .local v0, "position":I
    int-to-float v3, v0

    iget v4, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mStepSize:F

    mul-float v1, v3, v4

    .line 50
    .local v1, "quantized":F
    sub-float v3, p1, v1

    .line 51
    iget v4, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mStepSize:F

    div-float v2, v3, v4

    .line 54
    .local v2, "weight":F
    iget-object v3, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    aget v3, v3, v0

    iget-object v4, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    aget v5, v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    goto :goto_7
.end method
