.class public Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;
.super Landroid/view/View;
.source "EmojiPageIndicatorView.java"


# static fields
.field private static final DEFAULT_HEIGHT:F = 10.0f

.field private static final DEFAULT_SPACING:F = 10.0f

.field private static final DEFAULT_WIDTH:F = 10.0f


# instance fields
.field activeState:[I

.field private dotDrawable:Landroid/graphics/drawable/Drawable;

.field private dotHeight:F

.field private dotWidth:F

.field private drawDebug:Lcom/nuance/swype/util/DrawDebug;

.field private horSpacing:F

.field inactiveState:[I

.field private pageCount:I

.field private pageIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-array v2, v6, [I

    const v3, 0x10100a2

    aput v3, v2, v4

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->activeState:[I

    .line 34
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->inactiveState:[I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->EmojiPageIndicatorStyle:[I

    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/nuance/swype/input/R$styleable;->EmojiPageIndicatorStyle_pageIndicatorSrc:I

    .line 49
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 50
    .local v1, "emojiPageIndicatorResId":I
    sget v2, Lcom/nuance/swype/input/R$styleable;->EmojiPageIndicatorStyle_pageIndicatorWidth:I

    .line 51
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->dotWidth:F

    .line 52
    sget v2, Lcom/nuance/swype/input/R$styleable;->EmojiPageIndicatorStyle_pageIndicatorHeight:I

    .line 53
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->dotHeight:F

    .line 54
    sget v2, Lcom/nuance/swype/input/R$styleable;->EmojiPageIndicatorStyle_pageIndicatorSpacing:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->horSpacing:F

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->dotDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    iput v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->pageCount:I

    .line 59
    iput v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->pageIndex:I

    .line 62
    return-void
.end method

.method private getContentWidth()I
    .locals 3

    .prologue
    .line 118
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->pageCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->dotWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->horSpacing:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v12, 0x11

    const/4 v13, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 70
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getPaddingBottom()I

    move-result v11

    add-int v5, v10, v11

    .line 72
    .local v5, "verPad":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getHeight()I

    move-result v10

    sub-int v1, v10, v5

    .line 73
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getPaddingTop()I

    move-result v10

    iget v11, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->dotHeight:F

    float-to-int v11, v11

    invoke-static {v1, v11, v12}, Lcom/nuance/swype/util/GeomUtil;->getOffsetY(III)I

    move-result v11

    add-int v8, v10, v11

    .line 75
    .local v8, "yPos":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getPaddingRight()I

    move-result v11

    add-int v2, v10, v11

    .line 76
    .local v2, "horPad":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getWidth()I

    move-result v10

    sub-int v6, v10, v2

    .line 78
    .local v6, "width":I
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getContentWidth()I

    move-result v0

    .line 79
    .local v0, "contentWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getPaddingLeft()I

    move-result v10

    invoke-static {v6, v0, v12}, Lcom/nuance/swype/util/GeomUtil;->getOffsetX(III)I

    move-result v11

    add-int v7, v10, v11

    .line 82
    .local v7, "xPos":I
    if-lez v0, :cond_1

    int-to-float v10, v6

    int-to-float v11, v0

    div-float v4, v10, v11

    .line 84
    .local v4, "scale":F
    :goto_0
    iget-object v10, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->dotDrawable:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->dotWidth:F

    float-to-int v11, v11

    iget v12, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->dotHeight:F

    float-to-int v12, v12

    invoke-virtual {v10, v13, v13, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->save(I)I

    .line 88
    cmpg-float v9, v4, v9

    if-gez v9, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p1, v4, v4, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 91
    :cond_0
    int-to-float v9, v7

    int-to-float v10, v8

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_1
    iget v9, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->pageCount:I

    if-ge v3, v9, :cond_3

    .line 93
    iget v9, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->pageIndex:I

    if-ne v3, v9, :cond_2

    .line 94
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->dotDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->activeState:[I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 98
    :goto_2
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->dotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    iget v9, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->dotWidth:F

    iget v10, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->horSpacing:F

    add-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "idx":I
    .end local v4    # "scale":F
    :cond_1
    move v4, v9

    .line 82
    goto :goto_0

    .line 96
    .restart local v3    # "idx":I
    .restart local v4    # "scale":F
    :cond_2
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->dotDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->inactiveState:[I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 101
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->drawDebug:Lcom/nuance/swype/util/DrawDebug;

    if-eqz v9, :cond_4

    .line 103
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->drawDebug:Lcom/nuance/swype/util/DrawDebug;

    invoke-virtual {v9, p0, p1}, Lcom/nuance/swype/util/DrawDebug;->drawPaddingOutline(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 105
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getContentWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 112
    .local v0, "minWidth":I
    invoke-static {v0, p1}, Lcom/nuance/swype/util/ViewUtil;->getDefaultSizePreferMin(II)I

    move-result v1

    .line 113
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getDefaultSize(II)I

    move-result v2

    .line 112
    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->setMeasuredDimension(II)V

    .line 115
    return-void
.end method

.method public setActivePage(I)V
    .locals 0
    .param p1, "pageNumber"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->pageIndex:I

    .line 129
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->invalidate()V

    .line 130
    return-void
.end method

.method public setNumberOfPages(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->pageCount:I

    .line 123
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->requestLayout()V

    .line 124
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->invalidate()V

    .line 125
    return-void
.end method
