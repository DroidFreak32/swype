.class public Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;
.super Landroid/view/View;
.source "EmojiPageIndicatorView.java"


# static fields
.field private static final DEFAULT_HEIGHT:F = 10.0f

.field private static final DEFAULT_SPACING:F = 10.0f

.field private static final DEFAULT_WIDTH:F = 10.0f


# instance fields
.field activeState:[I

.field private currentX:I

.field emojiPageIndicator:Landroid/graphics/drawable/Drawable;

.field inactiveState:[I

.field private mActivePageNumber:I

.field private mNumberOfPages:I

.field private mPageIndicatorHeight:F

.field private mPageIndicatorSpacing:F

.field private mPageIndicatorWidth:F

.field private startY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-array v2, v5, [I

    const v3, 0x10100a2

    aput v3, v2, v4

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->activeState:[I

    .line 42
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->inactiveState:[I

    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, "emojiPageIndicatorResId":I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->EmojiPageIndicatorStyle:[I

    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcom/nuance/swype/input/R$styleable;->EmojiPageIndicatorStyle_pageIndicatorSrc:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 30
    sget v2, Lcom/nuance/swype/input/R$styleable;->EmojiPageIndicatorStyle_pageIndicatorWidth:I

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mPageIndicatorWidth:F

    .line 31
    sget v2, Lcom/nuance/swype/input/R$styleable;->EmojiPageIndicatorStyle_pageIndicatorHeight:I

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mPageIndicatorHeight:F

    .line 32
    sget v2, Lcom/nuance/swype/input/R$styleable;->EmojiPageIndicatorStyle_pageIndicatorSpacing:I

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mPageIndicatorSpacing:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->emojiPageIndicator:Landroid/graphics/drawable/Drawable;

    .line 37
    iput v5, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mNumberOfPages:I

    .line 38
    iput v5, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mActivePageNumber:I

    .line 39
    return-void

    .line 34
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->currentX:I

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mNumberOfPages:I

    if-ge v0, v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->emojiPageIndicator:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->currentX:I

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->startY:I

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->currentX:I

    iget v5, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mPageIndicatorWidth:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->startY:I

    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mPageIndicatorHeight:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mActivePageNumber:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->emojiPageIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->activeState:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 60
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->emojiPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 63
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->currentX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mPageIndicatorWidth:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->currentX:I

    .line 65
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->currentX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mPageIndicatorSpacing:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->currentX:I

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->emojiPageIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->inactiveState:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    .line 67
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 71
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mNumberOfPages:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mPageIndicatorWidth:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mNumberOfPages:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mPageIndicatorSpacing:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 72
    .local v0, "w":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mPageIndicatorHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->startY:I

    .line 73
    invoke-virtual {p0, v0, p2}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->setMeasuredDimension(II)V

    .line 74
    return-void
.end method

.method public setActivePage(I)V
    .locals 0
    .param p1, "pageNumber"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mActivePageNumber:I

    .line 84
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->invalidate()V

    .line 85
    return-void
.end method

.method public setNumberOfPages(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->mNumberOfPages:I

    .line 78
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->requestLayout()V

    .line 79
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->invalidate()V

    .line 80
    return-void
.end method
