.class Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;
.super Ljava/lang/Object;
.source "AlphaHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaHandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadingStroke"
.end annotation


# instance fields
.field public final mColor:I

.field public mCurrentAlpha:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 209
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iput p2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mColor:I

    .line 210
    iget v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    .line 211
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    .line 212
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    .line 213
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 215
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 216
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40c00000    # 6.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    return-void
.end method


# virtual methods
.method public decreaseAlpha()V
    .locals 5

    .prologue
    .line 228
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    if-lez v0, :cond_0

    .line 229
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    iget v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mColor:I

    .line 235
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 234
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 236
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    goto :goto_0
.end method

.method public resetAlpha()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 222
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    .line 223
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    return-void
.end method
