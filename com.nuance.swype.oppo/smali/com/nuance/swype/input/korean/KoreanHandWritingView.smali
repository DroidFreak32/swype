.class public Lcom/nuance/swype/input/korean/KoreanHandWritingView;
.super Lcom/nuance/swype/input/HandWritingView;
.source "KoreanHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;,
        Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;
    }
.end annotation


# static fields
.field private static final FADING_DELAY:I = 0x2

.field private static final HIDE_IME:I = -0x2

.field private static final HWR_DISPACH_EVENT_INIT:I = -0x1

.field private static final HWR_DISPACH_EVENT_NORMAL:I = 0x1

.field private static final HWR_DISPACH_EVENT_SWITCH:I = 0x2

.field private static final MSG_FADING:I = 0x1

.field private static final PEN_WIDTH:I = 0x6

.field private static final TAP_MINIMUM_TIME:J = 0x1f4L

.field private static final TAP_OFFSET:I = 0x226

.field private static final WRITING_MODE_TEXT:I

.field private static mSize:I


# instance fields
.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private mDemoPaint:Landroid/graphics/Paint;

.field private mFaddingStarted:Z

.field private mFaddingStrokeQueue:Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

.field private mFirstDownTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mIsFullScreen:Z

.field private mLastDownTime:J

.field private mNewSession:Z

.field private mOffsetSquare:I

.field private mOriginalX:I

.field private mOriginalY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPenColor:I

.field private mPointInInvalidArea:I

.field private mStroke:Lcom/nuance/swype/input/Stroke;

.field private mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

.field private m_pntText:Landroid/graphics/Paint;

.field private writingPadWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-direct {v0}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "def"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mIsFullScreen:Z

    .line 41
    iput-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    .line 42
    iput-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 45
    const/4 v2, -0x1

    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 47
    iput-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 56
    iput-wide v8, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFirstDownTime:J

    .line 57
    iput-wide v8, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mLastDownTime:J

    .line 58
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOffsetSquare:I

    .line 59
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalX:I

    .line 60
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalY:I

    .line 61
    iput-boolean v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    .line 106
    new-instance v2, Lcom/nuance/swype/input/korean/KoreanHandWritingView$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$1;-><init>(Lcom/nuance/swype/input/korean/KoreanHandWritingView;)V

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->handlerCallback:Landroid/os/Handler$Callback;

    .line 121
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v2}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mHandler:Landroid/os/Handler;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 78
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 80
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v2, Lcom/nuance/swype/input/R$attr;->traceColor:I

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPenColor:I

    .line 81
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40c00000    # 6.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 87
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPenColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 91
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 92
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 95
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    sget v3, Lcom/nuance/swype/input/R$attr;->handwritingModeDisplayColor:I

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    const/high16 v3, 0x41c00000    # 24.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 101
    new-instance v2, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPenColor:I

    invoke-direct {v2, p1, v3}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

    .line 103
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/nuance/swype/input/Stroke;->create(I)Lcom/nuance/swype/input/Stroke;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->fading()V

    return-void
.end method

.method private fading()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

    iget v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-lez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->reduceAlpha()V

    .line 178
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    .line 179
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 181
    :cond_0
    return-void
.end method

.method private getWritingPadWidth()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->writingPadWidth:I

    if-lez v0, :cond_0

    .line 170
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->writingPadWidth:I

    .line 172
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private startFading()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 187
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

    iget v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-lez v0, :cond_0

    .line 189
    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStarted:Z

    .line 190
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStarted:Z

    goto :goto_0
.end method

.method private stopFading()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->clear()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStarted:Z

    .line 200
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->stopFading()V

    .line 352
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    .line 353
    return-void
.end method

.method public clearArcs()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Stroke;->clear()V

    .line 208
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    .line 209
    return-void
.end method

.method public getMaxOffsetSquare()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOffsetSquare:I

    return v0
.end method

