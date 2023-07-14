.class public Lcom/nuance/swype/input/AlphaHandWritingView;
.super Landroid/view/View;
.source "AlphaHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;,
        Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;,
        Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;
    }
.end annotation


# static fields
.field private static final FADING_DELAY:I = 0x3c

.field private static final MSG_FADING:I = 0x1

.field private static final PEN_WIDTH:I = 0x6


# instance fields
.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private final mDensity:F

.field private mFadingStarted:Z

.field private final mFadingStrokeQueue:Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;

.field private final mHandler:Landroid/os/Handler;

.field private mOnWritingActionListener:Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mStroke:Lcom/nuance/swype/input/Stroke;

.field private mWritingMode:Ljava/lang/String;

.field private final mWritingModePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/AlphaHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "def"    # I

    .prologue
    const/4 v6, 0x1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v3, Lcom/nuance/swype/input/AlphaHandWritingView$1;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/AlphaHandWritingView$1;-><init>(Lcom/nuance/swype/input/AlphaHandWritingView;)V

    iput-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->handlerCallback:Landroid/os/Handler$Callback;

    .line 112
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v3}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mDensity:F

    .line 59
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 61
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v3, Lcom/nuance/swype/input/R$attr;->traceColor:I

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v2

    .line 62
    .local v2, "penColorStroke":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    .line 63
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    sget v4, Lcom/nuance/swype/input/R$attr;->handwritingModeDisplayColor:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$dimen;->hand_writing_mode_text_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 68
    .local v1, "italic":Landroid/graphics/Typeface;
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 70
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 73
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 74
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40c00000    # 6.0f

    iget v5, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mDensity:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    new-instance v3, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;

    invoke-direct {v3, p1, v2}, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mFadingStrokeQueue:Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;

    .line 78
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/nuance/swype/input/Stroke;->create(I)Lcom/nuance/swype/input/Stroke;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/AlphaHandWritingView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaHandWritingView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingView;->fading()V

    return-void
.end method

.method private fading()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mFadingStrokeQueue:Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;

    iget v0, v0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mFadingStrokeQueue:Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->reduceAlpha()V

    .line 141
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingView;->invalidate()V

    .line 142
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 144
    :cond_0
    return-void
.end method

.method private stopFading()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mFadingStrokeQueue:Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->clear()V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mFadingStarted:Z

    .line 160
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingView;->stopFading()V

    .line 192
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingView;->invalidate()V

    .line 193
    return-void
.end method

.method public getOnWritingActionListener()Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mWritingMode:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41800000    # 16.0f

    iget v6, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mDensity:F

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 120
    .local v2, "x":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41400000    # 12.0f

    iget v6, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mDensity:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 121
    .local v3, "y":F
    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mWritingMode:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    neg-float v4, v3

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mFadingStrokeQueue:Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->draw(Landroid/graphics/Canvas;)V

    .line 128
    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mFadingStarted:Z

    if-eqz v4, :cond_1

    .line 129
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mFadingStrokeQueue:Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;

    invoke-virtual {v4}, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->reduceAlpha()V

    .line 132
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v1

    .line 133
    .local v1, "paths":[Landroid/graphics/Path;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 134
    aget-object v4, v1, v0

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 92
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 93
    .local v0, "h":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 95
    .local v1, "w":I
    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/AlphaHandWritingView;->setMeasuredDimension(II)V

    .line 96
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/Stroke;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 184
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingView;->invalidate()V

    .line 187
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 170
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;

    invoke-interface {v2, p0}, Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    goto :goto_0

    .line 175
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v1

    .line 176
    .local v1, "paths":[Landroid/graphics/Path;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mFadingStrokeQueue:Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->add(Landroid/graphics/Path;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Stroke;->getArcs()[Lcom/nuance/swype/input/Stroke$Arc;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;->penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V

    .line 180
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Stroke;->clear()V

    goto :goto_1

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnWritingActionListener(Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;

    .line 83
    return-void
.end method

.method public setWritingMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mWritingMode:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public startFading()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 147
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mFadingStrokeQueue:Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;

    iget v0, v0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    if-lez v0, :cond_0

    .line 149
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mFadingStarted:Z

    .line 150
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView;->mFadingStarted:Z

    goto :goto_0
.end method
