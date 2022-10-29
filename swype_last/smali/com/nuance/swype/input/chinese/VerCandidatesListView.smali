.class public Lcom/nuance/swype/input/chinese/VerCandidatesListView;
.super Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
.source "VerCandidatesListView.java"


# instance fields
.field protected CANDIDATES_NUM_PER_COLUMN:I

.field private isSpellPrefix:Z

.field protected mContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

.field private mHighlightPrefix:Z

.field private mKeyboradHeight:I

.field protected mWordHeight:[I

.field protected mWordY:[I

.field private rectBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->CANDIDATES_NUM_PER_COLUMN:I

    .line 32
    sget v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->MAX_SUGGESTIONS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    .line 33
    sget v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->MAX_SUGGESTIONS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mHighlightPrefix:Z

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->rectBounds:Landroid/graphics/Rect;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/VerCandidatesListView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->needMoreWords()Z

    move-result v0

    return v0
.end method

.method private needMoreWords()Z
    .registers 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    .line 587
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private scrollToTarget()V
    .registers 15

    .prologue
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 410
    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-le v2, v3, :cond_40

    .line 411
    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 412
    .local v0, "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v2

    .line 414
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v3, v4

    add-int/2addr v2, v3

    .line 412
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 415
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    if-lt v2, v3, :cond_3c

    .line 416
    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 417
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->requestLayout()V

    .line 429
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->invalidate()V

    .line 430
    return-void

    .line 420
    .end local v0    # "dist":D
    :cond_40
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 421
    .restart local v0    # "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v2

    .line 423
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v3, v4

    sub-int/2addr v2, v3

    .line 421
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 424
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    if-gt v2, v3, :cond_3c

    .line 425
    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 426
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->requestLayout()V

    goto :goto_3c
.end method

.method private setTypeFace(Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardFontBold()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 617
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 621
    :goto_17
    return-void

    .line 619
    :cond_18
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_17
.end method

.method private slide()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    int-to-float v2, v3

    .line 364
    .local v2, "oldY":F
    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 369
    .local v0, "maxScroll":I
    iget v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 373
    .local v1, "oldV":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    iget v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    mul-float/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->pull(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 374
    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    iget v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 376
    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3a

    .line 377
    iput v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 381
    :cond_3a
    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    mul-float/2addr v3, v1

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4d

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-ltz v3, :cond_4d

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-le v3, v0, :cond_62

    :cond_4d
    cmpg-float v3, v2, v5

    if-gez v3, :cond_57

    .line 382
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-gez v3, :cond_62

    :cond_57
    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_73

    .line 383
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-gt v3, v0, :cond_73

    .line 384
    :cond_62
    iput v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 385
    iput v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    .line 386
    cmpg-float v3, v2, v5

    if-gez v3, :cond_8b

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-ltz v3, :cond_8b

    .line 387
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 393
    :cond_73
    :goto_73
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    .line 394
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->requestLayout()V

    .line 396
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->needMoreWords()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 397
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    invoke-interface {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 402
    :cond_87
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->invalidate()V

    .line 403
    return-void

    .line 388
    :cond_8b
    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_73

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-gt v3, v0, :cond_73

    .line 389
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    goto :goto_73
.end method


# virtual methods
.method protected calcAccel()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 286
    iget v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    cmpl-float v5, v4, v5

    if-nez v5, :cond_42

    move v2, v4

    .line 287
    .local v2, "vUnitVect":F
    :goto_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v5

    int-to-float v3, v5

    .line 288
    .local v3, "y":F
    iget v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 292
    .local v0, "maxScroll":I
    cmpg-float v5, v3, v4

    if-ltz v5, :cond_22

    int-to-float v5, v0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_62

    .line 293
    :cond_22
    cmpg-float v5, v3, v4

    if-gez v5, :cond_4d

    move v1, v3

    .line 296
    .local v1, "oobDist":F
    :goto_27
    mul-float v5, v2, v1

    cmpl-float v5, v5, v4

    if-lez v5, :cond_51

    .line 297
    const v4, -0x445c28f6    # -0.005f

    mul-float/2addr v4, v2

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    .line 298
    iget v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    const/high16 v5, -0x3ee00000    # -10.0f

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p0, v4, v5, v6}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->bound(FFF)F

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    .line 320
    .end local v1    # "oobDist":F
    :goto_41
    return-void

    .line 286
    .end local v0    # "maxScroll":I
    .end local v2    # "vUnitVect":F
    .end local v3    # "y":F
    :cond_42
    iget v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    iget v6, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v2, v5, v6

    goto :goto_9

    .line 293
    .restart local v0    # "maxScroll":I
    .restart local v2    # "vUnitVect":F
    .restart local v3    # "y":F
    :cond_4d
    int-to-float v5, v0

    sub-float v1, v3, v5

    goto :goto_27

    .line 302
    .restart local v1    # "oobDist":F
    :cond_51
    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    .line 303
    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 304
    cmpg-float v4, v1, v4

    if-gez v4, :cond_5f

    .line 305
    iput v7, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    .line 309
    :goto_5b
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->invalidate()V

    goto :goto_41

    .line 307
    :cond_5f
    iput v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    goto :goto_5b

    .line 313
    .end local v1    # "oobDist":F
    :cond_62
    iget v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_6f

    .line 314
    const v4, -0x40e66666    # -0.6f

    mul-float/2addr v4, v2

    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    goto :goto_41

    .line 316
    :cond_6f
    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    goto :goto_41
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 504
    invoke-super {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 505
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 506
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 507
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 509
    return-void
.end method

.method public computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    return v0
.end method

.method public disablePrefixHighlight()V
    .registers 2

    .prologue
    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mHighlightPrefix:Z

    .line 612
    return-void
.end method

.method public enablePrefixHighlight()V
    .registers 2

    .prologue
    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mHighlightPrefix:Z

    .line 608
    return-void
.end method

.method public init()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 53
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v1, Lcom/nuance/swype/input/R$attr;->keyboardSuggestVerStripDivider:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 54
    sget v1, Lcom/nuance/swype/input/R$attr;->listSelectorBackgroundPressed:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 62
    const/4 v1, 0x4

    iput v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->CANDIDATES_NUM_PER_COLUMN:I

    .line 64
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mEnableHighlight:Z

    .line 66
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorNormal:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTextSizeInit:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDescent:I

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    .line 74
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;-><init>(Lcom/nuance/swype/input/chinese/VerCandidatesListView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 97
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 98
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 99
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 100
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setWillNotDraw(Z)V

    .line 101
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setHorizontalScrollBarEnabled(Z)V

    .line 102
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setVerticalScrollBarEnabled(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->clear()V

    .line 104
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    .line 140
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 141
    .local v7, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->isSpellPrefix:Z

    if-eqz v1, :cond_2d

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTextSizeInit:I

    mul-int/lit8 v3, v3, 0x4b

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 146
    :goto_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-nez v1, :cond_3a

    .line 280
    :cond_2c
    :goto_2c
    return-void

    .line 144
    :cond_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTextSizeInit:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_20

    .line 151
    :cond_3a
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mKeyboradHeight:I

    .line 152
    .local v9, "height":I
    if-nez v9, :cond_48

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->getHeight()I

    move-result v9

    .line 155
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getWidth()I

    move-result v18

    .line 157
    .local v18, "width":I
    if-eqz v9, :cond_2c

    if-eqz v18, :cond_2c

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    .line 163
    .local v14, "size":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    .line 165
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    .line 163
    move/from16 v0, v21

    invoke-virtual {v1, v3, v4, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    if-eqz v14, :cond_2c

    .line 172
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->CANDIDATES_NUM_PER_COLUMN:I

    div-int v11, v9, v1

    .line 173
    .local v11, "offset":I
    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v3

    float-to-int v3, v3

    add-int v16, v1, v3

    .line 175
    .local v16, "textH":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getTop()I

    move-result v1

    add-int/2addr v1, v11

    add-int v20, v1, v16

    .line 176
    .local v20, "y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 177
    .local v8, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchY:I

    move/from16 v17, v0

    .line 178
    .local v17, "touchY":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v12

    .line 179
    .local v12, "scrollY":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mScrolled:Z

    .line 182
    .local v13, "scrolled":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a3
    if-ge v10, v8, :cond_22e

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 185
    .local v2, "suggestion":Ljava/lang/CharSequence;
    if-eqz v2, :cond_b7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_22a

    .line 189
    :cond_b7
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 191
    if-eqz v2, :cond_17d

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v3, 0x9fff

    if-ne v1, v3, :cond_17d

    .line 192
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x7e

    if-eq v1, v3, :cond_22a

    .line 195
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 196
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorComponent:I

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    :goto_db
    if-eqz v2, :cond_22e

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    aget v1, v1, v10

    if-eqz v1, :cond_1b7

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    aget v19, v1, v10

    .line 218
    .local v19, "wordHeight":I
    :goto_eb
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    div-int/lit8 v3, v19, 0x3

    add-int v3, v3, v20

    aput v3, v1, v10

    .line 220
    add-int v1, v17, v12

    mul-int/lit8 v3, v19, 0x2

    div-int/lit8 v3, v3, 0x3

    sub-int v3, v20, v3

    if-lt v1, v3, :cond_1c1

    add-int v1, v17, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v3, v3, v10

    if-ge v1, v3, :cond_1c1

    if-nez v13, :cond_1c1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchY:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1c1

    const/4 v1, 0x1

    .line 223
    :goto_113
    if-eqz v1, :cond_157

    .line 224
    if-eqz p1, :cond_153

    .line 225
    const/4 v1, 0x0

    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    mul-int/lit8 v4, v19, 0x3

    div-int/lit8 v4, v4, -0x5

    div-int/lit8 v6, v19, 0x3

    move/from16 v0, v18

    invoke-virtual {v1, v3, v4, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 229
    const/4 v1, 0x0

    move/from16 v0, v20

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorPressed:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setTypeFace(Landroid/graphics/Paint;)V

    .line 234
    :cond_153
    move-object/from16 v0, p0

    iput v10, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchIndex:I

    .line 237
    :cond_157
    if-eqz p1, :cond_225

    .line 238
    instance-of v1, v2, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_1c4

    move-object v1, v2

    .line 239
    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 240
    const/4 v3, 0x0

    .line 242
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v6, Landroid/text/style/ForegroundColorSpan;

    .line 240
    invoke-virtual {v1, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_16f
    if-ge v3, v4, :cond_1c4

    aget-object v15, v1, v3

    .line 244
    .local v15, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v15}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_16f

    .line 197
    .end local v15    # "span":Landroid/text/style/ForegroundColorSpan;
    .end local v19    # "wordHeight":I
    :cond_17d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedIndex:I

    if-ne v1, v10, :cond_19d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mEnableHighlight:Z

    if-eqz v1, :cond_19d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mHighlightPrefix:Z

    if-eqz v1, :cond_19d

    .line 198
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setTypeFace(Landroid/graphics/Paint;)V

    .line 199
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorRecommended:I

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_db

    .line 200
    :cond_19d
    if-nez v10, :cond_1ae

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mEnableHighlight:Z

    if-eqz v1, :cond_1ae

    .line 201
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorNormal:I

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_db

    .line 203
    :cond_1ae
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorOther:I

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_db

    .line 214
    :cond_1b7
    move/from16 v19, v11

    .line 215
    .restart local v19    # "wordHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    aput v19, v1, v10

    goto/16 :goto_eb

    .line 220
    :cond_1c1
    const/4 v1, 0x0

    goto/16 :goto_113

    .line 248
    :cond_1c4
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->rectBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v3, v4, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->rectBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, v18, v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->rectBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v5, v1, v3

    .line 251
    .local v5, "x":F
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move/from16 v0, v20

    int-to-float v6, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 252
    add-int v20, v20, v19

    .line 254
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v3, v3, v10

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v3, v3, v10

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorOther:I

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    .end local v5    # "x":F
    :cond_225
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setTypeFace(Landroid/graphics/Paint;)V

    .line 182
    .end local v19    # "wordHeight":I
    :cond_22a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a3

    .line 261
    .end local v2    # "suggestion":Ljava/lang/CharSequence;
    :cond_22e
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getTop()I

    move-result v1

    add-int v1, v1, v20

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    .line 262
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-eq v1, v3, :cond_245

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToTarget()V

    .line 272
    :cond_245
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mMouseDown:Z

    if-nez v1, :cond_263

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->calcAccel()V

    .line 274
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_260

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_263

    .line 275
    :cond_260
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->slide()V

    .line 279
    :cond_263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->requestLayout()V

    goto/16 :goto_2c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 532
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 580
    :cond_c
    :goto_c
    return v5

    .line 536
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 537
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v1, v2

    .line 538
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchY:I

    .line 539
    iput v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchX:I

    .line 541
    packed-switch v0, :pswitch_data_86

    goto :goto_c

    .line 543
    :pswitch_23
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mMouseDown:Z

    .line 544
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDragSelected:Z

    .line 546
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->flush()V

    .line 547
    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    .line 548
    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 549
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mScrolled:Z

    .line 550
    iput v6, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchIndex:I

    .line 551
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->invalidate()V

    goto :goto_c

    .line 554
    :pswitch_38
    if-gtz v1, :cond_c

    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDragSelected:Z

    if-nez v2, :cond_c

    .line 556
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDragSelected:Z

    goto :goto_c

    .line 560
    :pswitch_41
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mMouseDown:Z

    .line 561
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDragSelected:Z

    .line 563
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->isFlushed()Z

    move-result v2

    if-nez v2, :cond_56

    .line 564
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->get()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setVelocity(F)V

    .line 566
    :cond_56
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mScrolled:Z

    if-nez v2, :cond_82

    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchIndex:I

    if-eq v2, v6, :cond_82

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    .line 568
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_82

    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchIndex:I

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    .line 569
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_82

    .line 570
    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    iget v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchIndex:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3, v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 571
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->trySelect()V

    .line 573
    :cond_82
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->removeHighlight()V

    goto :goto_c

    .line 541
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_23
        :pswitch_41
        :pswitch_38
    .end packed-switch
.end method

.method protected pull(F)F
    .registers 16
    .param p1, "dist"    # F

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v7

    int-to-float v6, v7

    .line 324
    .local v6, "y":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v0

    .line 325
    .local v0, "height":I
    const/4 v7, 0x0

    iget v8, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    sub-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 328
    .local v2, "maxScroll":I
    int-to-float v7, v0

    const/high16 v8, 0x40800000    # 4.0f

    div-float v1, v7, v8

    .line 330
    .local v1, "maxPullDist":F
    cmpg-float v7, v6, v12

    if-gez v7, :cond_4f

    .line 331
    move v3, v6

    .line 338
    .local v3, "oobDist":F
    :goto_1e
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 340
    .local v4, "pinnedOobDist":F
    mul-float v7, v4, v4

    mul-float v8, v1, v1

    div-float/2addr v7, v8

    sub-float v7, v13, v7

    float-to-double v8, v7

    const-wide v10, 0x3fe999999999999aL    # 0.8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    .line 342
    mul-float v5, v7, p1

    .line 345
    .local v5, "ret":F
    mul-float v7, p1, v3

    cmpg-float v7, v7, v12

    if-gez v7, :cond_4e

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v13

    if-gez v7, :cond_4e

    .line 347
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v5, p1, v7

    .line 353
    :cond_4e
    return v5

    .line 332
    .end local v3    # "oobDist":F
    .end local v4    # "pinnedOobDist":F
    .end local v5    # "ret":F
    :cond_4f
    int-to-float v7, v2

    cmpl-float v7, v6, v7

    if-lez v7, :cond_58

    .line 333
    int-to-float v7, v2

    sub-float v3, v6, v7

    .restart local v3    # "oobDist":F
    goto :goto_1e

    .line 335
    .end local v3    # "oobDist":F
    :cond_58
    const/4 v3, 0x0

    .restart local v3    # "oobDist":F
    goto :goto_1e
.end method

.method public scrollNext()V
    .registers 8

    .prologue
    .line 463
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v4, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 464
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v4, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 486
    :goto_d
    return-void

    .line 466
    :cond_e
    const/4 v1, 0x0

    .line 467
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    .line 468
    .local v3, "targetY":I
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 469
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v5

    add-int v2, v4, v5

    .line 470
    .local v2, "rightEdge":I
    :goto_23
    if-ge v1, v0, :cond_45

    .line 471
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v1

    if-gt v4, v2, :cond_50

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    if-lt v4, v2, :cond_50

    .line 473
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 479
    :cond_45
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v4

    if-gt v3, v4, :cond_4c

    .line 480
    move v3, v2

    .line 483
    :cond_4c
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->updateScrollPosition(I)V

    goto :goto_d

    .line 476
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_23
.end method

.method public scrollPrev()V
    .registers 8

    .prologue
    .line 433
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v4, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 434
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v4, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 460
    :goto_d
    return-void

    .line 436
    :cond_e
    const/4 v2, 0x0

    .line 437
    .local v2, "i":I
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 438
    .local v0, "count":I
    const/4 v1, 0x0

    .line 440
    .local v1, "firstItem":I
    :goto_16
    if-ge v2, v0, :cond_34

    .line 441
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v5

    if-ge v4, v5, :cond_5e

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    aget v5, v5, v2

    add-int/2addr v4, v5

    .line 442
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_5e

    .line 443
    move v1, v2

    .line 448
    :cond_34
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    .line 449
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 450
    .local v3, "leftEdge":I
    if-gez v3, :cond_46

    .line 451
    const/4 v3, 0x0

    .line 454
    :cond_46
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v4

    if-lt v3, v4, :cond_5a

    .line 455
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 457
    :cond_5a
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->updateScrollPosition(I)V

    goto :goto_d

    .line 446
    .end local v3    # "leftEdge":I
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method protected scrollToY(I)V
    .registers 3
    .param p1, "newScrollY"    # I

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollTo(II)V

    .line 593
    return-void
.end method

.method public selectActiveWord()V
    .registers 5

    .prologue
    .line 512
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedIndex:I

    if-ltz v0, :cond_1a

    .line 513
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedIndex:I

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedIndex:I

    .line 514
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 513
    invoke-interface {v1, v2, v0, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 518
    :goto_19
    return-void

    .line 516
    :cond_1a
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->trySelect()V

    goto :goto_19
.end method

.method public setContainer(Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;)V
    .registers 2
    .param p1, "container"    # Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    .line 118
    return-void
.end method

.method public setKeyboardHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 603
    iput p1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mKeyboradHeight:I

    .line 604
    return-void
.end method

.method public setOnWordSelectActionVerListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    .line 114
    return-void
.end method

.method public setSpellPrefix(Z)V
    .registers 2
    .param p1, "prefix"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->isSpellPrefix:Z

    .line 131
    return-void
.end method

.method protected trySelect()V
    .registers 4

    .prologue
    .line 521
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 522
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 525
    :cond_d
    iget v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedIndex:I

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 526
    return-void
.end method

.method public updateCandidatesSize()V
    .registers 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_f

    .line 597
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getCandidateSize()V

    .line 598
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTextSizeInit:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 600
    :cond_f
    return-void
.end method

.method public updateScrollPosition(I)V
    .registers 3
    .param p1, "targetY"    # I

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v0

    if-eq p1, v0, :cond_19

    .line 490
    iput p1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    .line 491
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->needMoreWords()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 492
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    invoke-interface {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 496
    :cond_13
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->invalidate()V

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mScrolled:Z

    .line 501
    :cond_19
    return-void
.end method
