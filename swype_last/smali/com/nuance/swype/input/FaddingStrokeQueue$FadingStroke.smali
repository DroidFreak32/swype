.class public Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;
.super Ljava/lang/Object;
.source "FaddingStrokeQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/FaddingStrokeQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FadingStroke"
.end annotation


# instance fields
.field public mColor:I

.field public mCurrentAlpha:I

.field public mPaint:Landroid/graphics/Paint;

.field public mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 130
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iput p2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mColor:I

    .line 131
    iget v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    .line 132
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPath:Landroid/graphics/Path;

    .line 133
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPaint:Landroid/graphics/Paint;

    .line 134
    iget-object v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 136
    iget-object v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 138
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->max_height_for_fullscreen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 146
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    const-string/jumbo v3, "hwr_pen_size"

    const/high16 v4, 0x40a00000    # 5.0f

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v1

    .line 148
    .local v1, "penSize":I
    iget-object v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPaint:Landroid/graphics/Paint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    iget-object v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    return-void
.end method


# virtual methods
.method public decreaseAlpha(Z)V
    .registers 8
    .param p1, "pendown"    # Z

    .prologue
    const/16 v3, 0xa

    .line 167
    if-eqz p1, :cond_2e

    .line 168
    const/16 v0, 0xc

    .line 172
    .local v0, "speed":I
    :goto_6
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    if-le v1, v0, :cond_31

    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    if-le v1, v3, :cond_31

    .line 173
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    .line 181
    :goto_14
    iget-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    iget v3, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v5, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mColor:I

    .line 182
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 181
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 183
    return-void

    .line 170
    .end local v0    # "speed":I
    :cond_2e
    const/16 v0, 0x8

    .restart local v0    # "speed":I
    goto :goto_6

    .line 174
    :cond_31
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_41

    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    if-le v1, v3, :cond_41

    .line 175
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    goto :goto_14

    .line 178
    :cond_41
    const/4 v1, 0x5

    iput v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    goto :goto_14
.end method

.method public resetAlpha()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 160
    iget v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3
    .param p1, "width"    # F

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 155
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    return-void
.end method
