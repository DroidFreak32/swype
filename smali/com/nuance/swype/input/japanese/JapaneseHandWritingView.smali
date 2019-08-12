.class public Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;
.super Lcom/nuance/swype/input/HandWritingView;
.source "JapaneseHandWritingView.java"


# static fields
.field private static final PEN_DOWN_LEFT_AREA:I = 0x1

.field private static final PEN_DOWN_NONE:I = 0x0

.field private static final PEN_DOWN_RIGHT_AREA:I = 0x2


# instance fields
.field private mCategray:I

.field private mDensity:F

.field private mInputViewArea:I

.field private mIsFullScreen:Z

.field private mLastPenDownArea:I

.field private final mMidLinePath:Landroid/graphics/Path;

.field private mMiddleLine:I

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

.field private m_pntSepLine:Landroid/graphics/Paint;

.field private m_pntText:Landroid/graphics/Paint;

.field private m_pntWrite:Landroid/graphics/Paint;

.field private writingPadWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-direct {v0}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    .line 28
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPath:Landroid/graphics/Path;

    .line 29
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mMidLinePath:Landroid/graphics/Path;

    .line 31
    iput-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    .line 32
    iput-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 33
    iput-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    .line 34
    iput-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntMidLine:Landroid/graphics/Paint;

    .line 35
    iput-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    .line 36
    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mCategray:I

    .line 37
    iput-boolean v9, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mNewSession:Z

    .line 43
    iput-boolean v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mIsFullScreen:Z

    .line 49
    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mInputViewArea:I

    .line 50
    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mMiddleLine:I

    .line 55
    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mLastPenDownArea:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 71
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$attr;->handwritingModeDisplayColor:I

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v1

    .line 74
    .local v1, "hmdColor":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    .line 75
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 77
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 78
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntSepLine:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/DashPathEffect;

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    const/high16 v8, 0x41200000    # 10.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 82
    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mDensity:F

    .line 84
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    .line 85
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    const/high16 v6, 0x41400000    # 12.0f

    iget v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mDensity:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    sget-object v5, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v5, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 89
    .local v2, "italic":Landroid/graphics/Typeface;
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 90
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    .line 93
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 95
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 97
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    const-string v6, "pen_color"

    const/16 v7, 0x18

    invoke-static {v5, v6, v7}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v3

    .line 100
    .local v3, "penColor":I
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    const/high16 v5, 0x40c00000    # 6.0f

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 104
    .local v4, "penSize":I
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mMiddleLine:I

    .line 108
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntMidLine:Landroid/graphics/Paint;

    .line 109
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntMidLine:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntMidLine:Landroid/graphics/Paint;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    return-void

    .line 80
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private onBufferDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getWidth()I

    move-result v1

    .line 279
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getHeight()I

    move-result v0

    .line 280
    .local v0, "height":I
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mWritingMode:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41800000    # 16.0f

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mDensity:F

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 287
    .local v2, "x":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41400000    # 12.0f

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mDensity:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 288
    .local v3, "y":F
    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 289
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mWritingMode:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 290
    neg-float v4, v3

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 293
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    iget v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mInputViewArea:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 294
    iget v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->writingPadWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mMiddleLine:I

    .line 295
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mMidLinePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 296
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mMidLinePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mMiddleLine:I

    int-to-float v5, v5

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 297
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mMidLinePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mMiddleLine:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 298
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mMidLinePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntMidLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->clearArcs()V

    .line 315
    return-void
.end method


# virtual methods
.method public clearArcs()V
    .locals 5

    .prologue
    .line 236
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 237
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 239
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/Point;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 241
    .local v1, "pt":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPath:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 245
    .end local v1    # "pt":Landroid/graphics/Point;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 247
    .restart local v1    # "pt":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPath:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 252
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/Point;>;"
    .end local v1    # "pt":Landroid/graphics/Point;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    .line 253
    return-void
.end method

.method public getCategray()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mCategray:I

    return v0
.end method

