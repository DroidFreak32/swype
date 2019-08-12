.class public Lcom/nuance/swype/input/chinese/VerCandidatesListView;
.super Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
.source "VerCandidatesListView.java"


# static fields
.field private static final VERTICAL_ADJUST_FOR_TABLET:I = 0xa


# instance fields
.field protected CANDIDATES_NUM_PER_COLUMN:I

.field private isSpellPrefix:Z

.field protected mContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

.field private mHighlightPrefix:Z

.field private mKeyboradHeight:I

.field protected mWordHeight:[I

.field protected mWordY:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
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

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/VerCandidatesListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->needMoreWords()Z

    move-result v0

    return v0
.end method

.method private needMoreWords()Z
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollToTarget()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 416
    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 417
    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 418
    .local v0, "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 421
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    if-lt v2, v3, :cond_0

    .line 422
    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 423
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->requestLayout()V

    .line 435
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->invalidate()V

    .line 436
    return-void

    .line 426
    .end local v0    # "dist":D
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 427
    .restart local v0    # "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 430
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    if-gt v2, v3, :cond_0

    .line 431
    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 432
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->requestLayout()V

    goto :goto_0
.end method

.method private setTypeFace(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardFontBold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private slide()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    int-to-float v2, v3

    .line 370
    .local v2, "oldY":F
    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 374
    .local v0, "maxScroll":I
    iget v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 379
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

    .line 380
    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    iget v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 382
    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    .line 383
    iput v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 387
    :cond_0
    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    mul-float/2addr v3, v1

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-le v3, v0, :cond_3

    :cond_1
    cmpg-float v3, v2, v5

    if-gez v3, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-gez v3, :cond_3

    :cond_2
    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-gt v3, v0, :cond_4

    .line 390
    :cond_3
    iput v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 391
    iput v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    .line 392
    cmpg-float v3, v2, v5

    if-gez v3, :cond_6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-ltz v3, :cond_6

    .line 393
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 399
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    .line 400
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->requestLayout()V

    .line 402
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->needMoreWords()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 403
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    invoke-interface {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 408
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->invalidate()V

    .line 409
    return-void

    .line 394
    :cond_6
    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    if-gt v3, v0, :cond_4

    .line 395
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    goto :goto_0
.end method

.method private tenInchTablet()Z
    .locals 4

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 613
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v2

    .line 615
    .local v1, "displayHeight":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->max_height_for_fullscreen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 617
    .local v0, "dimen":F
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_0

    .line 618
    const/4 v2, 0x1

    .line 620
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calcAccel()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 292
    iget v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    move v2, v4

    .line 293
    .local v2, "vUnitVect":F
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v5

    int-to-float v3, v5

    .line 294
    .local v3, "y":F
    iget v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 298
    .local v0, "maxScroll":I
    cmpg-float v5, v3, v4

    if-ltz v5, :cond_0

    int-to-float v5, v0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5

    .line 299
    :cond_0
    cmpg-float v5, v3, v4

    if-gez v5, :cond_2

    move v1, v3

    .line 302
    .local v1, "oobDist":F
    :goto_1
    mul-float v5, v2, v1

    cmpl-float v5, v5, v4

    if-lez v5, :cond_3

    .line 303
    const v4, -0x445c28f6    # -0.005f

    mul-float/2addr v4, v2

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    .line 304
    iget v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    const/high16 v5, -0x3ee00000    # -10.0f

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p0, v4, v5, v6}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->bound(FFF)F

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    .line 326
    .end local v1    # "oobDist":F
    :goto_2
    return-void

    .line 292
    .end local v0    # "maxScroll":I
    .end local v2    # "vUnitVect":F
    .end local v3    # "y":F
    :cond_1
    iget v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    iget v6, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v2, v5, v6

    goto :goto_0

    .line 299
    .restart local v0    # "maxScroll":I
    .restart local v2    # "vUnitVect":F
    .restart local v3    # "y":F
    :cond_2
    int-to-float v5, v0

    sub-float v1, v3, v5

    goto :goto_1

    .line 308
    .restart local v1    # "oobDist":F
    :cond_3
    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    .line 309
    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 310
    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    .line 311
    iput v7, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    .line 315
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->invalidate()V

    goto :goto_2

    .line 313
    :cond_4
    iput v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    goto :goto_3

    .line 319
    .end local v1    # "oobDist":F
    :cond_5
    iget v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_6

    .line 320
    const v4, -0x40e66666    # -0.6f

    mul-float/2addr v4, v2

    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    goto :goto_2

    .line 322
    :cond_6
    iput v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 522
    invoke-super {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 523
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 524
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 525
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 527
    return-void
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    return v0
.end method

.method public disablePrefixHighlight()V
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mHighlightPrefix:Z

    .line 640
    return-void
.end method

.method public enablePrefixHighlight()V
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mHighlightPrefix:Z

    .line 636
    return-void
.end method

.method public getChineseSymbolOffset(ILjava/lang/CharSequence;)I
    .locals 4
    .param p1, "wordWidth"    # I
    .param p2, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 515
    const-string v0, "\u3001"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u3002"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 518
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 51
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v1, Lcom/nuance/swype/input/R$attr;->keyboardSuggestVerStripDivider:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 52
    sget v1, Lcom/nuance/swype/input/R$attr;->listSelectorBackgroundPressed:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 60
    const/4 v1, 0x4

    iput v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->CANDIDATES_NUM_PER_COLUMN:I

    .line 62
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mEnableHighlight:Z

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorNormal:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTextSizeInit:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDescent:I

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    .line 72
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;-><init>(Lcom/nuance/swype/input/chinese/VerCandidatesListView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 95
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 97
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 98
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setWillNotDraw(Z)V

    .line 99
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setHorizontalScrollBarEnabled(Z)V

    .line 100
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setVerticalScrollBarEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->clear()V

    .line 102
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 137
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    .line 138
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 139
    .local v8, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->isSpellPrefix:Z

    if-eqz v2, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTextSizeInit:I

    mul-int/lit8 v4, v4, 0x4b

    div-int/lit8 v4, v4, 0x64

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-nez v2, :cond_2

    .line 286
    :cond_0
    :goto_1
    return-void

    .line 142
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTextSizeInit:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 149
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mKeyboradHeight:I

    .line 150
    .local v11, "height":I
    if-nez v11, :cond_3

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->getHeight()I

    move-result v11

    .line 153
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getWidth()I

    move-result v22

    .line 155
    .local v22, "width":I
    if-eqz v11, :cond_0

    if-eqz v22, :cond_0

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v18

    .line 161
    .local v18, "size":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    if-eqz v18, :cond_0

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->tenInchTablet()Z

    .line 172
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->CANDIDATES_NUM_PER_COLUMN:I

    div-int v15, v11, v2

    .line 176
    .local v15, "offset":I
    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v4

    float-to-int v4, v4

    add-int v20, v2, v4

    .line 178
    .local v20, "textH":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getTop()I

    move-result v2

    add-int/2addr v2, v15

    add-int v27, v2, v20

    .line 179
    .local v27, "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    .line 180
    .local v10, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchY:I

    move/from16 v21, v0

    .line 181
    .local v21, "touchY":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v16

    .line 182
    .local v16, "scrollY":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mScrolled:Z

    move/from16 v17, v0

    .line 185
    .local v17, "scrolled":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v10, :cond_f

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 188
    .local v3, "suggestion":Ljava/lang/CharSequence;
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_e

    .line 189
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 194
    if-eqz v3, :cond_7

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v4, 0x9fff

    if-ne v2, v4, :cond_7

    .line 195
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x7e

    if-eq v2, v4, :cond_e

    .line 196
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 199
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorComponent:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    :goto_3
    if-eqz v3, :cond_f

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    aget v2, v2, v12

    if-eqz v2, :cond_a

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    aget v23, v2, v12

    .line 221
    .local v23, "wordHeight":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    div-int/lit8 v4, v23, 0x3

    add-int v4, v4, v27

    aput v4, v2, v12

    .line 223
    add-int v2, v21, v16

    mul-int/lit8 v4, v23, 0x2

    div-int/lit8 v4, v4, 0x3

    sub-int v4, v27, v4

    if-lt v2, v4, :cond_b

    add-int v2, v21, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v12

    if-ge v2, v4, :cond_b

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchY:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_b

    const/4 v2, 0x1

    .line 226
    :goto_5
    if-eqz v2, :cond_6

    .line 227
    if-eqz p1, :cond_5

    .line 228
    const/4 v2, 0x0

    move/from16 v0, v27

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    mul-int/lit8 v5, v23, 0x3

    div-int/lit8 v5, v5, -0x5

    div-int/lit8 v6, v23, 0x3

    move/from16 v0, v22

    invoke-virtual {v2, v4, v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    const/4 v2, 0x0

    move/from16 v0, v27

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorPressed:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setTypeFace(Landroid/graphics/Paint;)V

    .line 237
    :cond_5
    move-object/from16 v0, p0

    iput v12, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchIndex:I

    .line 240
    :cond_6
    if-eqz p1, :cond_d

    .line 241
    instance-of v2, v3, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_c

    move-object v2, v3

    .line 242
    check-cast v2, Landroid/text/SpannableStringBuilder;

    .line 243
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/ForegroundColorSpan;

    .local v9, "arr$":[Landroid/text/style/ForegroundColorSpan;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_6
    if-ge v13, v14, :cond_c

    aget-object v19, v9, v13

    .line 247
    .local v19, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual/range {v19 .. v19}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 200
    .end local v9    # "arr$":[Landroid/text/style/ForegroundColorSpan;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v19    # "span":Landroid/text/style/ForegroundColorSpan;
    .end local v23    # "wordHeight":I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedIndex:I

    if-ne v2, v12, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mEnableHighlight:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mHighlightPrefix:Z

    if-eqz v2, :cond_8

    .line 201
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setTypeFace(Landroid/graphics/Paint;)V

    .line 202
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorRecommended:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 203
    :cond_8
    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mEnableHighlight:Z

    if-eqz v2, :cond_9

    .line 204
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorNormal:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 206
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 217
    :cond_a
    move/from16 v23, v15

    .line 218
    .restart local v23    # "wordHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    aput v23, v2, v12

    goto/16 :goto_4

    .line 223
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 251
    :cond_c
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v8, v3, v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    .line 252
    float-to-int v0, v2

    move/from16 v25, v0

    .line 254
    .local v25, "wordWidth":I
    sub-int v2, v22, v25

    div-int/lit8 v26, v2, 0x2

    .line 255
    .local v26, "x":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getChineseSymbolOffset(ILjava/lang/CharSequence;)I

    move-result v24

    .line 257
    .local v24, "wordOffset":I
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int v2, v26, v24

    int-to-float v6, v2

    move/from16 v0, v27

    int-to-float v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 258
    add-int v27, v27, v23

    .line 260
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v12

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v12

    neg-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 263
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    .end local v24    # "wordOffset":I
    .end local v25    # "wordWidth":I
    .end local v26    # "x":I
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setTypeFace(Landroid/graphics/Paint;)V

    .line 185
    .end local v23    # "wordHeight":I
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 267
    .end local v3    # "suggestion":Ljava/lang/CharSequence;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getTop()I

    move-result v2

    add-int v2, v2, v27

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    .line 268
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v4

    if-eq v2, v4, :cond_10

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToTarget()V

    .line 278
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mMouseDown:Z

    if-nez v2, :cond_12

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->calcAccel()V

    .line 280
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_11

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_12

    .line 281
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->slide()V

    .line 285
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->requestLayout()V

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 549
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 595
    :cond_0
    :goto_0
    return v6

    .line 553
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 554
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 555
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 556
    .local v2, "y":I
    iput v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchY:I

    .line 557
    iput v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchX:I

    .line 559
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 561
    :pswitch_0
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mMouseDown:Z

    .line 562
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDragSelected:Z

    .line 564
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->flush()V

    .line 565
    iput v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    .line 566
    iput v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 567
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mScrolled:Z

    .line 568
    iput v7, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchIndex:I

    .line 569
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->invalidate()V

    goto :goto_0

    .line 572
    :pswitch_1
    if-gtz v1, :cond_0

    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDragSelected:Z

    if-nez v3, :cond_0

    .line 574
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDragSelected:Z

    goto :goto_0

    .line 578
    :pswitch_2
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mMouseDown:Z

    .line 579
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mDragSelected:Z

    .line 581
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 582
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->get()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setVelocity(F)V

    .line 584
    :cond_2
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mScrolled:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchIndex:I

    if-eq v3, v7, :cond_3

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchIndex:I

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 588
    iget v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchIndex:I

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    iget v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTouchIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 589
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->trySelect()V

    .line 591
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->removeHighlight()V

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected pull(F)F
    .locals 14
    .param p1, "dist"    # F

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 329
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v7

    int-to-float v6, v7

    .line 330
    .local v6, "y":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v0

    .line 331
    .local v0, "height":I
    const/4 v7, 0x0

    iget v8, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    sub-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 334
    .local v2, "maxScroll":I
    int-to-float v7, v0

    const/high16 v8, 0x40800000    # 4.0f

    div-float v1, v7, v8

    .line 336
    .local v1, "maxPullDist":F
    cmpg-float v7, v6, v12

    if-gez v7, :cond_1

    .line 337
    move v3, v6

    .line 344
    .local v3, "oobDist":F
    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 346
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

    .line 348
    mul-float v5, v7, p1

    .line 351
    .local v5, "ret":F
    mul-float v7, p1, v3

    cmpg-float v7, v7, v12

    if-gez v7, :cond_0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v13

    if-gez v7, :cond_0

    .line 353
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v5, p1, v7

    .line 359
    :cond_0
    return v5

    .line 338
    .end local v3    # "oobDist":F
    .end local v4    # "pinnedOobDist":F
    .end local v5    # "ret":F
    :cond_1
    int-to-float v7, v2

    cmpl-float v7, v6, v7

    if-lez v7, :cond_2

    .line 339
    int-to-float v7, v2

    sub-float v3, v6, v7

    .restart local v3    # "oobDist":F
    goto :goto_0

    .line 341
    .end local v3    # "oobDist":F
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "oobDist":F
    goto :goto_0
.end method

.method public scrollNext()V
    .locals 7

    .prologue
    .line 469
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v4, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 470
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v4, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 492
    :goto_0
    return-void

    .line 472
    :cond_0
    const/4 v1, 0x0

    .line 473
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v3

    .line 474
    .local v3, "targetY":I
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 475
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v5

    add-int v2, v4, v5

    .line 476
    .local v2, "rightEdge":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 477
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v1

    if-gt v4, v2, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    if-lt v4, v2, :cond_3

    .line 479
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 485
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 486
    move v3, v2

    .line 489
    :cond_2
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->updateScrollPosition(I)V

    goto :goto_0

    .line 482
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public scrollPrev()V
    .locals 7

    .prologue
    .line 439
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v4, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 440
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v4, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 466
    :goto_0
    return-void

    .line 442
    :cond_0
    const/4 v2, 0x0

    .line 443
    .local v2, "i":I
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 444
    .local v0, "count":I
    const/4 v1, 0x0

    .line 446
    .local v1, "firstItem":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 447
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    aget v5, v5, v2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_4

    .line 449
    move v1, v2

    .line 454
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordY:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mWordHeight:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 456
    .local v3, "leftEdge":I
    if-gez v3, :cond_2

    .line 457
    const/4 v3, 0x0

    .line 460
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 461
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 463
    :cond_3
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->updateScrollPosition(I)V

    goto :goto_0

    .line 452
    .end local v3    # "leftEdge":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected scrollToY(I)V
    .locals 1
    .param p1, "newScrollY"    # I

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollTo(II)V

    .line 608
    return-void
.end method

.method public selectActiveWord()V
    .locals 4

    .prologue
    .line 530
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedIndex:I

    if-ltz v0, :cond_0

    .line 531
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedIndex:I

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v0, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->trySelect()V

    goto :goto_0
.end method

.method public setContainer(Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    .line 116
    return-void
.end method

.method public setKeyboardHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 631
    iput p1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mKeyboradHeight:I

    .line 632
    return-void
.end method

.method public setOnWordSelectActionVerListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    .line 112
    return-void
.end method

.method public setSpellPrefix(Z)V
    .locals 0
    .param p1, "prefix"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->isSpellPrefix:Z

    .line 129
    return-void
.end method

.method protected trySelect()V
    .locals 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 543
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedIndex:I

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 544
    return-void
.end method

.method public updateCandidatesSize()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getCandidateSize()V

    .line 626
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTextSizeInit:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 628
    :cond_0
    return-void
.end method

.method public updateScrollPosition(I)V
    .locals 1
    .param p1, "targetY"    # I

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 496
    iput p1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    .line 497
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->needMoreWords()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    invoke-interface {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->invalidate()V

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mScrolled:Z

    .line 507
    :cond_1
    return-void
.end method