.method public getMaxOffsetSquare(IILandroid/view/MotionEvent;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 334
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 335
    iget-wide v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFirstDownTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 336
    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalX:I

    sub-int/2addr v3, p1

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalX:I

    sub-int/2addr v4, p1

    mul-int v1, v3, v4

    .line 337
    .local v1, "xOffsetSquare":I
    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalY:I

    sub-int/2addr v3, p2

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalY:I

    sub-int/2addr v4, p2

    mul-int v2, v3, v4

    .line 338
    .local v2, "yOffsetSquare":I
    add-int v0, v1, v2

    .line 339
    .local v0, "offsetSquare":I
    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOffsetSquare:I

    if-le v0, v3, :cond_0

    .line 340
    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOffsetSquare:I

    .line 344
    .end local v0    # "offsetSquare":I
    .end local v1    # "xOffsetSquare":I
    .end local v2    # "yOffsetSquare":I
    :cond_0
    return-void
.end method

.method public isFullScreen()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mIsFullScreen:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/nuance/swype/input/HandWritingView;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    check-cast v7, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .line 133
    .local v7, "v":Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
    invoke-virtual {v7}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getHandWritingMode()I

    move-result v2

    .line 136
    .local v2, "mode":I
    iget-object v10, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

    invoke-virtual {v10, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->draw(Landroid/graphics/Canvas;)V

    .line 137
    iget-boolean v10, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStarted:Z

    if-eqz v10, :cond_0

    .line 138
    iget-object v10, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

    invoke-virtual {v10}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->reduceAlpha()V

    .line 141
    :cond_0
    iget-object v10, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v10}, Lcom/nuance/swype/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v3

    .line 142
    .local v3, "paths":[Landroid/graphics/Path;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v10, v3

    if-ge v0, v10, :cond_1

    .line 143
    aget-object v10, v3, v0

    iget-object v11, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 148
    .local v4, "res":Landroid/content/res/Resources;
    if-nez v2, :cond_2

    sget v10, Lcom/nuance/swype/input/R$string;->korean:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 150
    .local v1, "label":Ljava/lang/CharSequence;
    :goto_1
    iget-object v10, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v6, v10

    .line 151
    .local v6, "textWidth":I
    iget-object v10, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    iget-object v11, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v5, v10

    .line 153
    .local v5, "textSize":I
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getWritingPadWidth()I

    move-result v10

    sub-int/2addr v10, v6

    div-int/lit8 v8, v10, 0x2

    .line 154
    .local v8, "x":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getHeight()I

    move-result v10

    sub-int v9, v10, v5

    .line 155
    .local v9, "y":I
    iget v10, v7, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardHeight:I

    if-lez v10, :cond_3

    iget-boolean v10, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mIsFullScreen:Z

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v10

    sget-object v11, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v10, v11, :cond_3

    .line 157
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    int-to-float v11, v8

    iget v12, v7, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardHeight:I

    sub-int v12, v9, v12

    int-to-float v12, v12

    iget-object v13, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 162
    :goto_2
    return-void

    .line 148
    .end local v1    # "label":Ljava/lang/CharSequence;
    .end local v5    # "textSize":I
    .end local v6    # "textWidth":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_2
    sget v10, Lcom/nuance/swype/input/R$string;->label_symbol_key:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 159
    .restart local v1    # "label":Ljava/lang/CharSequence;
    .restart local v5    # "textSize":I
    .restart local v6    # "textWidth":I
    .restart local v8    # "x":I
    .restart local v9    # "y":I
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    int-to-float v11, v8

    int-to-float v12, v9

    iget-object v13, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/HandWritingView;->onMeasure(II)V

    .line 126
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x1

    .line 221
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 224
    if-ne v4, v8, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->startFading()V

    .line 226
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Stroke;->clear()V

    .line 227
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    .line 326
    :cond_0
    :goto_0
    return v8

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->isFullScreen()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 232
    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    if-ne v4, v10, :cond_3

    .line 233
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v4, p1}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->transferKeyEvent(Landroid/view/MotionEvent;)Z

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v8, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 236
    :cond_2
    iput v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 237
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v4, v5}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->resetArea(I)V

    goto :goto_0

    .line 240
    :cond_3
    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    if-ne v4, v8, :cond_5

    .line 241
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v4}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->isSpeechPopupShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 246
    :cond_4
    iput v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mLastDownTime:J

    .line 251
    iget-wide v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mLastDownTime:J

    iget-wide v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFirstDownTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getMaxOffsetSquare()I

    move-result v4

    const/16 v5, 0x226

    if-ge v4, v5, :cond_5

    .line 253
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    const/4 v5, -0x2

    invoke-interface {v4, v5}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->resetArea(I)V

    .line 254
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->clearAll()V

    .line 255
    iput-boolean v8, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    .line 256
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    goto :goto_0

    .line 264
    :cond_5
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/Stroke;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 323
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    goto :goto_0

    .line 269
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 270
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 271
    .local v3, "y":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->isFullScreen()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 272
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-interface {v4, v5, v6}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->pointInSelectionArea(II)Z

    move-result v4

    if-ne v8, v4, :cond_9

    .line 274
    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    if-nez v4, :cond_8

    .line 276
    iput v8, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 295
    :cond_6
    :goto_2
    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    if-eqz v4, :cond_7

    .line 296
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->clearAll()V

    .line 297
    iput-boolean v9, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    .line 299
    :cond_7
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    invoke-interface {v4, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    goto :goto_1

    .line 279
    :cond_8
    iput v10, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 280
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    invoke-interface {v4, p1}, Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;->transferKeyEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 286
    :cond_9
    iput v8, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 287
    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    if-eqz v4, :cond_6

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFirstDownTime:J

    .line 289
    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalX:I

    .line 290
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOriginalY:I

    .line 291
    iput v9, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOffsetSquare:I

    goto :goto_2

    .line 304
    .end local v2    # "x":I
    .end local v3    # "y":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 305
    .restart local v2    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 307
    .restart local v3    # "y":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->isFullScreen()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 308
    invoke-virtual {p0, v2, v3, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getMaxOffsetSquare(IILandroid/view/MotionEvent;)V

    .line 310
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    goto/16 :goto_0

    .line 313
    .end local v2    # "x":I
    .end local v3    # "y":I
    :pswitch_2
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v1

    .line 314
    .local v1, "paths":[Landroid/graphics/Path;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v4, v1

    if-ge v0, v4, :cond_b

    .line 315
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->add(Landroid/graphics/Path;)V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 317
    :cond_b
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->startFading()V

    .line 318
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v5}, Lcom/nuance/swype/input/Stroke;->getArcs()[Lcom/nuance/swype/input/Stroke$Arc;

    move-result-object v5

    invoke-interface {v4, v5, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V

    .line 319
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Stroke;->clear()V

    goto/16 :goto_0

    .line 267
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
    .line 357
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 358
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    const-string v2, "pen_color"

    const/16 v3, 0x18

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPenColor:I

    .line 362
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPenColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 364
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v2, "hwr_pen_size"

    const/high16 v3, 0x40c00000    # 6.0f

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mSize:I

    .line 366
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 368
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

    .line 369
    new-instance v2, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPenColor:I

    invoke-direct {v2, v3, v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;

    .line 372
    invoke-super {p0, p1}, Lcom/nuance/swype/input/HandWritingView;->onWindowVisibilityChanged(I)V

    .line 373
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .param p1, "fullScreen"    # Z

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 215
    :cond_0
    iput-boolean p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mIsFullScreen:Z

    .line 216
    return-void
.end method

.method public setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V
    .locals 1
    .param p1, "aListener"    # Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->setScrollListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 72
    return-void
.end method

.method public setNewSession(Z)V
    .locals 0
    .param p1, "newSession"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mNewSession:Z

    .line 348
    return-void
.end method

.method public setPointStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mPointInInvalidArea:I

    .line 185
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->writingPadWidth:I

    .line 166
    return-void
.end method
