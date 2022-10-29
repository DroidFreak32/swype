.class public abstract Landroid/support/v4/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;,
        Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field private mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field private mNeedsCancel:Z

.field private mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field private final mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

.field private final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 194
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 12
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const v9, 0x3a83126f    # 0.001f

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v3}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 140
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    new-array v3, v4, [F

    fill-array-data v3, :array_aa

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 152
    new-array v3, v4, [F

    fill-array-data v3, :array_b2

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 161
    new-array v3, v4, [F

    fill-array-data v3, :array_ba

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 164
    new-array v3, v4, [F

    fill-array-data v3, :array_c2

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 167
    new-array v3, v4, [F

    fill-array-data v3, :array_ca

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 210
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 212
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 213
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const v3, 0x44c4e000    # 1575.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 214
    .local v0, "maxVelocity":I
    const v3, 0x439d8000    # 315.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 215
    .local v2, "minVelocity":I
    int-to-float v3, v0

    .line 1294
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    div-float v5, v3, v8

    aput v5, v4, v7

    .line 1295
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    div-float/2addr v3, v8

    aput v3, v4, v6

    .line 216
    int-to-float v3, v2

    .line 1312
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    div-float v5, v3, v8

    aput v5, v4, v7

    .line 1313
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    div-float/2addr v3, v8

    aput v3, v4, v6

    .line 1354
    iput v6, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    .line 1395
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    aput v4, v3, v7

    .line 1396
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    aput v4, v3, v6

    .line 2373
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const v4, 0x3e4ccccd    # 0.2f

    aput v4, v3, v7

    .line 2374
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const v4, 0x3e4ccccd    # 0.2f

    aput v4, v3, v6

    .line 3333
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aput v9, v3, v7

    .line 3334
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aput v9, v3, v6

    .line 222
    sget v3, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    .line 3412
    iput v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    .line 3427
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 3752
    const/16 v4, 0x1f4

    iput v4, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    .line 4442
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 4756
    const/16 v4, 0x1f4

    iput v4, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    .line 225
    return-void

    .line 149
    nop

    :array_aa
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 152
    :array_b2
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 161
    :array_ba
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 164
    :array_c2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 167
    :array_ca
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method static synthetic access$100(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    return v0
.end method

.method static synthetic access$102$2149d4c8(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    return v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    return v0
.end method

.method static synthetic access$202$2149d4c8(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    return v0
.end method

.method static synthetic access$502$2149d4c8(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    return v0
.end method

.method static synthetic access$600(Landroid/support/v4/widget/AutoScrollHelper;)V
    .registers 9
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    const/4 v5, 0x0

    .line 84
    .line 9677
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 9678
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 9680
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9681
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 84
    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900$483d241b(F)F
    .registers 3
    .param p0, "x0"    # F

    .prologue
    .line 84
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private computeTargetVelocity(IFFF)F
    .registers 16
    .param p1, "direction"    # I
    .param p2, "coordinate"    # F
    .param p3, "srcSize"    # F
    .param p4, "dstSize"    # F

    .prologue
    const/4 v8, 0x0

    .line 539
    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v3, v7, p1

    .line 540
    .local v3, "relativeEdge":F
    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v0, v7, p1

    .line 9607
    .local v0, "maximumEdge":F
    mul-float v7, v3, p3

    invoke-static {v7, v8, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    .line 9608
    invoke-direct {p0, p2, v7}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v9

    .line 9609
    sub-float v10, p3, p2

    invoke-direct {p0, v10, v7}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v7

    .line 9610
    sub-float/2addr v7, v9

    .line 9612
    cmpg-float v9, v7, v8

    if-gez v9, :cond_34

    .line 9613
    iget-object v9, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v7, v7

    invoke-interface {v9, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    neg-float v7, v7

    .line 9620
    :goto_26
    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v7, v9, v10}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v6

    .line 542
    .local v6, "value":F
    :goto_2e
    cmpl-float v7, v6, v8

    if-nez v7, :cond_41

    move v7, v8

    .line 558
    :goto_33
    return v7

    .line 9614
    .end local v6    # "value":F
    :cond_34
    cmpl-float v9, v7, v8

    if-lez v9, :cond_3f

    .line 9615
    iget-object v9, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v9, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    goto :goto_26

    :cond_3f
    move v6, v8

    .line 9617
    goto :goto_2e

    .line 547
    .restart local v6    # "value":F
    :cond_41
    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v4, v7, p1

    .line 548
    .local v4, "relativeVelocity":F
    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v2, v7, p1

    .line 549
    .local v2, "minimumVelocity":F
    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v1, v7, p1

    .line 550
    .local v1, "maximumVelocity":F
    mul-float v5, v4, p4

    .line 555
    .local v5, "targetVelocity":F
    cmpl-float v7, v6, v8

    if-lez v7, :cond_5a

    .line 556
    mul-float v7, v6, v5

    invoke-static {v7, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    goto :goto_33

    .line 558
    :cond_5a
    neg-float v7, v6

    mul-float/2addr v7, v5

    invoke-static {v7, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    neg-float v7, v7

    goto :goto_33
.end method

.method private static constrain(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 663
    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    .line 668
    .end local p2    # "max":F
    :goto_4
    return p2

    .line 665
    .restart local p2    # "max":F
    :cond_5
    cmpg-float v0, p0, p1

    if-gez v0, :cond_b

    move p2, p1

    .line 666
    goto :goto_4

    :cond_b
    move p2, p0

    .line 668
    goto :goto_4
.end method

.method private constrainEdgeValue(FF)F
    .registers 7
    .param p1, "current"    # F
    .param p2, "leading"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 624
    cmpl-float v2, p2, v0

    if-nez v2, :cond_8

    .line 649
    :cond_7
    :goto_7
    return v0

    .line 628
    :cond_8
    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v2, :pswitch_data_2e

    goto :goto_7

    .line 631
    :pswitch_e
    cmpg-float v2, p1, p2

    if-gez v2, :cond_7

    .line 632
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_1b

    .line 634
    div-float v0, p1, p2

    sub-float v0, v1, v0

    goto :goto_7

    .line 635
    :cond_1b
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move v0, v1

    .line 637
    goto :goto_7

    .line 642
    :pswitch_26
    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    .line 644
    neg-float v0, p2

    div-float v0, p1, v0

    goto :goto_7

    .line 628
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_26
    .end packed-switch
.end method

.method private requestStop()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_8

    .line 531
    iput-boolean v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 535
    :goto_7
    return-void

    .line 533
    :cond_8
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 7775
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 7776
    iget-wide v6, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v6, v4, v6

    long-to-int v2, v6

    iget v0, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    .line 8653
    if-le v2, v0, :cond_22

    .line 7776
    :goto_17
    iput v0, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 7777
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v0

    iput v0, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 7778
    iput-wide v4, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    goto :goto_7

    .line 8655
    :cond_22
    if-gez v2, :cond_26

    move v0, v1

    .line 8656
    goto :goto_17

    :cond_26
    move v0, v2

    .line 8658
    goto :goto_17
.end method

.method private shouldAnimate()Z
    .registers 6

    .prologue
    .line 492
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 5848
    .local v1, "scroller":Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    iget v3, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    iget v4, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 6844
    .local v2, "verticalDirection":I
    iget v3, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    iget v4, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 496
    .local v0, "horizontalDirection":I
    if-eqz v2, :cond_1e

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_1e
    if-eqz v0, :cond_20

    .line 497
    :cond_20
    const/4 v3, 0x0

    :goto_21
    return v3

    :cond_22
    const/4 v3, 0x1

    goto :goto_21
.end method


# virtual methods
.method public abstract canTargetScrollVertically(I)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 456
    iget-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-nez v4, :cond_7

    .line 485
    :cond_6
    :goto_6
    return v2

    .line 460
    :cond_7
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    .line 461
    packed-switch v4, :pswitch_data_82

    .line 485
    :cond_e
    :goto_e
    iget-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v4, :cond_6

    move v2, v3

    goto :goto_6

    .line 463
    :pswitch_18
    iput-boolean v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 464
    iput-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 468
    :pswitch_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 467
    invoke-direct {p0, v2, v4, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v0

    .line 470
    .local v0, "xTargetVelocity":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 469
    invoke-direct {p0, v3, v4, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v1

    .line 471
    .local v1, "yTargetVelocity":F
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 4839
    iput v0, v4, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    .line 4840
    iput v1, v4, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 475
    iget-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v4, :cond_e

    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5504
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v4, :cond_5f

    .line 5505
    new-instance v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-direct {v4, p0, v2}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;B)V

    iput-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    .line 5508
    :cond_5f
    iput-boolean v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 5509
    iput-boolean v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 5511
    iget-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v4, :cond_78

    iget v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v4, :cond_78

    .line 5512
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    iget v6, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 5519
    :goto_75
    iput-boolean v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    goto :goto_e

    .line 5514
    :cond_78
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_75

    .line 481
    .end local v0    # "xTargetVelocity":F
    .end local v1    # "yTargetVelocity":F
    :pswitch_7e
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    goto :goto_e

    .line 461
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_18
        :pswitch_7e
        :pswitch_1c
        :pswitch_7e
    .end packed-switch
.end method

.method public abstract scrollTargetBy$255f295(I)V
.end method

.method public final setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 236
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    .line 239
    :cond_9
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    .line 240
    return-object p0
.end method
