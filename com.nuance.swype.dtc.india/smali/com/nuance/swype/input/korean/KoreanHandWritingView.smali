.class public Lcom/nuance/swype/input/korean/KoreanHandWritingView;
.super Lcom/nuance/swype/input/HandWritingView;
.source "KoreanHandWritingView.java"


# static fields
.field private static final HIDE_IME:I = -0x2

.field private static final HWR_DISPACH_EVENT_INIT:I = -0x1

.field private static final HWR_DISPACH_EVENT_NORMAL:I = 0x1

.field private static final HWR_DISPACH_EVENT_SWITCH:I = 0x2

.field private static final PEN_WIDTH:I = 0x6

.field private static final TAP_MINIMUM_TIME:J = 0x1f4L

.field private static final TAP_OFFSET:I = 0x226

.field private static final WRITING_MODE_TEXT:I

.field private static mSize:I


# instance fields
.field private final mDemoPaint:Landroid/graphics/Paint;

.field private mFirstDownTime:J

.field private mIsFullScreen:Z

.field private mNewSession:Z

.field private mOffsetSquare:I

.field private mOriginalX:I

.field private mOriginalY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPenColor:I

.field private mPointInInvalidArea:I

.field private final mStroke:Lcom/nuance/swype/input/Stroke;

.field private mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

.field private m_pntText:Landroid/graphics/Paint;

.field private writingPadWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-direct {v0}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "def"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mIsFullScreen:Z

    .line 39
    iput-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    .line 40
    iput-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 43
    const/4 v2, -0x1

    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 45
    iput-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 54
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFirstDownTime:J

    .line 56
    iput v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOffsetSquare:I

    .line 57
    iput v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalX:I

    .line 58
    iput v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalY:I

    .line 59
    iput-boolean v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 77
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 79
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v2, Lcom/nuance/swype/input/R$attr;->traceColor:I

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPenColor:I

    .line 80
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40c00000    # 6.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 86
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    .line 87
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPenColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 90
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 91
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 94
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    sget v3, Lcom/nuance/swype/input/R$attr;->handwritingModeDisplayColor:I

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    const/high16 v3, 0x41c00000    # 24.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 101
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/nuance/swype/input/Stroke;->create(I)Lcom/nuance/swype/input/Stroke;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    .line 102
    return-void
.end method

.method private getMaxOffsetSquare()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOffsetSquare:I

    return v0
.end method

