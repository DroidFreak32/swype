.class public final Landroid/support/v4/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper$1;

    invoke-direct {v0}, Landroid/support/v4/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Landroid/support/v4/widget/ViewDragHelper$Callback;

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 333
    new-instance v2, Landroid/support/v4/widget/ViewDragHelper$2;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/ViewDragHelper$2;-><init>(Landroid/support/v4/widget/ViewDragHelper;)V

    iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 374
    if-nez p2, :cond_0

    .line 375
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    :cond_0
    if-nez p3, :cond_1

    .line 378
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    :cond_1
    iput-object p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 382
    iput-object p3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 384
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 385
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 386
    .local v0, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    .line 388
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    .line 389
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    .line 390
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    .line 391
    sget-object v2, Landroid/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 392
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 4
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .prologue
    const/4 v2, 0x0

    .line 1218
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1219
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1221
    .local v1, "absODelta":F
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return v2

    .line 1227
    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 1228
    :cond_2
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-nez v3, :cond_0

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkTouchSlop$17e2abff(Landroid/view/View;F)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1245
    if-nez p1, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return v2

    .line 1248
    :cond_1
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 1249
    .local v0, "checkHorizontal":Z
    :goto_1
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 1251
    if-eqz v0, :cond_0

    .line 1254
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    move v2, v1

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    :cond_2
    move v0, v2

    .line 1248
    goto :goto_1
.end method

.method private static clampMag(FFF)F
    .locals 3
    .param p0, "value"    # F
    .param p1, "absMin"    # F
    .param p2, "absMax"    # F

    .prologue
    const/4 v1, 0x0

    .line 667
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 668
    .local v0, "absValue":F
    cmpg-float v2, v0, p1

    if-gez v2, :cond_1

    move p2, v1

    .line 670
    .end local p2    # "absMax":F
    :cond_0
    :goto_0
    return p2

    .line 669
    .restart local p2    # "absMax":F
    :cond_1
    cmpl-float v2, v0, p2

    if-lez v2, :cond_2

    cmpl-float v1, p0, v1

    if-gtz v1, :cond_0

    neg-float p2, p2

    goto :goto_0

    :cond_2
    move p2, p0

    .line 670
    goto :goto_0
.end method

.method private static clampMag(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "absMin"    # I
    .param p2, "absMax"    # I

    .prologue
    .line 650
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 651
    .local v0, "absValue":I
    if-ge v0, p1, :cond_1

    const/4 p2, 0x0

    .line 653
    .end local p2    # "absMax":I
    :cond_0
    :goto_0
    return p2

    .line 652
    .restart local p2    # "absMax":I
    :cond_1
    if-le v0, p2, :cond_2

    if-gtz p0, :cond_0

    neg-int p2, p2

    goto :goto_0

    :cond_2
    move p2, p0

    .line 653
    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 784
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 795
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 788
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 789
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 790
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 791
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    .line 792
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    .line 793
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    .line 794
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 12
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 619
    const/4 v5, 0x0

    .line 636
    :goto_0
    return v5

    .line 622
    :cond_0
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 623
    .local v4, "width":I
    div-int/lit8 v3, v4, 0x2

    .line 624
    .local v3, "halfWidth":I
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 625
    .local v1, "distanceRatio":F
    int-to-float v5, v3

    int-to-float v6, v3

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float v7, v1, v7

    float-to-double v8, v7

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    .line 629
    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 630
    if-lez p2, :cond_1

    .line 631
    const/high16 v5, 0x447a0000    # 1000.0f

    int-to-float v6, p2

    div-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit8 v2, v5, 0x4

    .line 636
    .local v2, "duration":I
    :goto_1
    const/16 v5, 0x258

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    .line 633
    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p3

    div-float/2addr v5, v6

    .line 634
    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    const/high16 v6, 0x43800000    # 256.0f

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .restart local v2    # "duration":I
    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Landroid/support/v4/widget/ViewDragHelper$Callback;

    .prologue
    .line 360
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2}, Landroid/support/v4/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V

    .line 361
    .local v0, "helper":Landroid/support/v4/widget/ViewDragHelper;
    iget v1, v0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    .line 362
    return-object v0