.method public getPenDownAreaByPoint(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 330
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mMiddleLine:I

    if-gt p1, v0, :cond_0

    .line 331
    const/4 v0, 0x1

    .line 333
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
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
    .line 123
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    return-object v0
.end method

.method public isArcsEmpty()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mIsFullScreen:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/nuance/swype/input/HandWritingView;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->onBufferDraw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 120
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 339
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/HandWritingView;->onMeasure(II)V

    .line 340
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 133
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-virtual {v7, p1}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 136
    if-ne v7, v6, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->clearArcs()V

    .line 138
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 139
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    move v5, v6

    .line 226
    :goto_0
    return v5

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 149
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 151
    .local v4, "y":I
    iget-boolean v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mNewSession:Z

    if-eqz v7, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->reset()V

    .line 153
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mNewSession:Z

    .line 155
    :cond_1
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mInputViewArea:I

    if-nez v5, :cond_2

    .line 156
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    invoke-interface {v5, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    .line 157
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v7, v3

    int-to-float v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 159
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    :goto_1
    move v5, v6

    .line 191
    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getPenDownAreaByPoint(I)I

    move-result v0

    .line 165
    .local v0, "area":I
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mLastPenDownArea:I

    if-eq v0, v5, :cond_3

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mLastPenDownArea:I

    if-nez v5, :cond_5

    .line 167
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    invoke-interface {v5, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    .line 168
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v7, v3

    int-to-float v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 170
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    .line 188
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setLastPenDownArea(I)V

    goto :goto_1

    .line 174
    :cond_5
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    instance-of v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    if-eqz v5, :cond_4

    .line 175
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    check-cast v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .line 177
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    invoke-virtual {v5, v7, p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->startRecognizeNow(Ljava/util/List;Landroid/view/View;)V

    .line 179
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->clearArcs()V

    .line 181
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    invoke-interface {v5, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    .line 182
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v7, v3

    int-to-float v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 183
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    goto :goto_2

    .line 195
    .end local v0    # "area":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 196
    .local v2, "points":I
    if-eqz v2, :cond_6

    .line 197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 198
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    float-to-int v3, v5

    .line 199
    .restart local v3    # "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    float-to-int v4, v5

    .line 200
    .restart local v4    # "y":I
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v7, v3

    int-to-float v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 204
    .end local v1    # "i":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 205
    .restart local v3    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 206
    .restart local v4    # "y":I
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v7, v3

    int-to-float v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    move v5, v6

    .line 211
    goto/16 :goto_0

    .line 214
    .end local v2    # "points":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 215
    .restart local v3    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 216
    .restart local v4    # "y":I
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v5, v7, p0}, Lcom/nuance/swype/input/HandWritingView$OnWritingAction;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 221
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 222
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    move v5, v6

    .line 223
    goto/16 :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    const-string v4, "pen_color"

    const/16 v5, 0x18

    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v1

    .line 260
    .local v1, "penColor":I
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 263
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x40c00000    # 6.0f

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 264
    .local v2, "penSize":I
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->m_pntWrite:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 265
    invoke-super {p0, p1}, Lcom/nuance/swype/input/HandWritingView;->onWindowVisibilityChanged(I)V

    .line 267
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0
    .param p1, "fullScreen"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mIsFullScreen:Z

    .line 304
    return-void
.end method

.method public setInputArea(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mInputViewArea:I

    .line 319
    return-void
.end method

.method public setLastPenDownArea(I)V
    .locals 0
    .param p1, "penDownArea"    # I

    .prologue
    .line 326
    iput p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mLastPenDownArea:I

    .line 327
    return-void
.end method

.method public setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V
    .locals 1
    .param p1, "aListener"    # Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mTwoFingerGestureDetector:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->setScrollListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 64
    return-void
.end method

.method public setNewSession(Z)V
    .locals 0
    .param p1, "newSession"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mNewSession:Z

    .line 275
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->writingPadWidth:I

    .line 128
    return-void
.end method

.method public setWritingMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "writingMode"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mWritingMode:Ljava/lang/String;

    .line 323
    return-void
.end method
