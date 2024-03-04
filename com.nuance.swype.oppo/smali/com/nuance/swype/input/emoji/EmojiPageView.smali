.class public Lcom/nuance/swype/input/emoji/EmojiPageView;
.super Landroid/view/View;
.source "EmojiPageView.java"


# instance fields
.field currentX:F

.field currentY:F

.field emojiPainter:Landroid/graphics/Paint;

.field private keyHeight:F

.field private keyHorizontalSpacing:F

.field private keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyWidth:F

.field private maxPerRow:I

.field private maxSpots:I

.field numberOfRows:I

.field private paddingLeft:F

.field private paddingTop:F

.field private performCenterAlignAdjustment:Z

.field private verticalSpacing:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->emoji_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 48
    .local v1, "fontSize":F
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojiPainter:Landroid/graphics/Paint;

    .line 49
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojiPainter:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$bool;->custom_emoji_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$color;->emoji_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 53
    .local v0, "color":I
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojiPainter:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    .end local v0    # "color":I
    :cond_0
    invoke-static {p1}, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->getEmojiNumberOfRows(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->numberOfRows:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->emoji_key_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyHeight:F

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->emoji_key_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyWidth:F

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->emoji_key_horizontal_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyHorizontalSpacing:F

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->emoji_key_vertical_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->verticalSpacing:F

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->emoji_page_paddingTop:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->paddingTop:F

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$bool;->emoji_center_align_adjustment:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->performCenterAlignAdjustment:Z

    .line 74
    return-void
.end method

.method private computePaddingOnSizeChange()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 163
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyWidth:F

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyHorizontalSpacing:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->maxPerRow:I

    .line 164
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->maxPerRow:I

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->numberOfRows:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->maxSpots:I

    .line 165
    iget-boolean v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->performCenterAlignAdjustment:Z

    if-eqz v1, :cond_0

    .line 168
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->maxPerRow:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyWidth:F

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyHorizontalSpacing:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyHorizontalSpacing:F

    div-float/2addr v2, v5

    add-float v0, v1, v2

    .line 172
    .local v0, "padding":F
    :goto_0
    div-float v1, v0, v5

    iput v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->paddingLeft:F

    .line 173
    return-void

    .line 170
    .end local v0    # "padding":F
    :cond_0
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->maxPerRow:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyWidth:F

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyHorizontalSpacing:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyHorizontalSpacing:F

    add-float v0, v1, v2

    .restart local v0    # "padding":F
    goto :goto_0
.end method

.method private setSelectedPoints(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->invalidate()V

    .line 124
    return-void
.end method


# virtual methods
.method public getItemAtPosition(FF)Ljava/lang/String;
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 82
    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->paddingLeft:F

    cmpg-float v6, p1, v6

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->width:I

    int-to-float v6, v6

    iget v7, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->paddingLeft:F

    sub-float/2addr v6, v7

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-object v5

    .line 87
    :cond_1
    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->paddingLeft:F

    sub-float v6, p1, v6

    iget v7, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyWidth:F

    iget v8, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyHorizontalSpacing:F

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 90
    .local v3, "keyX":I
    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->paddingTop:F

    sub-float v0, p2, v6

    .line 95
    .local v0, "actualY":F
    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyHeight:F

    iget v7, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->verticalSpacing:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v1, v6, v7

    .line 96
    .local v1, "heightPerKey":F
    div-float v6, v0, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 99
    .local v4, "keyY":I
    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->numberOfRows:I

    add-int/lit8 v6, v6, -0x1

    if-le v4, v6, :cond_2

    .line 100
    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->numberOfRows:I

    add-int/lit8 v4, v6, -0x1

    .line 104
    :cond_2
    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->maxPerRow:I

    if-ge v3, v6, :cond_0

    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->numberOfRows:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    cmpl-float v6, v0, v6

    if-gtz v6, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->invalidate()V

    .line 114
    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->maxPerRow:I

    mul-int/2addr v6, v4

    add-int v2, v3, v6

    .line 115
    .local v2, "keyIndex":I
    if-ltz v2, :cond_0

    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 116
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->paddingLeft:F

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->currentX:F

    .line 129
    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->paddingTop:F

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->currentY:F

    .line 130
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->width:I

    .line 131
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyList:Ljava/util/List;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->maxSpots:I

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    .local v1, "key":Ljava/lang/String;
    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->currentX:F

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->currentY:F

    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojiPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 135
    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->currentX:F

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyWidth:F

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyHorizontalSpacing:F

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->currentX:F

    .line 136
    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->currentX:F

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyWidth:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->width:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 137
    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->paddingLeft:F

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->currentX:F

    .line 138
    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->currentY:F

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyHeight:F

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->verticalSpacing:F

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->currentY:F

    goto :goto_0

    .line 149
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 158
    iput p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->width:I

    .line 159
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->computePaddingOnSizeChange()V

    .line 160
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public setKeyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyList:Ljava/util/List;

    .line 78
    return-void
.end method
