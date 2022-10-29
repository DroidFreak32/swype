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

.field protected static final mcrEnabled:Z = true


# instance fields
.field private digitSymbolLabelWidth:I

.field private isLandscape:Z

.field private labelSize:F

.field private mDirtyRect:Landroid/graphics/RectF;

.field private mFirstDownTime:J

.field private mIntegratedEnabled:Z

.field private mIsFullScreen:Z

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

.field private mStroke:Lcom/nuance/swype/input/Stroke;

.field private mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

.field private m_pntSepLine:Landroid/graphics/Paint;

.field private m_pntText:Landroid/graphics/Paint;

.field private m_pntWrite:Landroid/graphics/Paint;

.field private writingPadWidthOnResize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-direct {v0}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    .line 31
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    .line 32
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLinePath:Landroid/graphics/Path;

    .line 34
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    .line 35
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 36
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    .line 37
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIntegratedEnabled:Z

    .line 39
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    .line 43
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIsFullScreen:Z

    .line 44
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 47
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    .line 48
    const/4 v6, -0x1

    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 57
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFirstDownTime:J

    .line 59
    const/4 v6, 0x0

    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOffsetSquare:I

    .line 60
    const/4 v6, 0x0

    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalX:I

    .line 61
    const/4 v6, 0x0

    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalY:I

    .line 83
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 85
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$attr;->handwritingModeDisplayColor:I

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v1

    .line 88
    .local v1, "hmdColor":I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    .line 89
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 91
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 92
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/DashPathEffect;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_166

    const/high16 v9, 0x41200000    # 10.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 96
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 97
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->labelSize:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_152

    .line 99
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    iget v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->labelSize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    :goto_ae
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_simp:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 105
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->digitSymbolLabelWidth:I

    .line 106
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    sget-object v6, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 108
    .local v3, "italic":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    .line 112
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 114
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->labelSize:F

    .line 118
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    const-string/jumbo v7, "pen_color"

    const/16 v8, 0x18

    .line 120
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 118
    invoke-static {v6, v7, v8, v9}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v4

    .line 121
    .local v4, "penColor":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v2

    .line 123
    .local v2, "isTablet":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    const-string/jumbo v8, "hwr_pen_size"

    if-eqz v2, :cond_164

    const/4 v6, 0x7

    :goto_13c
    int-to-float v6, v6

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-static {v7, v8, v6}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v5

    .line 126
    .local v5, "penSize":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    invoke-static {v5}, Lcom/nuance/swype/input/Stroke;->create(I)Lcom/nuance/swype/input/Stroke;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    .line 128
    return-void

    .line 101
    .end local v2    # "isTablet":Z
    .end local v3    # "italic":Landroid/graphics/Typeface;
    .end local v4    # "penColor":I
    .end local v5    # "penSize":I
    :cond_152
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$dimen;->hand_writing_mode_text_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_ae

    .line 123
    .restart local v2    # "isTablet":Z
    .restart local v3    # "italic":Landroid/graphics/Typeface;
    .restart local v4    # "penColor":I
    :cond_164
    const/4 v6, 0x5

    goto :goto_13c

    .line 94
    :array_166
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private addArcPoint(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 507
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 511
    .local v0, "size":I
    if-lez v0, :cond_25

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .line 512
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v1, p1, :cond_25

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .line 513
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v1, p2, :cond_25

    .line 518
    :goto_24
    return-void

    .line 517
    :cond_25
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method private onBufferDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v11, 0x40c00000    # 6.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v10, 0x40a00000    # 5.0f

    .line 396
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v9

    .line 397
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v6

    .line 398
    .local v6, "height":I
    if-lez v9, :cond_14

    if-gtz v6, :cond_15

    .line 479
    :cond_14
    :goto_14
    return-void

    .line 401
    :cond_15
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 402
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    check-cast v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .line 404
    .local v8, "v":Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIntegratedEnabled:Z

    if-nez v0, :cond_14

    .line 408
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

    .line 409
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isLandscape:Z

    if-nez v0, :cond_98

    .line 410
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 411
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 413
    .local v7, "textSize":I
    iget v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    if-lez v0, :cond_7a

    .line 414
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    iget v1, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    sub-int v1, v6, v1

    mul-int/lit8 v2, v7, 0x5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 421
    :goto_5f
    iget v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    if-lez v0, :cond_85

    .line 422
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

    goto :goto_14

    .line 417
    :cond_7a
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    int-to-float v1, v6

    mul-float/2addr v1, v10

    div-float/2addr v1, v11

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5f

    .line 426
    :cond_85
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

    goto/16 :goto_14

    .line 431
    .end local v7    # "textSize":I
    :cond_98
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 432
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 434
    .restart local v7    # "textSize":I
    iget v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    if-lez v0, :cond_dc

    .line 435
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    iget v1, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    sub-int v1, v6, v1

    mul-int/lit8 v2, v7, 0x5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 442
    :goto_c0
    iget v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    if-lez v0, :cond_e7

    .line 443
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

    goto/16 :goto_14

    .line 438
    :cond_dc
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    sub-int v1, v6, v7

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_c0

    .line 447
    :cond_e7
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->digitSymbolLabelWidth:I

    sub-int v1, v9, v1

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    sub-int v2, v6, v7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_14

    .line 453
    .end local v7    # "textSize":I
    .end local v8    # "v":Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    :cond_fa
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    check-cast v8, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .line 454
    .local v8, "v":Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->writingPadWidthOnResize:I

    if-eq v0, v9, :cond_107

    .line 455
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 457
    :cond_107
    iput v9, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->writingPadWidthOnResize:I

    .line 458
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIntegratedEnabled:Z

    if-nez v0, :cond_14

    .line 462
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

    .line 463
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isLandscape:Z

    if-nez v0, :cond_145

    .line 464
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    add-int/lit8 v1, v6, -0x14

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v12, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 466
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

    goto/16 :goto_14

    .line 469
    :cond_145
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 470
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 472
    .restart local v7    # "textSize":I
    iget-object v0, v8, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    sub-int v1, v6, v7

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v12, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 474
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

    goto/16 :goto_14
.end method

.method private reset()V
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 494
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 496
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->clearArcs()V

    .line 497
    return-void
.end method

.method private resetDirtyRect(FF)V
    .registers 5
    .param p1, "eventX"    # F
    .param p2, "eventY"    # F

    .prologue
    .line 500
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchX:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 501
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchX:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 502
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchY:F

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 503
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchY:F

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 504
    return-void
.end method


# virtual methods
.method public clearArcs()V
    .registers 6

    .prologue
    .line 349
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 350
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    .line 351
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 352
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/Point;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 353
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 354
    .local v1, "pt":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 356
    .end local v1    # "pt":Landroid/graphics/Point;
    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 358
    .restart local v1    # "pt":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2a

    .line 361
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/Point;>;"
    .end local v1    # "pt":Landroid/graphics/Point;
    :cond_42
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    .line 362
    return-void
.end method

.method public clearLinePath()V
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 366
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    .line 367
    return-void
.end method

.method public getMaxOffsetSquare()I
    .registers 2

    .prologue
    .line 332
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOffsetSquare:I

    return v0
.end method

.method public getMaxOffsetSquare(IILandroid/view/MotionEvent;)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 336
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 337
    iget-wide v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFirstDownTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v3, v4, v6

    if-gez v3, :cond_25

    .line 338
    iget v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalX:I

    sub-int/2addr v3, p1

    iget v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalX:I

    sub-int/2addr v4, p1

    mul-int v1, v3, v4

    .line 339
    .local v1, "xOffsetSquare":I
    iget v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalY:I

    sub-int/2addr v3, p2

    iget v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalY:I

    sub-int/2addr v4, p2

    mul-int v2, v3, v4

    .line 340
    .local v2, "yOffsetSquare":I
    add-int v0, v1, v2

    .line 341
    .local v0, "offsetSquare":I
    iget v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOffsetSquare:I

    if-le v0, v3, :cond_25

    .line 342
    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOffsetSquare:I

    .line 346
    .end local v0    # "offsetSquare":I
    .end local v1    # "xOffsetSquare":I
    .end local v2    # "yOffsetSquare":I
    :cond_25
    return-void
.end method

.method public isFullScreen()Z
    .registers 2

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIsFullScreen:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/nuance/swype/input/HandWritingView;->onDraw(Landroid/graphics/Canvas;)V

    .line 137
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v1

    .line 138
    .local v1, "paths":[Landroid/graphics/Path;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, v1

    if-ge v0, v2, :cond_17

    .line 139
    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 143
    :cond_17
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->onBufferDraw(Landroid/graphics/Canvas;)V

    .line 145
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v12, 0x2

    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 154
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    if-eqz v8, :cond_e

    .line 155
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v8, p1}, Lcom/nuance/swype/input/Stroke;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 157
    :cond_e
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 158
    invoke-virtual {v8, p1}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 160
    if-eqz v8, :cond_28

    .line 161
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    if-eqz v7, :cond_1f

    .line 162
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v7}, Lcom/nuance/swype/input/Stroke;->clear()V

    .line 164
    :cond_1f
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->reset()V

    .line 165
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    .line 166
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    .line 328
    :cond_27
    :goto_27
    return v6

    .line 170
    :cond_28
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isFullScreen()Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 171
    iget v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    if-ne v8, v12, :cond_57

    .line 172
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v7, p1}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->transferKeyEvent(Landroid/view/MotionEvent;)Z

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v6, :cond_43

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v10, :cond_27

    .line 175
    :cond_43
    iput v9, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 176
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v7, v9}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->resetArea(I)V

    .line 177
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    if-eqz v7, :cond_53

    .line 178
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v7}, Lcom/nuance/swype/input/Stroke;->clear()V

    .line 180
    :cond_53
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->reset()V

    goto :goto_27

    .line 183
    :cond_57
    iget v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    if-ne v8, v6, :cond_9e

    .line 184
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v8}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->isSpeechPopupShowing()Z

    move-result v8

    if-nez v8, :cond_27

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v6, :cond_6f

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v10, :cond_9e

    .line 189
    :cond_6f
    iput v9, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 194
    iget-wide v10, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFirstDownTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1f4

    cmp-long v8, v8, v10

    if-gez v8, :cond_9e

    .line 195
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMaxOffsetSquare()I

    move-result v8

    const/16 v9, 0x226

    if-ge v8, v9, :cond_9e

    .line 196
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    const/4 v8, -0x2

    invoke-interface {v7, v8}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->resetArea(I)V

    .line 197
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    if-eqz v7, :cond_95

    .line 198
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v7}, Lcom/nuance/swype/input/Stroke;->clear()V

    .line 200
    :cond_95
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->reset()V

    .line 201
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    .line 202
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    goto :goto_27

    .line 213
    :cond_9e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_200

    .line 327
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    move v6, v7

    .line 328
    goto/16 :goto_27

    .line 216
    :pswitch_ab
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 217
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 218
    .local v5, "y":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isFullScreen()Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 219
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    .line 219
    invoke-interface {v8, v9, v10}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->pointInSelectionArea(II)Z

    move-result v8

    if-eqz v8, :cond_104

    .line 222
    iget-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    if-nez v8, :cond_fb

    .line 224
    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 243
    :cond_d3
    :goto_d3
    iget-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    if-eqz v8, :cond_dc

    .line 244
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->reset()V

    .line 245
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    .line 247
    :cond_dc
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    invoke-interface {v7, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    .line 248
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v8, v4

    int-to-float v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 249
    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->addArcPoint(II)V

    .line 251
    int-to-float v7, v4

    iput v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchX:F

    .line 252
    int-to-float v7, v5

    iput v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchY:F

    .line 254
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v7}, Lcom/nuance/swype/input/FaddingStrokeQueue;->pauseFading()V

    .line 255
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    goto/16 :goto_27

    .line 227
    :cond_fb
    iput v12, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 228
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v7, p1}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->transferKeyEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_27

    .line 234
    :cond_104
    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 235
    iget-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    if-eqz v8, :cond_d3

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFirstDownTime:J

    .line 237
    iput v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalX:I

    .line 238
    iput v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOriginalY:I

    .line 239
    iput v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOffsetSquare:I

    goto :goto_d3

    .line 259
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 260
    .restart local v4    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 261
    .restart local v5    # "y":I
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-direct {p0, v7, v8}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->resetDirtyRect(FF)V

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 264
    .local v3, "points":I
    if-eqz v3, :cond_14f

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12d
    if-ge v0, v3, :cond_16c

    .line 266
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v7

    float-to-int v4, v7

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    float-to-int v5, v7

    .line 268
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v8, v4

    int-to-float v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->addArcPoint(II)V

    .line 271
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isFullScreen()Z

    move-result v7

    if-eqz v7, :cond_14c

    .line 272
    invoke-virtual {p0, v4, v5, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMaxOffsetSquare(IILandroid/view/MotionEvent;)V

    .line 265
    :cond_14c
    add-int/lit8 v0, v0, 0x1

    goto :goto_12d

    .line 276
    .end local v0    # "i":I
    :cond_14f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 278
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v8, v4

    int-to-float v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 279
    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->addArcPoint(II)V

    .line 281
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isFullScreen()Z

    move-result v7

    if-eqz v7, :cond_16c

    .line 282
    invoke-virtual {p0, v4, v5, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMaxOffsetSquare(IILandroid/view/MotionEvent;)V

    .line 285
    :cond_16c
    int-to-float v7, v4

    iput v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchX:F

    .line 286
    int-to-float v7, v5

    iput v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchY:F

    .line 288
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    float-to-int v2, v7

    .line 289
    .local v2, "pen_width":I
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    int-to-float v8, v2

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    int-to-float v9, v2

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    int-to-float v10, v2

    add-float/2addr v9, v10

    float-to-int v9, v9

    iget-object v10, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mDirtyRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    int-to-float v11, v2

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate(IIII)V

    .line 293
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    goto/16 :goto_27

    .line 297
    .end local v2    # "pen_width":I
    .end local v3    # "points":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_19d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 298
    .restart local v4    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 299
    .restart local v5    # "y":I
    int-to-float v8, v4

    int-to-float v9, v5

    invoke-direct {p0, v8, v9}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->resetDirtyRect(FF)V

    .line 301
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v6, :cond_1c6

    .line 302
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    add-int/lit8 v9, v4, 0x1

    int-to-float v9, v9

    add-int/lit8 v10, v5, 0x1

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 303
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v5, 0x1

    invoke-direct {p0, v8, v9}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->addArcPoint(II)V

    .line 306
    :cond_1c6
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v7}, Lcom/nuance/swype/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v1

    .line 308
    .local v1, "paths":[Landroid/graphics/Path;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1d7
    array-length v7, v1

    if-ge v0, v7, :cond_1e4

    .line 309
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    aget-object v8, v1, v0

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/FaddingStrokeQueue;->add(Landroid/graphics/Path;)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d7

    .line 311
    :cond_1e4
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v7, v8, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 313
    int-to-float v7, v4

    iput v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchX:F

    .line 314
    int-to-float v7, v5

    iput v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mLastTouchY:F

    .line 315
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 316
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v7}, Lcom/nuance/swype/input/Stroke;->clear()V

    .line 323
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->invalidate()V

    goto/16 :goto_27

    .line 213
    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_19d
        :pswitch_117
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 10
    .param p1, "visibility"    # I

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    const-string/jumbo v5, "pen_color"

    const/16 v6, 0x18

    .line 374
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 372
    invoke-static {v4, v5, v6, v7}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v2

    .line 375
    .local v2, "penColor":I
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 377
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v1

    .line 378
    .local v1, "isTablet":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    const-string/jumbo v6, "hwr_pen_size"

    if-eqz v1, :cond_4f

    const/4 v4, 0x7

    :goto_3c
    int-to-float v4, v4

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v5, v6, v4}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v3

    .line 381
    .local v3, "penSize":I
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 382
    invoke-super {p0, p1}, Lcom/nuance/swype/input/HandWritingView;->onWindowVisibilityChanged(I)V

    .line 383
    return-void

    .line 378
    .end local v3    # "penSize":I
    :cond_4f
    const/4 v4, 0x5

    goto :goto_3c
.end method

.method public setFullScreen(Z)V
    .registers 3
    .param p1, "fullScreen"    # Z

    .prologue
    .line 482
    if-eqz p1, :cond_5

    .line 483
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 485
    :cond_5
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIsFullScreen:Z

    .line 486
    return-void
.end method

.method public setIntegratedEnabled(Z)V
    .registers 4
    .param p1, "integrated"    # Z

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mIntegratedEnabled:Z

    .line 387
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isLandscape:Z

    .line 389
    return-void

    .line 388
    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V
    .registers 3
    .param p1, "aListener"    # Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->setScrollListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 77
    return-void
.end method

.method public setNewSession(Z)V
    .registers 2
    .param p1, "newSession"    # Z

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mNewSession:Z

    .line 393
    return-void
.end method

.method public setPointStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mPointInInvalidArea:I

    .line 149
    return-void
.end method
