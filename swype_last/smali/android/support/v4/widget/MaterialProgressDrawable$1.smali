.class final Landroid/support/v4/widget/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

.field final synthetic val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v4/widget/MaterialProgressDrawable;

    .prologue
    .line 364
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 17
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 367
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-boolean v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v10, :cond_c

    .line 368
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-static {p1, v10}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$000$7dc75d4f(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 414
    :goto_b
    return-void

    .line 372
    :cond_c
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    # invokes: Landroid/support/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F
    invoke-static {v10}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$100$6f9943cf(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v3

    .line 373
    .local v3, "minProgressArc":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 1682
    iget v7, v10, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 374
    .local v7, "startingEndTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 2678
    iget v9, v10, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 375
    .local v9, "startingTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 2763
    iget v8, v10, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 377
    .local v8, "startingRotation":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    # invokes: Landroid/support/v4/widget/MaterialProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    invoke-static {p1, v10}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$200$7dc75d4f(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 381
    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v10, p1, v10

    if-gtz v10, :cond_41

    .line 385
    const/high16 v10, 0x3f000000    # 0.5f

    div-float v5, p1, v10

    .line 387
    .local v5, "scaledTime":F
    const v10, 0x3f4ccccd    # 0.8f

    sub-float/2addr v10, v3

    .line 388
    # getter for: Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v11

    .line 389
    invoke-interface {v11, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 390
    .local v6, "startTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v6}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 395
    .end local v5    # "scaledTime":F
    .end local v6    # "startTrim":F
    :cond_41
    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v10, p1, v10

    if-lez v10, :cond_64

    .line 399
    const v10, 0x3f4ccccd    # 0.8f

    sub-float v2, v10, v3

    .line 400
    .local v2, "minArc":F
    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v10, p1, v10

    const/high16 v11, 0x3f000000    # 0.5f

    div-float v5, v10, v11

    .line 403
    .restart local v5    # "scaledTime":F
    # getter for: Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v10, v2

    add-float v0, v7, v10

    .line 404
    .local v0, "endTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 407
    .end local v0    # "endTrim":F
    .end local v2    # "minArc":F
    .end local v5    # "scaledTime":F
    :cond_64
    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v10, p1

    add-float v4, v8, v10

    .line 408
    .local v4, "rotation":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 410
    const/high16 v10, 0x43580000    # 216.0f

    mul-float/2addr v10, p1

    const/high16 v11, 0x44870000    # 1080.0f

    iget-object v12, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    .line 411
    # getter for: Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v12}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$400(Landroid/support/v4/widget/MaterialProgressDrawable;)F

    move-result v12

    const/high16 v13, 0x40a00000    # 5.0f

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    add-float v1, v10, v11

    .line 412
    .local v1, "groupRotation":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v10, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    goto :goto_b
.end method
