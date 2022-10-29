.class public Lcom/facebook/share/internal/LikeBoxCountView;
.super Landroid/widget/FrameLayout;
.source "LikeBoxCountView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/LikeBoxCountView$1;,
        Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;
    }
.end annotation


# instance fields
.field private additionalTextPadding:I

.field private borderPaint:Landroid/graphics/Paint;

.field private borderRadius:F

.field private caretHeight:F

.field private caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

.field private caretWidth:F

.field private likeCountLabel:Landroid/widget/TextView;

.field private textPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    iput-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->initialize(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;FFFF)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 171
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 173
    .local v0, "borderPath":Landroid/graphics/Path;
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    mul-float v1, v5, v2

    .line 176
    .local v1, "ovalSize":F
    new-instance v2, Landroid/graphics/RectF;

    add-float v3, p2, v1

    add-float v4, p3, v1

    invoke-direct {v2, p2, p3, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-virtual {v0, v2, v3, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 179
    iget-object v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v3, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v2, v3, :cond_40

    .line 180
    sub-float v2, p4, p2

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    sub-float v2, p4, p2

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    sub-float v3, p3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    sub-float v2, p4, p2

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    :cond_40
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    sub-float v2, p4, v2

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 189
    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, p4, v1

    add-float v4, p3, v1

    invoke-direct {v2, v3, p3, p4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2, v3, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 192
    iget-object v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v3, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v2, v3, :cond_79

    .line 193
    sub-float v2, p5, p3

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p3

    invoke-virtual {v0, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 194
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v2, p4

    sub-float v3, p5, p3

    div-float/2addr v3, v5

    add-float/2addr v3, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 195
    sub-float v2, p5, p3

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p3

    invoke-virtual {v0, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 199
    :cond_79
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    sub-float v2, p5, v2

    invoke-virtual {v0, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 202
    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, p4, v1

    sub-float v4, p5, v1

    invoke-direct {v2, v3, v4, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 205
    iget-object v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v3, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v2, v3, :cond_b1

    .line 206
    sub-float v2, p4, p2

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    sub-float v2, p4, p2

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v3, p5

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 208
    sub-float v2, p4, p2

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    :cond_b1
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 215
    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, p5, v1

    add-float v4, p2, v1

    invoke-direct {v2, p2, v3, v4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2, v6, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 218
    iget-object v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v3, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v2, v3, :cond_e8

    .line 219
    sub-float v2, p5, p3

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p3

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 220
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    sub-float v2, p2, v2

    sub-float v3, p5, p3

    div-float/2addr v3, v5

    add-float/2addr v3, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    sub-float v2, p5, p3

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p3

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    :cond_e8
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    add-float/2addr v2, p3

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    iget-object v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 228
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->setWillNotDraw(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$dimen;->com_facebook_likeboxcountview_caret_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    .line 128
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$dimen;->com_facebook_likeboxcountview_caret_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    .line 129
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$dimen;->com_facebook_likeboxcountview_border_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    .line 132
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$color;->com_facebook_likeboxcountview_border_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$dimen;->com_facebook_likeboxcountview_border_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->initializeLikeCountLabel(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->addView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    .line 142
    return-void
.end method

.method private initializeLikeCountLabel(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 145
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    .line 146
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v0, "likeCountLabelLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    iget-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/R$dimen;->com_facebook_likeboxcountview_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 154
    iget-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/R$color;->com_facebook_likeboxcountview_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$dimen;->com_facebook_likeboxcountview_text_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->textPadding:I

    .line 159
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$dimen;->com_facebook_likeboxcountview_caret_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    .line 160
    return-void
.end method

.method private setAdditionalTextPadding(IIII)V
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->textPadding:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->textPadding:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->textPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->textPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 168
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getPaddingTop()I

    move-result v9

    .local v9, "top":I
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getPaddingLeft()I

    move-result v7

    .line 105
    .local v7, "left":I
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getPaddingRight()I

    move-result v1

    sub-int v8, v0, v1

    .local v8, "right":I
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    .line 107
    .local v6, "bottom":I
    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$1;->$SwitchMap$com$facebook$share$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition:[I

    iget-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    .line 122
    :goto_2c
    int-to-float v2, v7

    int-to-float v3, v9

    int-to-float v4, v8

    int-to-float v5, v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/internal/LikeBoxCountView;->drawBorder(Landroid/graphics/Canvas;FFFF)V

    .line 123
    return-void

    .line 109
    :pswitch_36
    int-to-float v0, v6

    iget v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    sub-float/2addr v0, v1

    float-to-int v6, v0

    .line 110
    goto :goto_2c

    .line 112
    :pswitch_3c
    int-to-float v0, v7

    iget v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 113
    goto :goto_2c

    .line 115
    :pswitch_42
    int-to-float v0, v9

    iget v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 116
    goto :goto_2c

    .line 118
    :pswitch_48
    int-to-float v0, v8

    iget v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    sub-float/2addr v0, v1

    float-to-int v8, v0

    goto :goto_2c

    .line 107
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_42
        :pswitch_48
        :pswitch_36
    .end packed-switch
.end method

.method public setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V
    .registers 5
    .param p1, "caretPosition"    # Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .prologue
    const/4 v2, 0x0

    .line 79
    iput-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 83
    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$1;->$SwitchMap$com$facebook$share$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition:[I

    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 98
    :goto_e
    return-void

    .line 85
    :pswitch_f
    iget v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v0, v2, v2, v2}, Lcom/facebook/share/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    goto :goto_e

    .line 88
    :pswitch_15
    iget v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v2, v0, v2, v2}, Lcom/facebook/share/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    goto :goto_e

    .line 91
    :pswitch_1b
    iget v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v2, v2, v0, v2}, Lcom/facebook/share/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    goto :goto_e

    .line 94
    :pswitch_21
    iget v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v2, v2, v2, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    goto :goto_e

    .line 83
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_21
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method
