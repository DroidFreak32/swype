.class public Lcom/nuance/swype/input/chinese/ChineseHandWritingView;
.super Lcom/nuance/swype/input/HandWritingView;
.source "ChineseHandWritingView.java"


# static fields
.field private static final HIDE_IME:I = -0x2

.field private static final HWR_DISPACH_EVENT_INIT:I = -0x1

.field private static final HWR_DISPACH_EVENT_NORMAL:I = 0x1

.field private static final HWR_DISPACH_EVENT_SWITCH:I = 0x2

.field private static final TAP_MINIMUM_TIME:J = 0x1f4L

.field private static final TAP_OFFSET:I = 0x226


# instance fields
.field private digitSymbolLabelWidth:I

.field private isLandscape:Z

.field private labelSize:F

.field private mCategray:I

.field private mDirtyRect:Landroid/graphics/RectF;

.field private mFirstDownTime:J

.field private mIntegratedEnabled:Z

.field private mIsFullScreen:Z

.field private mLastDownTime:J

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private final mLinePath:Landroid/graphics/Path;

.field private mNewSession:Z

.field private mOffsetSquare:I

.field private mOriginalX:I

.field private mOriginalY:I

.field private final mPath:Landroid/graphics/Path;

.field private mPointInInvalidArea:I

.field private final mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

.field private m_pntSepLine:Landroid/graphics/Paint;

.field private m_pntText:Landroid/graphics/Paint;

.field private m_pntWrite:Landroid/graphics/Paint;

