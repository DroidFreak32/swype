.class Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;
.super Ljava/lang/Object;
.source "KoreanHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/korean/KoreanHandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FadingStroke"
.end annotation


# instance fields
.field public mColor:I

.field public mCurrentAlpha:I

.field public mPaint:Landroid/graphics/Paint;

.field public mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 383
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iput p2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mColor:I

    .line 384
    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mCurrentAlpha:I

    .line 385
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    .line 386
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    .line 388
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 390
    .local v3, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    const-string v4, "pen_color"

    const/16 v5, 0x18

    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v1

    .line 393
    .local v1, "penColor":I
    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mColor:I

    .line 394
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 396
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 397
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 398
    const-string v4, "hwr_pen_size"

    const/high16 v5, 0x40c00000    # 6.0f

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v2

    .line 400
    .local v2, "penSize":I
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 401
    return-void
.end method


# virtual methods
.method public decreaseAlpha()V
    .locals 5

    .prologue
    .line 411
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mCurrentAlpha:I

    if-lez v0, :cond_0

    .line 412
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mCurrentAlpha:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mCurrentAlpha:I

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mCurrentAlpha:I

    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 419
    return-void

    .line 414
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mCurrentAlpha:I

    goto :goto_0
.end method

.method public resetAlpha()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 405
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mCurrentAlpha:I

    .line 406
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    return-void
.end method
