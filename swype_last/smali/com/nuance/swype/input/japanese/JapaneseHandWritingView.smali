.class public Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;
.super Lcom/nuance/swype/input/HandWritingView;
.source "JapaneseHandWritingView.java"


# instance fields
.field private mDensity:F

.field private mFaddingPath:Landroid/graphics/Path;

.field private mNewSession:Z

.field private final mPath:Landroid/graphics/Path;

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

.field private mWritingMode:Ljava/lang/String;

.field private m_pntMidLine:Landroid/graphics/Paint;

.field private m_pntText:Landroid/graphics/Paint;

.field private m_pntWrite:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-direct {v0}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    .line 28
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPath:Landroid/graphics/Path;

    .line 30
    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    .line 31
    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 32
    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntMidLine:Landroid/graphics/Paint;

    .line 33
    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 35
    iput-boolean v8, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mNewSession:Z

    .line 41
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mFaddingPath:Landroid/graphics/Path;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 58
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$attr;->handwritingModeDisplayColor:I

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v1

    .line 61
    .local v1, "hmdColor":I
    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mDensity:F

    .line 63
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 64
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    const/high16 v6, 0x41400000    # 12.0f

    iget v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mDensity:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    sget-object v5, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 68
    .local v2, "italic":Landroid/graphics/Typeface;
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 69
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    .line 72
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 74
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    const-string/jumbo v6, "pen_color"

    const/16 v7, 0x18

    .line 78
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 76
    invoke-static {v5, v6, v7, v8}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v3

    .line 79
    .local v3, "penColor":I
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    const-string/jumbo v6, "hwr_pen_size"

    const/high16 v7, 0x40c00000    # 6.0f

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v5, v6, v7}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v4

    .line 84
    .local v4, "penSize":I
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntMidLine:Landroid/graphics/Paint;

    .line 88
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntMidLine:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntMidLine:Landroid/graphics/Paint;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    return-void
.end method

.method private onBufferDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getWidth()I

    move-result v1

    .line 206
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getHeight()I

    move-result v0

    .line 207
    .local v0, "height":I
    if-lez v1, :cond_d

    if-gtz v0, :cond_e

    .line 220
    :cond_d
    :goto_d
    return-void

    .line 211
    :cond_e
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mWritingMode:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 213
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41800000    # 16.0f

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mDensity:F

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 214
    .local v2, "x":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41400000    # 12.0f

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mDensity:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 215
    .local v3, "y":F
    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 216
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mWritingMode:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 217
    neg-float v4, v3

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_d
.end method

.method private reset()V
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 226
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->clearArcs()V

    .line 227
    return-void
.end method


# virtual methods
.method public clearArcs()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    .line 181
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/nuance/swype/input/HandWritingView;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->onBufferDraw(Landroid/graphics/Canvas;)V

    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mFaddingPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 99
    return-void
.end method

.method public onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/HandWritingView;->onMeasure(II)V

    .line 236
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 105
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 106
    invoke-virtual {v6, p1}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 108
    if-eqz v6, :cond_16

    .line 109
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->clearArcs()V

    .line 110
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 111
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    .line 175
    :goto_15
    return v4

    .line 117
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_da

    move v4, v5

    .line 175
    goto :goto_15

    .line 120
    :pswitch_1f
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v6}, Lcom/nuance/swype/input/FaddingStrokeQueue;->pauseFading()V

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 123
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 125
    .local v3, "y":I
    iget-boolean v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mNewSession:Z

    if-eqz v6, :cond_34

    .line 126
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mNewSession:Z

    .line 129
    :cond_34
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    invoke-interface {v5, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    .line 130
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mFaddingPath:Landroid/graphics/Path;

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 131
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    goto :goto_15

    .line 138
    .end local v2    # "x":I
    .end local v3    # "y":I
    :pswitch_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 139
    .local v1, "points":I
    if-eqz v1, :cond_75

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_55
    if-ge v0, v1, :cond_90

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    float-to-int v2, v5

    .line 142
    .restart local v2    # "x":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    float-to-int v3, v5

    .line 143
    .restart local v3    # "y":I
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mFaddingPath:Landroid/graphics/Path;

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 147
    .end local v0    # "i":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 148
    .restart local v2    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 149
    .restart local v3    # "y":I
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mFaddingPath:Landroid/graphics/Path;

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_90
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    goto :goto_15

    .line 157
    .end local v1    # "points":I
    :pswitch_94
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mFaddingPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/FaddingStrokeQueue;->add(Landroid/graphics/Path;)V

    .line 158
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mFaddingPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 161
    .restart local v2    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 162
    .restart local v3    # "y":I
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v5, v6, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 167
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 169
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v5}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startActionFading()V

    .line 170
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v5}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startFading()V

    .line 171
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    goto/16 :goto_15

    .line 117
    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_94
        :pswitch_4e
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 9
    .param p1, "visibility"    # I

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    const-string/jumbo v4, "pen_color"

    const/16 v5, 0x18

    .line 187
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 185
    invoke-static {v3, v4, v5, v6}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v1

    .line 188
    .local v1, "penColor":I
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 191
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    const-string/jumbo v4, "hwr_pen_size"

    const/high16 v5, 0x40c00000    # 6.0f

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v2

    .line 194
    .local v2, "penSize":I
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 196
    invoke-super {p0, p1}, Lcom/nuance/swype/input/HandWritingView;->onWindowVisibilityChanged(I)V

    .line 198
    return-void
.end method

.method public setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V
    .registers 3
    .param p1, "aListener"    # Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->setScrollListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 50
    return-void
.end method

.method public setNewSession(Z)V
    .registers 2
    .param p1, "newSession"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mNewSession:Z

    .line 202
    return-void
.end method

.method public setWritingMode(Ljava/lang/String;)V
    .registers 2
    .param p1, "writingMode"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mWritingMode:Ljava/lang/String;

    .line 231
    return-void
.end method