.end method

.method private dispatchViewReleased$2548a35(F)V
    .locals 4
    .param p1, "xvel"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 759
    iput-boolean v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 760
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased$17e2ac03(Landroid/view/View;F)V

    .line 761
    iput-boolean v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 763
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    .line 765
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 767
    :cond_0
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 15
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .prologue
    .line 577
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 578
    .local v2, "startLeft":I
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 579
    .local v3, "startTop":I
    sub-int v4, p1, v2

    .line 580
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 582
    .local v5, "dy":I
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 584
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 585
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 586
    const/4 v1, 0x0

    .line 593
    :goto_0
    return v1

    .line 589
    :cond_0
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v1, v1

    iget v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v7, v7

    move/from16 v0, p3

    invoke-static {v0, v1, v7}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(III)I

    move-result v9

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v1, v1

    iget v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v7, v7

    move/from16 v0, p4

    invoke-static {v0, v1, v7}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(III)I

    move-result v10

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int v13, v7, v12

    add-int v14, v1, v11

    if-eqz v9, :cond_1

    int-to-float v1, v7

    int-to-float v7, v13

    div-float/2addr v1, v7

    move v7, v1

    :goto_1
    if-eqz v10, :cond_2

    int-to-float v1, v12

    int-to-float v11, v13

    div-float/2addr v1, v11

    :goto_2
    iget-object v11, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v11, v8}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v8

    invoke-direct {p0, v4, v9, v8}, Landroid/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    const/4 v9, 0x0

    invoke-direct {p0, v5, v10, v9}, Landroid/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v9

    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v8, v9

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    float-to-int v6, v1

    .line 590
    .local v6, "duration":I
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 592
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 593
    const/4 v1, 0x1

    goto :goto_0

    .line 589
    .end local v6    # "duration":I
    :cond_1
    int-to-float v1, v1

    int-to-float v7, v14

    div-float/2addr v1, v7

    move v7, v1

    goto :goto_1

    :cond_2
    int-to-float v1, v11

    int-to-float v11, v14

    div-float/2addr v1, v11

    goto :goto_2
.end method

