.class public abstract Landroid/support/v7/widget/LinearSmoothScroller;
.super Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 78
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 80
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 88
    iput v1, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iput v1, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 11157
    const/high16 v1, 0x41c80000    # 25.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 91
    iput v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    .line 92
    return-void
.end method

.method private static calculateDtToFit(IIIII)I
    .registers 9
    .param p0, "viewStart"    # I
    .param p1, "viewEnd"    # I
    .param p2, "boxStart"    # I
    .param p3, "boxEnd"    # I
    .param p4, "snapPreference"    # I

    .prologue
    .line 266
    packed-switch p4, :pswitch_data_1e

    .line 282
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    :pswitch_c
    sub-int v1, p2, p0

    .line 285
    :cond_e
    :goto_e
    return v1

    .line 270
    :pswitch_f
    sub-int v1, p3, p1

    goto :goto_e

    .line 272
    :pswitch_12
    sub-int v1, p2, p0

    .line 273
    .local v1, "dtStart":I
    if-gtz v1, :cond_e

    .line 276
    sub-int v0, p3, p1

    .line 277
    .local v0, "dtEnd":I
    if-gez v0, :cond_1c

    move v1, v0

    .line 278
    goto :goto_e

    .line 285
    :cond_1c
    const/4 v1, 0x0

    goto :goto_e

    .line 266
    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_c
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method private calculateTimeForScrolling(I)I
    .registers 4
    .param p1, "dx"    # I

    .prologue
    .line 188
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private static clampApplyScroll(II)I
    .registers 4
    .param p0, "tmpDt"    # I
    .param p1, "dt"    # I

    .prologue
    .line 252
    move v0, p0

    .line 253
    .local v0, "before":I
    sub-int/2addr p0, p1

    .line 254
    mul-int v1, v0, p0

    if-gtz v1, :cond_7

    .line 255
    const/4 p0, 0x0

    .line 257
    .end local p0    # "tmpDt":I
    :cond_7
    return p0
.end method


# virtual methods
.method public abstract computeScrollVectorForPosition(I)Landroid/graphics/PointF;
.end method

.method protected final onSeekTargetStep$64702b56(IILandroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "action"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    const v7, 0x461c4000    # 10000.0f

    const/4 v2, 0x0

    const v6, 0x3f99999a    # 1.2f

    .line 121
    .line 16102
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 121
    if-nez v0, :cond_15

    .line 122
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->stop()V

    .line 16235
    :cond_14
    :goto_14
    return-void

    .line 131
    :cond_15
    iget v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    invoke-static {v0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 132
    iget v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    invoke-static {v0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 134
    iget v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    if-nez v0, :cond_14

    iget v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    if-nez v0, :cond_14

    .line 17055
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 16227
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 16228
    if-eqz v0, :cond_41

    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_52

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_52

    .line 16229
    :cond_41
    const-string/jumbo v0, "LinearSmoothScroller"

    const-string/jumbo v1, "To support smooth scrolling, you should override \nLayoutManager#computeScrollVectorForPosition.\nFalling back to instant scroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18055
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 18247
    iput v0, p3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 16234
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->stop()V

    goto :goto_14

    .line 19135
    :cond_52
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 19137
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v4, v1

    div-double/2addr v4, v2

    double-to-float v1, v4

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 19138
    iget v1, v0, Landroid/graphics/PointF;->y:F

    float-to-double v4, v1

    div-double v2, v4, v2

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 16238
    iput-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 16240
    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 16241
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 16242
    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    .line 16246
    iget v1, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iget v2, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p3, v1, v2, v0, v3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    goto/16 :goto_14
.end method

.method protected final onStop()V
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 147
    return-void
.end method

.method protected final onTargetFound$68abd3fe(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 13
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "action"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    .line 107
    .line 11201
    iget-object v4, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_59

    :cond_d
    const/4 v4, 0x0

    move v5, v4

    .line 12003
    :goto_f
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 11326
    if-eqz v6, :cond_19

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-nez v4, :cond_68

    .line 11327
    :cond_19
    const/4 v1, 0x0

    .line 13215
    .local v1, "dx":I
    :goto_1a
    iget-object v4, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v4, :cond_27

    iget-object v4, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8d

    :cond_27
    const/4 v4, 0x0

    move v5, v4

    .line 14003
    :goto_29
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 13301
    if-eqz v6, :cond_33

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    if-nez v4, :cond_9c

    .line 13302
    :cond_33
    const/4 v2, 0x0

    .line 109
    .local v2, "dy":I
    :goto_34
    mul-int v4, v1, v1

    mul-int v5, v2, v2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 15174
    .local v0, "distance":I
    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 111
    .local v3, "time":I
    if-lez v3, :cond_58

    .line 112
    neg-int v4, v1

    neg-int v5, v2

    iget-object v6, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p2, v4, v5, v3, v6}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 114
    :cond_58
    return-void

    .line 11201
    .end local v0    # "distance":I
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v3    # "time":I
    :cond_59
    iget-object v4, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_65

    const/4 v4, 0x1

    move v5, v4

    goto :goto_f

    :cond_65
    const/4 v4, -0x1

    move v5, v4

    goto :goto_f

    .line 11330
    :cond_68
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 11331
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v7

    iget v8, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    .line 11332
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v8

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v8

    .line 11333
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v8

    .line 12429
    iget v9, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 11334
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v6

    sub-int v6, v9, v6

    .line 11335
    invoke-static {v7, v4, v8, v6, v5}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v1

    goto :goto_1a

    .line 13215
    .restart local v1    # "dx":I
    :cond_8d
    iget-object v4, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_99

    const/4 v4, 0x1

    move v5, v4

    goto :goto_29

    :cond_99
    const/4 v4, -0x1

    move v5, v4

    goto :goto_29

    .line 13305
    :cond_9c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 13306
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v7

    iget v8, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v7, v8

    .line 13307
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v8

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v8

    .line 13308
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v8

    .line 14438
    iget v9, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 13309
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int v6, v9, v6

    .line 13310
    invoke-static {v7, v4, v8, v6, v5}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v2

    goto/16 :goto_34
.end method