.field private writingPadWidthOnResize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-direct {v0}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    .line 28
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    .line 29
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLinePath:Landroid/graphics/Path;

    .line 31
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    .line 32
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 33
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    .line 34
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIntegratedEnabled:Z

    .line 35
    const/4 v8, 0x0

    iput v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mCategray:I

    .line 36
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    .line 40
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIsFullScreen:Z

    .line 41
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 44
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    .line 45
    const/4 v8, -0x1

    iput v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 54
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFirstDownTime:J

    .line 55
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastDownTime:J

    .line 56
    const/4 v8, 0x0

    iput v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOffsetSquare:I

    .line 57
    const/4 v8, 0x0

    iput v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalX:I

    .line 58
    const/4 v8, 0x0

    iput v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalY:I

    .line 75
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 77
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$attr;->handwritingModeDisplayColor:I

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v3

    .line 80
    .local v3, "hmdColor":I
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    .line 81
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 83
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 84
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/DashPathEffect;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    const/high16 v11, 0x41200000    # 10.0f

    invoke-direct {v9, v10, v11}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 88
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 89
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->labelSize:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 91
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    iget v9, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->labelSize:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    :goto_0
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_simp:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->digitSymbolLabelWidth:I

    .line 98
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    sget-object v8, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 100
    .local v5, "italic":Landroid/graphics/Typeface;
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 101
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    .line 104
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 106
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x41a00000    # 20.0f

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->labelSize:F

    .line 110
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v8

    const-string v9, "pen_color"

    const/16 v10, 0x18

    invoke-static {v8, v9, v10}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v6

    .line 113
    .local v6, "penColor":I
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, "isTablet":Z
    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v8

    .line 117
    .local v1, "displayHeight":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$dimen;->max_height_for_fullscreen:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 119
    .local v0, "dimen":F
    cmpl-float v8, v1, v0

    if-ltz v8, :cond_0

    .line 120
    const/4 v4, 0x1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v9

    const-string v10, "hwr_pen_size"

    if-eqz v4, :cond_2

    const/16 v8, 0x9

    :goto_1
    int-to-float v8, v8

    iget v11, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v11

    float-to-int v8, v8

    invoke-static {v9, v10, v8}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v7

    .line 125
    .local v7, "penSize":I
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    int-to-float v9, v7

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    return-void

    .line 93
    .end local v0    # "dimen":F
    .end local v1    # "displayHeight":F
    .end local v4    # "isTablet":Z
    .end local v5    # "italic":Landroid/graphics/Typeface;
    .end local v6    # "penColor":I
    .end local v7    # "penSize":I
    :cond_1
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$dimen;->hand_writing_mode_text_size:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_0

    .line 122
    .restart local v0    # "dimen":F
    .restart local v1    # "displayHeight":F
    .restart local v4    # "isTablet":Z
    .restart local v5    # "italic":Landroid/graphics/Typeface;
    .restart local v6    # "penColor":I
    :cond_2
    const/4 v8, 0x6

    goto :goto_1

    .line 86
    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private addArcPoint(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 497
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 501
    .local v0, "size":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v1, p2, :cond_0

    .line 508
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onBufferDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v11, 0x40c00000    # 6.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v10, 0x40a00000    # 5.0f

    .line 382
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v9

    .line 383
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v6

    .line 384
    .local v6, "height":I
    if-lez v9, :cond_0

    if-gtz v6, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 388
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    check-cast v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .line 390
    .local v8, "v":Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIntegratedEnabled:Z

    if-nez v0, :cond_0

    .line 394
    int-to-float v0, v9

    div-float v1, v0, v3

    int-to-float v0, v6

    div-float v2, v0, v10

    int-to-float v0, v9

    div-float v3, v0, v3

    int-to-float v4, v6

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 395
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isLandscape:Z

    if-nez v0, :cond_4

    .line 396
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 399
    .local v7, "textSize":I
    iget v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    if-lez v0, :cond_2

    .line 400
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    iget v1, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    sub-int v1, v6, v1

    mul-int/lit8 v2, v7, 0x5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 407
    :goto_1
    iget v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    if-lez v0, :cond_3

    .line 408
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->digitSymbolLabelWidth:I

    sub-int v1, v9, v1

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    iget v2, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    sub-int v2, v6, v2

    mul-int/lit8 v3, v7, 0x5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 403
    :cond_2
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    int-to-float v1, v6

    mul-float/2addr v1, v10

    div-float/2addr v1, v11

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 412
    :cond_3
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->digitSymbolLabelWidth:I

    sub-int v1, v9, v1

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    int-to-float v2, v6

    mul-float/2addr v2, v10

    div-float/2addr v2, v11

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 417
    .end local v7    # "textSize":I
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 420
    .restart local v7    # "textSize":I
    iget v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    if-lez v0, :cond_5

    .line 421
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    iget v1, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    sub-int v1, v6, v1

    mul-int/lit8 v2, v7, 0x5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 428
    :goto_2
    iget v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    if-lez v0, :cond_6

    .line 429
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->digitSymbolLabelWidth:I

    sub-int v1, v9, v1

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    iget v2, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    sub-int v2, v6, v2

    mul-int/lit8 v3, v7, 0x5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 424
    :cond_5
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    sub-int v1, v6, v7

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 433
    :cond_6
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->digitSymbolLabelWidth:I

    sub-int v1, v9, v1

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    sub-int v2, v6, v7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 439
    .end local v7    # "textSize":I
    .end local v8    # "v":Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    :cond_7
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    check-cast v8, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .line 440
    .local v8, "v":Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->writingPadWidthOnResize:I

    if-eq v0, v9, :cond_8

    .line 441
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 443
    :cond_8
    iput v9, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->writingPadWidthOnResize:I

    .line 444
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIntegratedEnabled:Z

    if-nez v0, :cond_0

    .line 448
    int-to-float v0, v9

    div-float v1, v0, v3

    int-to-float v0, v6

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v0, v2

    int-to-float v0, v9

    div-float v3, v0, v3

    int-to-float v4, v6

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 449
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isLandscape:Z

    if-nez v0, :cond_9

    .line 450
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    add-int/lit8 v1, v6, -0x14

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v12, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 452
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->digitSymbolLabelWidth:I

    sub-int v1, v9, v1

    invoke-virtual {v8}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCharacterListWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    add-int/lit8 v2, v6, -0x14

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 455
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 458
    .restart local v7    # "textSize":I
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    sub-int v1, v6, v7

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v12, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 460
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->digitSymbolLabelWidth:I

    sub-int v1, v9, v1

    invoke-virtual {v8}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCharacterListWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    sub-int v2, v6, v7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->clearArcs()V

    .line 483
    return-void
.end method

.method private resetDirtyRect(FF)V
    .locals 2
    .param p1, "eventX"    # F
    .param p2, "eventY"    # F

    .prologue
    .line 486
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchX:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 487
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchX:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 488
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchY:F

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 489
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchY:F

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 490
    return-void
.end method


# virtual methods
.method public clearArcs()V
    .locals 5

    .prologue
    .line 324
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 325
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 327
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/Point;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 329
    .local v1, "pt":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 331
    .end local v1    # "pt":Landroid/graphics/Point;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 333
    .restart local v1    # "pt":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 336
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/Point;>;"
    .end local v1    # "pt":Landroid/graphics/Point;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    .line 337
    return-void
.end method

.method public clearLinePath()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 341
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    .line 342
    return-void
.end method

.method public getCategray()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mCategray:I

    return v0
.end method

.method public getMaxOffsetSquare()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOffsetSquare:I

    return v0
.end method

.method public getMaxOffsetSquare(IILandroid/view/MotionEvent;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 307
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 308
    iget-wide v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFirstDownTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 309
    iget v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalX:I

    sub-int/2addr v3, p1

    iget v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalX:I

    sub-int/2addr v4, p1

    mul-int v1, v3, v4

    .line 310
    .local v1, "xOffsetSquare":I
    iget v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalY:I

    sub-int/2addr v3, p2

    iget v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalY:I

    sub-int/2addr v4, p2

    mul-int v2, v3, v4

    .line 311
    .local v2, "yOffsetSquare":I
    add-int v0, v1, v2

    .line 312
    .local v0, "offsetSquare":I
    iget v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOffsetSquare:I

    if-le v0, v3, :cond_0

    .line 313
    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOffsetSquare:I

    .line 317
    .end local v0    # "offsetSquare":I
    .end local v1    # "xOffsetSquare":I
    .end local v2    # "yOffsetSquare":I
    :cond_0
    return-void
.end method

.method public getPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    return-object v0
.end method

.method public isArcsEmpty()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIsFullScreen:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/nuance/swype/input/HandWritingView;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->onBufferDraw(Landroid/graphics/Canvas;)V

    .line 134
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    .line 135
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x3

    const/4 v12, 0x2

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 148
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-virtual {v7, p1}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 151
    if-ne v7, v5, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->reset()V

    .line 153
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    .line 154
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    .line 299
    :cond_0
    :goto_0
    return v5

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isFullScreen()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 159
    iget v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    if-ne v7, v12, :cond_3

    .line 160
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v6, p1}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->transferKeyEvent(Landroid/view/MotionEvent;)Z

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 163
    :cond_2
    iput v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 164
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v6, v8}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->resetArea(I)V

    goto :goto_0

    .line 167
    :cond_3
    iget v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    if-ne v7, v5, :cond_5

    .line 168
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v7}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->isSpeechPopupShowing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v5, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v9, :cond_5

    .line 173
    :cond_4
    iput v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastDownTime:J

    .line 178
    iget-wide v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastDownTime:J

    iget-wide v10, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFirstDownTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1f4

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMaxOffsetSquare()I

    move-result v7

    const/16 v8, 0x226

    if-ge v7, v8, :cond_5

    .line 180
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    const/4 v7, -0x2

    invoke-interface {v6, v7}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->resetArea(I)V

    .line 181
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->reset()V

    .line 182
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    .line 183
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    goto :goto_0

    .line 194
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move v5, v6

    .line 299
    goto :goto_0

    .line 197
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 198
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 199
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isFullScreen()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 200
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v8, v9}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->pointInSelectionArea(II)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 203
    iget-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    if-nez v7, :cond_8

    .line 205
    iput v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 224
    :cond_6
    :goto_1
    iget-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    if-eqz v7, :cond_7

    .line 225
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->reset()V

    .line 226
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    .line 228
    :cond_7
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    invoke-interface {v6, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    .line 229
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v7, v3

    int-to-float v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 231
    invoke-direct {p0, v3, v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->addArcPoint(II)V

    .line 233
    int-to-float v6, v3

    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchX:F

    .line 234
    int-to-float v6, v4

    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchY:F

    goto/16 :goto_0

    .line 208
    :cond_8
    iput v12, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 209
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v6, p1}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->transferKeyEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 215
    :cond_9
    iput v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 216
    iget-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    if-eqz v7, :cond_6

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFirstDownTime:J

    .line 218
    iput v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalX:I

    .line 219
    iput v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalY:I

    .line 220
    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOffsetSquare:I

    goto :goto_1

    .line 238
    .end local v3    # "x":I
    .end local v4    # "y":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 239
    .restart local v3    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 240
    .restart local v4    # "y":I
    int-to-float v6, v3

    int-to-float v7, v4

    invoke-direct {p0, v6, v7}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->resetDirtyRect(FF)V

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 243
    .local v2, "points":I
    if-eqz v2, :cond_b

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_c

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    float-to-int v3, v6

    .line 246
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v6

    float-to-int v4, v6

    .line 247
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v7, v3

    int-to-float v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    invoke-direct {p0, v3, v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->addArcPoint(II)V

    .line 250
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isFullScreen()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 251
    invoke-virtual {p0, v3, v4, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMaxOffsetSquare(IILandroid/view/MotionEvent;)V

    .line 244
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 255
    .end local v0    # "i":I
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 257
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v7, v3

    int-to-float v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 258
    invoke-direct {p0, v3, v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->addArcPoint(II)V

    .line 260
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isFullScreen()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 261
    invoke-virtual {p0, v3, v4, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMaxOffsetSquare(IILandroid/view/MotionEvent;)V

    .line 264
    :cond_c
    int-to-float v6, v3

    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchX:F

    .line 265
    int-to-float v6, v4

    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchY:F

    .line 267
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    float-to-int v1, v6

    .line 268
    .local v1, "pen_width":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    int-to-float v7, v1

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    int-to-float v8, v1

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    int-to-float v9, v1

    add-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v1

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 275
    .end local v1    # "pen_width":I
    .end local v2    # "points":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 276
    .restart local v3    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 277
    .restart local v4    # "y":I
    int-to-float v7, v3

    int-to-float v8, v4

    invoke-direct {p0, v7, v8}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->resetDirtyRect(FF)V

    .line 279
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_d

    .line 280
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v8, v3

    int-to-float v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 281
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    add-int/lit8 v9, v4, 0x1

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-direct {p0, v7, v8}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->addArcPoint(II)V

    .line 285
    :cond_d
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v6, v7, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 288
    int-to-float v6, v3

    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchX:F

    .line 289
    int-to-float v6, v4

    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchY:F

    .line 290
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 291
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    float-to-int v1, v6

    .line 292
    .restart local v1    # "pen_width":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    int-to-float v7, v1

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    int-to-float v8, v1

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    int-to-float v9, v1

    add-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v1

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 10
    .param p1, "visibility"    # I

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    const-string v7, "pen_color"

    const/16 v8, 0x18

    invoke-static {v6, v7, v8}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v4

    .line 350
    .local v4, "penColor":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 352
    .local v2, "dm":Landroid/util/DisplayMetrics;
    const/4 v3, 0x0

    .line 353
    .local v3, "isTablet":Z
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v6

    .line 355
    .local v1, "displayHeight":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$dimen;->max_height_for_fullscreen:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 357
    .local v0, "dimen":F
    cmpl-float v6, v1, v0

    if-ltz v6, :cond_0

    .line 358
    const/4 v3, 0x1

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    const-string v8, "hwr_pen_size"

    if-eqz v3, :cond_1

    const/16 v6, 0x9

    :goto_0
    int-to-float v6, v6

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-static {v7, v8, v6}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v5

    .line 363
    .local v5, "penSize":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 364
    invoke-super {p0, p1}, Lcom/nuance/swype/input/HandWritingView;->onWindowVisibilityChanged(I)V

    .line 365
    return-void

    .line 360
    .end local v5    # "penSize":I
    :cond_1
    const/4 v6, 0x6

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 1
    .param p1, "fullScreen"    # Z

    .prologue
    .line 468
    if-eqz p1, :cond_0

    .line 469
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 471
    :cond_0
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIsFullScreen:Z

    .line 472
    return-void
.end method

.method public setIntegratedEnabled(Z)V
    .locals 2
    .param p1, "integrated"    # Z

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIntegratedEnabled:Z

    .line 369
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isLandscape:Z

    .line 371
    return-void

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V
    .locals 1
    .param p1, "aListener"    # Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->setScrollListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 70
    return-void
.end method

.method public setNewSession(Z)V
    .locals 0
    .param p1, "newSession"    # Z

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    .line 379
    return-void
.end method

.method public setPointStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 143
    return-void
.end method

.method public usesFullscreenArea()Z
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x1

    return v0
.end method
