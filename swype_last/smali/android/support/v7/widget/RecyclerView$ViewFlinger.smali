.class final Landroid/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mLastFlingX:I

.field mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4322
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4313
    # getter for: Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$3000()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4317
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4320
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4323
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$3000()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 4324
    return-void
.end method


# virtual methods
.method final postOnAnimation()V
    .registers 2

    .prologue
    .line 4454
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_8

    .line 4455
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4460
    :goto_7
    return-void

    .line 4457
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4458
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_7
.end method

.method public final run()V
    .registers 24

    .prologue
    .line 4328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_12

    .line 4329
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    .line 4439
    :cond_11
    :goto_11
    return-void

    .line 10442
    :cond_12
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 10443
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    # invokes: Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V
    invoke-static/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->access$400(Landroid/support/v7/widget/RecyclerView;)V

    .line 4336
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 4337
    .local v12, "scroller":Landroid/support/v4/widget/ScrollerCompat;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 4338
    .local v13, "smoothScroller":Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v20

    if-eqz v20, :cond_239

    .line 4339
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v18

    .line 4340
    .local v18, "x":I
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v19

    .line 4341
    .local v19, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    move/from16 v20, v0

    sub-int v4, v18, v20

    .line 4342
    .local v4, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    .line 4343
    .local v5, "dy":I
    const/4 v9, 0x0

    .line 4344
    .local v9, "hresult":I
    const/16 v17, 0x0

    .line 4345
    .local v17, "vresult":I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4346
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 4347
    const/4 v10, 0x0

    .local v10, "overscrollX":I
    const/4 v11, 0x0

    .line 4348
    .local v11, "overscrollY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-static/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v20

    if-eqz v20, :cond_139

    .line 4349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 4350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    # invokes: Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V
    invoke-static/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->access$3200(Landroid/support/v7/widget/RecyclerView;)V

    .line 4351
    const-string/jumbo v20, "RV Scroll"

    invoke-static/range {v20 .. v20}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4352
    if-eqz v4, :cond_c4

    .line 4353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v9

    .line 4354
    sub-int v10, v4, v9

    .line 4356
    :cond_c4
    if-eqz v5, :cond_f6

    .line 4357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v17

    .line 4358
    sub-int v11, v5, v17

    .line 4360
    :cond_f6
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    # invokes: Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V
    invoke-static/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->access$3300(Landroid/support/v7/widget/RecyclerView;)V

    .line 4363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    # invokes: Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V
    invoke-static/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->access$3400(Landroid/support/v7/widget/RecyclerView;)V

    .line 4364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 4366
    if-eqz v13, :cond_139

    .line 11037
    iget-boolean v0, v13, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    move/from16 v20, v0

    .line 4366
    if-nez v20, :cond_139

    .line 11045
    iget-boolean v0, v13, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    move/from16 v20, v0

    .line 4367
    if-eqz v20, :cond_139

    .line 4368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    .line 4369
    .local v3, "adapterSize":I
    if-nez v3, :cond_26c

    .line 4370
    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 4379
    .end local v3    # "adapterSize":I
    :cond_139
    :goto_139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    # getter for: Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->access$3600(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_152

    .line 4380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4382
    :cond_152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_16f

    .line 4384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V
    invoke-static {v0, v4, v5}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4386
    :cond_16f
    if-nez v10, :cond_173

    if-eqz v11, :cond_1c7

    .line 4387
    :cond_173
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-int v14, v0

    .line 4389
    .local v14, "vel":I
    const/4 v15, 0x0

    .line 4390
    .local v15, "velX":I
    move/from16 v0, v18

    if-eq v10, v0, :cond_182

    .line 4391
    if-gez v10, :cond_287

    neg-int v15, v14

    .line 4394
    :cond_182
    :goto_182
    const/16 v16, 0x0

    .line 4395
    .local v16, "velY":I
    move/from16 v0, v19

    if-eq v11, v0, :cond_18d

    .line 4396
    if-gez v11, :cond_28f

    neg-int v0, v14

    move/from16 v16, v0

    .line 4399
    :cond_18d
    :goto_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1ac

    .line 4401
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    .line 4403
    :cond_1ac
    if-nez v15, :cond_1b8

    move/from16 v0, v18

    if-eq v10, v0, :cond_1b8

    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v20

    if-nez v20, :cond_1c7

    :cond_1b8
    if-nez v16, :cond_1c4

    move/from16 v0, v19

    if-eq v11, v0, :cond_1c4

    .line 4404
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v20

    if-nez v20, :cond_1c7

    .line 4405
    :cond_1c4
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 4408
    .end local v14    # "vel":I
    .end local v15    # "velX":I
    .end local v16    # "velY":I
    :cond_1c7
    if-nez v9, :cond_1cb

    if-eqz v17, :cond_1d8

    .line 4409
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4412
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    # invokes: Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z
    invoke-static/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->access$3800(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v20

    if-nez v20, :cond_1ed

    .line 4413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4416
    :cond_1ed
    if-eqz v5, :cond_299

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v20

    if-eqz v20, :cond_299

    move/from16 v0, v17

    if-ne v0, v5, :cond_299

    const/4 v8, 0x1

    .line 4418
    .local v8, "fullyConsumedVertical":Z
    :goto_206
    if-eqz v4, :cond_29c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v20

    if-eqz v20, :cond_29c

    if-ne v9, v4, :cond_29c

    const/4 v7, 0x1

    .line 4420
    .local v7, "fullyConsumedHorizontal":Z
    :goto_21d
    if-nez v4, :cond_221

    if-eqz v5, :cond_225

    :cond_221
    if-nez v7, :cond_225

    if-eqz v8, :cond_29e

    :cond_225
    const/4 v6, 0x1

    .line 4423
    .local v6, "fullyConsumedAny":Z
    :goto_226
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v20

    if-nez v20, :cond_22e

    if-nez v6, :cond_2a0

    .line 4424
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # invokes: Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V
    invoke-static/range {v20 .. v21}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4430
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "fullyConsumedAny":Z
    .end local v7    # "fullyConsumedHorizontal":Z
    .end local v8    # "fullyConsumedVertical":Z
    .end local v9    # "hresult":I
    .end local v10    # "overscrollX":I
    .end local v11    # "overscrollY":I
    .end local v17    # "vresult":I
    .end local v18    # "x":I
    .end local v19    # "y":I
    :cond_239
    :goto_239
    if-eqz v13, :cond_257

    .line 12037
    iget-boolean v0, v13, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    move/from16 v20, v0

    .line 4431
    if-eqz v20, :cond_24c

    .line 4432
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$3500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 4434
    :cond_24c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    move/from16 v20, v0

    if-nez v20, :cond_257

    .line 4435
    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 12447
    :cond_257
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 12448
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 12449
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto/16 :goto_11

    .line 11055
    .restart local v3    # "adapterSize":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v9    # "hresult":I
    .restart local v10    # "overscrollX":I
    .restart local v11    # "overscrollY":I
    .restart local v17    # "vresult":I
    .restart local v18    # "x":I
    .restart local v19    # "y":I
    :cond_26c
    iget v0, v13, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    move/from16 v20, v0

    .line 4371
    move/from16 v0, v20

    if-lt v0, v3, :cond_27a

    .line 4372
    add-int/lit8 v20, v3, -0x1

    .line 11994
    move/from16 v0, v20

    iput v0, v13, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 4375
    :cond_27a
    sub-int v20, v4, v10

    sub-int v21, v5, v11

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$3500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_139

    .line 4391
    .end local v3    # "adapterSize":I
    .restart local v14    # "vel":I
    .restart local v15    # "velX":I
    :cond_287
    if-lez v10, :cond_28c

    move v15, v14

    goto/16 :goto_182

    :cond_28c
    const/4 v15, 0x0

    goto/16 :goto_182

    .line 4396
    .restart local v16    # "velY":I
    :cond_28f
    if-lez v11, :cond_295

    move/from16 v16, v14

    goto/16 :goto_18d

    :cond_295
    const/16 v16, 0x0

    goto/16 :goto_18d

    .line 4416
    .end local v14    # "vel":I
    .end local v15    # "velX":I
    .end local v16    # "velY":I
    :cond_299
    const/4 v8, 0x0

    goto/16 :goto_206

    .line 4418
    .restart local v8    # "fullyConsumedVertical":Z
    :cond_29c
    const/4 v7, 0x0

    goto :goto_21d

    .line 4420
    .restart local v7    # "fullyConsumedHorizontal":Z
    :cond_29e
    const/4 v6, 0x0

    goto :goto_226

    .line 4426
    .restart local v6    # "fullyConsumedAny":Z
    :cond_2a0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_239
.end method

.method public final smoothScrollBy(II)V
    .registers 16
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 4471
    .line 12485
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 12486
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 12487
    if-le v2, v3, :cond_62

    const/4 v0, 0x1

    .line 12488
    :goto_d
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 12489
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 12490
    if-eqz v0, :cond_64

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 12491
    :goto_27
    div-int/lit8 v6, v1, 0x2

    .line 12492
    int-to-float v5, v5

    mul-float/2addr v5, v12

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 12493
    int-to-float v7, v6

    int-to-float v6, v6

    .line 13479
    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v5, v8

    .line 13480
    float-to-double v8, v5

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v5, v8

    .line 13481
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 12494
    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 12497
    if-lez v4, :cond_6b

    .line 12498
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 12503
    :goto_58
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 12475
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 4472
    return-void

    .line 12487
    :cond_62
    const/4 v0, 0x0

    goto :goto_d

    .line 12490
    :cond_64
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_27

    .line 12500
    :cond_6b
    if-eqz v0, :cond_77

    move v0, v2

    :goto_6e
    int-to-float v0, v0

    .line 12501
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v12

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_58

    :cond_77
    move v0, v3

    .line 12500
    goto :goto_6e
.end method

.method public final smoothScrollBy(III)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 4507
    # getter for: Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$3000()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 4508
    return-void
.end method

.method public final smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .registers 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 4511
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_13

    .line 4512
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4513
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 4515
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    # invokes: Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V
    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4516
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4517
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 4518
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4519
    return-void
.end method

.method public final stop()V
    .registers 2

    .prologue
    .line 4522
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4523
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 4524
    return-void
.end method