.method private getMaxOffsetSquare(IILandroid/view/MotionEvent;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 287
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 288
    iget-wide v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFirstDownTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 289
    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalX:I

    sub-int/2addr v3, p1

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalX:I

    sub-int/2addr v4, p1

    mul-int v1, v3, v4

    .line 290
    .local v1, "xOffsetSquare":I
    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalY:I

    sub-int/2addr v3, p2

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalY:I

    sub-int/2addr v4, p2

    mul-int v2, v3, v4

    .line 291
    .local v2, "yOffsetSquare":I
    add-int v0, v1, v2

    .line 292
    .local v0, "offsetSquare":I
    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOffsetSquare:I

    if-le v0, v3, :cond_0

    .line 293
    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOffsetSquare:I

    .line 297
    .end local v0    # "offsetSquare":I
    .end local v1    # "xOffsetSquare":I
    .end local v2    # "yOffsetSquare":I
    :cond_0
    return-void
.end method

.method private getWritingPadWidth()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->writingPadWidth:I

    if-lez v0, :cond_0

    .line 142
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->writingPadWidth:I

    .line 144
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private isFullScreen()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mIsFullScreen:Z

    return v0
.end method


# virtual methods
.method public clearArcs()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    .line 158
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/nuance/swype/input/HandWritingView;->onDraw(Landroid/graphics/Canvas;)V

    .line 110
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    check-cast v6, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .line 111
    .local v6, "v":Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
    invoke-virtual {v6}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getHandWritingMode()I

    move-result v1

    .line 113
    .local v1, "mode":I
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v9}, Lcom/nuance/swype/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v10

    .line 114
    array-length v11, v10

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v2, v10, v9

    .line 115
    .local v2, "path":Landroid/graphics/Path;
    iget-object v12, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 114
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "path":Landroid/graphics/Path;
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 120
    .local v3, "res":Landroid/content/res/Resources;
    if-nez v1, :cond_1

    sget v9, Lcom/nuance/swype/input/R$string;->korean:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 122
    .local v0, "label":Ljava/lang/CharSequence;
    :goto_1
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v5, v9

    .line 123
    .local v5, "textWidth":I
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    iget-object v10, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v4, v9

    .line 125
    .local v4, "textSize":I
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getWritingPadWidth()I

    move-result v9

    sub-int/2addr v9, v5

    div-int/lit8 v7, v9, 0x2

    .line 126
    .local v7, "x":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getHeight()I

    move-result v9

    sub-int v8, v9, v4

    .line 127
    .local v8, "y":I
    iget v9, v6, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardHeight:I

    if-lez v9, :cond_2

    iget-boolean v9, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mIsFullScreen:Z

    if-eqz v9, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v9

    sget-object v10, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v9, v10, :cond_2

    .line 129
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    int-to-float v10, v7

    iget v11, v6, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardHeight:I

    sub-int v11, v8, v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 134
    :goto_2
    return-void

    .line 120
    .end local v0    # "label":Ljava/lang/CharSequence;
    .end local v4    # "textSize":I
    .end local v5    # "textWidth":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_1
    sget v9, Lcom/nuance/swype/input/R$string;->label_symbol_key:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 131
    .restart local v0    # "label":Ljava/lang/CharSequence;
    .restart local v4    # "textSize":I
    .restart local v5    # "textWidth":I
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    int-to-float v10, v7

    int-to-float v11, v8

    iget-object v12, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x1

    .line 171
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 172
    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 174
    if-eqz v4, :cond_1

    .line 175
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startFading()V

    .line 176
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Stroke;->clear()V

    .line 177
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    .line 279
    :cond_0
    :goto_0
    return v8

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->isFullScreen()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 182
    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    if-ne v4, v9, :cond_3

    .line 183
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v3, p1}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->transferKeyEvent(Landroid/view/MotionEvent;)Z

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 186
    :cond_2
    iput v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 187
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v3, v5}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->resetArea(I)V

    goto :goto_0

    .line 190
    :cond_3
    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    if-ne v4, v8, :cond_5

    .line 191
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v4}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->isSpeechPopupShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v8, :cond_4

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 196
    :cond_4
    iput v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 201
    iget-wide v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFirstDownTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 202
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getMaxOffsetSquare()I

    move-result v4

    const/16 v5, 0x226

    if-ge v4, v5, :cond_5

    .line 203
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    const/4 v4, -0x2

    invoke-interface {v3, v4}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->resetArea(I)V

    .line 204
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FaddingStrokeQueue;->clearAll()V

    .line 205
    iput-boolean v8, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    .line 206
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    goto :goto_0

    .line 214
    :cond_5
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/Stroke;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 276
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    goto :goto_0

    .line 219
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 220
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 221
    .local v2, "y":I
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->isFullScreen()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 222
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 222
    invoke-interface {v4, v5, v6}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->pointInSelectionArea(II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 224
    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    if-nez v4, :cond_8

    .line 226
    iput v8, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 245
    :cond_6
    :goto_2
    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    if-eqz v4, :cond_7

    .line 246
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v4}, Lcom/nuance/swype/input/FaddingStrokeQueue;->clearAll()V

    .line 247
    iput-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    .line 249
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    invoke-interface {v3, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    .line 250
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FaddingStrokeQueue;->pauseFading()V

    goto :goto_1

    .line 229
    :cond_8
    iput v9, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 230
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v3, p1}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->transferKeyEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 236
    :cond_9
    iput v8, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 237
    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    if-eqz v4, :cond_6

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFirstDownTime:J

    .line 239
    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalX:I

    .line 240
    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalY:I

    .line 241
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOffsetSquare:I

    goto :goto_2

    .line 255
    .end local v1    # "x":I
    .end local v2    # "y":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 256
    .restart local v1    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 258
    .restart local v2    # "y":I
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->isFullScreen()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 259
    invoke-direct {p0, v1, v2, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getMaxOffsetSquare(IILandroid/view/MotionEvent;)V

    .line 261
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    goto/16 :goto_0

    .line 264
    .end local v1    # "x":I
    .end local v2    # "y":I
    :pswitch_2
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v4

    .line 265
    array-length v5, v4

    :goto_3
    if-ge v3, v5, :cond_b

    aget-object v0, v4, v3

    .line 266
    .local v0, "path":Landroid/graphics/Path;
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v6, v0}, Lcom/nuance/swype/input/FaddingStrokeQueue;->add(Landroid/graphics/Path;)V

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 269
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_b
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startActionFading()V

    .line 270
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startFading()V

    .line 271
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Stroke;->getArcs()[Lcom/nuance/swype/input/Stroke$Arc;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V

    .line 272
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Stroke;->clear()V

    goto/16 :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 306
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    const-string/jumbo v2, "pen_color"

    const/16 v3, 0x18

    .line 308
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 306
    invoke-static {v1, v2, v3, v4}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPenColor:I

    .line 310
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPenColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 312
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "hwr_pen_size"

    const/high16 v3, 0x40c00000    # 6.0f

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mSize:I

    .line 314
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 316
    invoke-super {p0, p1}, Lcom/nuance/swype/input/HandWritingView;->onWindowVisibilityChanged(I)V

    .line 317
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .param p1, "fullScreen"    # Z

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 164
    :cond_0
    iput-boolean p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mIsFullScreen:Z

    .line 165
    return-void
.end method

.method public setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V
    .locals 1
    .param p1, "aListener"    # Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->setScrollListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 70
    return-void
.end method

.method public setNewSession(Z)V
    .locals 0
    .param p1, "newSession"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    .line 301
    return-void
.end method

.method public setPointStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 150
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->writingPadWidth:I

    .line 138
    return-void
.end method