.method public static isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 1410
    if-nez p0, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private releaseViewForPointerUp()V
    .locals 4

    .prologue
    .line 1355
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1356
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-static {v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1359
    .local v0, "xvel":F
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-static {v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(FFF)F

    .line 1362
    invoke-direct {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->dispatchViewReleased$2548a35(F)V

    .line 1363
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 1197
    const/4 v0, 0x0

    .line 1198
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    const/4 v0, 0x1

    .line 1201
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1202
    or-int/lit8 v0, v0, 0x4

    .line 1204
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1205
    or-int/lit8 v0, v0, 0x2

    .line 1207
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1208
    or-int/lit8 v0, v0, 0x8

    .line 1211
    :cond_3
    if-eqz v0, :cond_4

    .line 1212
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1213
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1215
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 828
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v2, v2

    if-gt v2, p3, :cond_2

    :cond_0
    add-int/lit8 v2, p3, 0x1

    new-array v2, v2, [F

    add-int/lit8 v3, p3, 0x1

    new-array v3, v3, [F

    add-int/lit8 v4, p3, 0x1

    new-array v4, v4, [F

    add-int/lit8 v5, p3, 0x1

    new-array v5, v5, [F

    add-int/lit8 v6, p3, 0x1

    new-array v6, v6, [I

    add-int/lit8 v7, p3, 0x1

    new-array v7, v7, [I

    add-int/lit8 v8, p3, 0x1

    new-array v8, v8, [I

    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v10, v10

    invoke-static {v9, v0, v2, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v10, v10

    invoke-static {v9, v0, v3, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    array-length v10, v10

    invoke-static {v9, v0, v4, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    array-length v10, v10

    invoke-static {v9, v0, v5, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v10, v10

    invoke-static {v9, v0, v6, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v10, v10

    invoke-static {v9, v0, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v10, v10

    invoke-static {v9, v0, v8, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    iput-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    iput-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    iput-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    iput-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    iput-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    iput-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 829
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    aput p1, v3, p3

    aput p1, v2, p3

    .line 830
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    aput p2, v3, p3

    aput p2, v2, p3

    .line 831
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v3, p1

    float-to-int v4, p2

    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_3

    move v0, v1

    :cond_3
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    iget v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_4

    or-int/lit8 v0, v0, 0x4

    :cond_4
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    iget v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_5

    or-int/lit8 v0, v0, 0x2

    :cond_5
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v3, v5

    if-le v4, v3, :cond_6

    or-int/lit8 v0, v0, 0x8

    :cond_6
    aput v0, v2, p3

    .line 832
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    .line 833
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 836
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    .line 837
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 838
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 839
    .local v2, "pointerId":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 840
    .local v3, "x":F
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 841
    .local v4, "y":F
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 842
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 844
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method

.method private tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 883
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    .line 892
    :goto_0
    return v0

    .line 887
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->tryCaptureView$5359dc96(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    iput p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 889
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 892
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final abort()V
    .locals 3

    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 513
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 514
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    .line 515
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    .line 516
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 517
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v0

    .line 518
    .local v0, "newX":I
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    .line 519
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged$5b6f797d(Landroid/view/View;I)V

    .line 521
    .end local v0    # "newX":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 522
    return-void
.end method

.method public final cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 498
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 499
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    .line 501
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 505
    :cond_1
    return-void
.end method

.method public final captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 466
    iput p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 467
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewCaptured$5359dc9a(Landroid/view/View;)V

    .line 468
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 469
    return-void
.end method

.method public final checkTouchSlop$134632()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1276
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v4

    .line 1277
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1278
    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    shl-int v5, v2, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    move v4, v2

    :goto_1
    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    aget v4, v4, v1

    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v5, v5, v1

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    aget v5, v5, v1

    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    iget v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v2

    :goto_2
    if-eqz v4, :cond_3

    .line 1282
    :goto_3
    return v2

    :cond_0
    move v4, v3

    .line 1278
    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v3

    goto :goto_2

    .line 1277
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1282
    goto :goto_3
.end method

.method public final continueSettling$138603()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 715
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    if-ne v5, v7, :cond_5

    .line 716
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v2

    .line 717
    .local v2, "keepGoing":Z
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v3

    .line 718
    .local v3, "x":I
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v4

    .line 719
    .local v4, "y":I
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v0, v3, v5

    .line 720
    .local v0, "dx":I
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v1, v4, v5

    .line 722
    .local v1, "dy":I
    if-eqz v0, :cond_0

    .line 723
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 725
    :cond_0
    if-eqz v1, :cond_1

    .line 726
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 729
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 730
    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v5, v6, v3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged$5b6f797d(Landroid/view/View;I)V

    .line 733
    :cond_3
    if-eqz v2, :cond_4

    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v5

    if-ne v3, v5, :cond_4

    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 736
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 737
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v2

    .line 740
    :cond_4
    if-nez v2, :cond_5

    .line 741
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 744
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "keepGoing":Z
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_5
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    if-ne v5, v7, :cond_6

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_6
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final findTopChildUnder(II)Landroid/view/View;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1428
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1429
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1430
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1431
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1436
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1429
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1436
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getCapturedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public final getEdgeSize()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public final getTouchSlop()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public final getViewDragState()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public final processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 23
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1046
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1047
    .local v3, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 1049
    .local v4, "actionIndex":I
    if-nez v3, :cond_0

    .line 1052
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 1055
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1056
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1058
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1060
    packed-switch v3, :pswitch_data_0

    .line 1194
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1062
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 1063
    .local v16, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    .line 1064
    .local v17, "y":F
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 1065
    .local v14, "pointerId":I
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v15

    .line 1067
    .local v15, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v14}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1072
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v18, v0

    aget v18, v18, v14

    .line 1075
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched$255f295()V

    goto :goto_0

    .line 1082
    .end local v14    # "pointerId":I
    .end local v15    # "toCapture":Landroid/view/View;
    .end local v16    # "x":F
    .end local v17    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 1083
    .restart local v14    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 1084
    .restart local v16    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1086
    .restart local v17    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v14}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1089
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 1092
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v15

    .line 1093
    .restart local v15    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v18, v0

    aget v18, v18, v14

    .line 1096
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched$255f295()V

    goto/16 :goto_0

    .line 1099
    .end local v15    # "toCapture":Landroid/view/View;
    :cond_3
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 1110
    .end local v14    # "pointerId":I
    .end local v16    # "x":F
    .end local v17    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1111
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 1112
    .local v11, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 1113
    .restart local v16    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1114
    .restart local v17    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    aget v18, v18, v19

    sub-float v18, v16, v18

    move/from16 v0, v18

    float-to-int v9, v0

    .line 1115
    .local v9, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    aget v18, v18, v19

    sub-float v18, v17, v18

    move/from16 v0, v18

    float-to-int v10, v0

    .line 1117
    .local v10, "idy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    add-int v18, v18, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal$17e143b0(Landroid/view/View;I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v21, v0

    sub-int v19, v18, v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical$17e143b0(Landroid/view/View;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v21, v0

    sub-int v19, v19, v20

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_5
    if-nez v9, :cond_6

    if-eqz v10, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged$5b6f797d(Landroid/view/View;I)V

    .line 1119
    :cond_7
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1122
    .end local v9    # "idx":I
    .end local v10    # "idy":I
    .end local v11    # "index":I
    .end local v16    # "x":F
    .end local v17    # "y":F
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v13

    .line 1123
    .local v13, "pointerCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v13, :cond_a

    .line 1124
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 1125
    .restart local v14    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 1126
    .restart local v16    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1127
    .restart local v17    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v18, v0

    aget v18, v18, v14

    sub-float v5, v16, v18

    .line 1128
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v18, v0

    aget v18, v18, v14

    sub-float v6, v17, v18

    .line 1130
    .local v6, "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v14}, Landroid/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1131
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 1133
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v15

    .line 1137
    .restart local v15    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop$17e2abff(Landroid/view/View;F)Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v18

    if-nez v18, :cond_a

    .line 1139
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1142
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v14    # "pointerId":I
    .end local v15    # "toCapture":Landroid/view/View;
    .end local v16    # "x":F
    .end local v17    # "y":F
    :cond_a
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1148
    .end local v7    # "i":I
    .end local v13    # "pointerCount":I
    :pswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 1149
    .restart local v14    # "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v14, v0, :cond_c

    .line 1151
    const/4 v12, -0x1

    .line 1152
    .local v12, "newActivePointer":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v13

    .line 1153
    .restart local v13    # "pointerCount":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v13, :cond_b

    .line 1154
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 1155
    .local v8, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v8, v0, :cond_d

    .line 1157
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 1161
    .restart local v16    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1162
    .restart local v17    # "y":F
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1164
    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 1169
    .end local v8    # "id":I
    .end local v16    # "x":F
    .end local v17    # "y":F
    :cond_b
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_c

    .line 1171
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1174
    .end local v7    # "i":I
    .end local v12    # "newActivePointer":I
    .end local v13    # "pointerCount":I
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1153
    .restart local v7    # "i":I
    .restart local v8    # "id":I
    .restart local v12    # "newActivePointer":I
    .restart local v13    # "pointerCount":I
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1179
    .end local v7    # "i":I
    .end local v8    # "id":I
    .end local v12    # "newActivePointer":I
    .end local v13    # "pointerCount":I
    .end local v14    # "pointerId":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 1180
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1182
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1187
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 1188
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->dispatchViewReleased$2548a35(F)V

    .line 1190
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1060
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method final setDragState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 864
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 865
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    .line 866
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 867
    if-nez p1, :cond_0

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 871
    :cond_0
    return-void
.end method

.method public final setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    .prologue
    .line 437
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    .line 438
    return-void
.end method

.method public final setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .prologue
    .line 401
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    .line 402
    return-void
.end method

.method public final settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .prologue
    .line 557
    iget-boolean v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public final shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 939
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 940
    .local v0, "action":I
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 942
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 945
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 948
    :cond_0
    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 949
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 951
    :cond_1
    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 953
    packed-switch v0, :pswitch_data_0

    .line 1036
    :cond_2
    :goto_0
    :pswitch_0
    iget v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    :goto_1
    return v10

    .line 955
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 956
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 957
    .local v9, "y":F
    const/4 v10, 0x0

    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 958
    .local v6, "pointerId":I
    invoke-direct {p0, v8, v9, v6}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 960
    float-to-int v10, v8

    float-to-int v11, v9

    invoke-virtual {p0, v10, v11}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 963
    .local v7, "toCapture":Landroid/view/View;
    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v7, v10, :cond_3

    iget v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 964
    invoke-direct {p0, v7, v6}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 967
    :cond_3
    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v10, v10, v6

    .line 968
    iget v11, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 969
    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget v11, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched$255f295()V

    goto :goto_0

    .line 975
    .end local v6    # "pointerId":I
    .end local v7    # "toCapture":Landroid/view/View;
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 976
    .restart local v6    # "pointerId":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 977
    .restart local v8    # "x":F
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 979
    .restart local v9    # "y":F
    invoke-direct {p0, v8, v9, v6}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 982
    iget v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    if-nez v10, :cond_4

    .line 983
    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v10, v10, v6

    .line 984
    iget v11, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 985
    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget v11, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched$255f295()V

    goto :goto_0

    .line 987
    :cond_4
    iget v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 989
    float-to-int v10, v8

    float-to-int v11, v9

    invoke-virtual {p0, v10, v11}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 990
    .restart local v7    # "toCapture":Landroid/view/View;
    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v7, v10, :cond_2

    .line 991
    invoke-direct {p0, v7, v6}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 999
    .end local v6    # "pointerId":I
    .end local v7    # "toCapture":Landroid/view/View;
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v5

    .line 1000
    .local v5, "pointerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_6

    .line 1001
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1002
    .restart local v6    # "pointerId":I
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 1003
    .restart local v8    # "x":F
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1004
    .restart local v9    # "y":F
    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v10, v10, v6

    sub-float v2, v8, v10

    .line 1005
    .local v2, "dx":F
    iget-object v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v10, v10, v6

    sub-float v3, v9, v10

    .line 1007
    .local v3, "dy":F
    invoke-direct {p0, v2, v3, v6}, Landroid/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1008
    iget v10, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    .line 1010
    float-to-int v10, v8

    float-to-int v11, v9

    invoke-virtual {p0, v10, v11}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 1014
    .restart local v7    # "toCapture":Landroid/view/View;
    if-eqz v7, :cond_5

    invoke-direct {p0, v7, v2}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop$17e2abff(Landroid/view/View;F)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0, v7, v6}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1016
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1019
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v6    # "pointerId":I
    .end local v7    # "toCapture":Landroid/view/View;
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1024
    .end local v4    # "i":I
    .end local v5    # "pointerCount":I
    :pswitch_4
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1025
    .restart local v6    # "pointerId":I
    invoke-direct {p0, v6}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1031
    .end local v6    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1036
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 953
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .prologue
    const/4 v1, 0x0

    .line 539
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 542
    invoke-direct {p0, p2, p3, v1, v1}, Landroid/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method
