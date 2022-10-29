.class public Lcom/nuance/swype/widget/SimpleTextView;
.super Landroid/view/View;
.source "SimpleTextView.java"


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private color:Landroid/content/res/ColorStateList;

.field private final drawDebug:Lcom/nuance/swype/util/DrawDebug;

.field private gravity:I

.field private paint:Landroid/graphics/Paint;

.field private text:Ljava/lang/String;

.field private useFullWidth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/swype/widget/SimpleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/widget/SimpleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->useFullWidth:Z

    .line 58
    iput v1, p0, Lcom/nuance/swype/widget/SimpleTextView;->gravity:I

    .line 60
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    .line 186
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->bounds:Landroid/graphics/Rect;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->drawDebug:Lcom/nuance/swype/util/DrawDebug;

    .line 40
    iget-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 41
    return-void
.end method

.method private getFullWidth(Ljava/lang/String;)I
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v2, p0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 179
    .local v0, "advanceWidth":I
    iget-object v2, p0, Lcom/nuance/swype/widget/SimpleTextView;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 180
    .local v1, "left":I
    iget-object v2, p0, Lcom/nuance/swype/widget/SimpleTextView;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 183
    sub-int/2addr v2, v1

    return v2
.end method

.method private setRawTextSize(F)V
    .registers 3
    .param p1, "size"    # F

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    .line 105
    iget-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    invoke-virtual {p0}, Lcom/nuance/swype/widget/SimpleTextView;->requestLayout()V

    .line 108
    :cond_12
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->color:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()F
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/widget/SimpleTextView;->color:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/widget/SimpleTextView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/widget/SimpleTextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/widget/SimpleTextView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/widget/SimpleTextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/widget/SimpleTextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v10, v2, v3

    .line 125
    .local v10, "internalWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/widget/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 127
    .local v11, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/widget/SimpleTextView;->useFullWidth:Z

    if-eqz v2, :cond_e2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/nuance/swype/widget/SimpleTextView;->getFullWidth(Ljava/lang/String;)I

    move-result v12

    .line 131
    .local v12, "textWidth":I
    :goto_44
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/widget/SimpleTextView;->gravity:I

    and-int/lit8 v2, v2, 0x7

    .line 132
    packed-switch v2, :pswitch_data_f4

    .line 135
    :pswitch_4d
    sub-int v2, v10, v12

    div-int/lit8 v13, v2, 0x2

    .line 146
    .local v13, "x":I
    :goto_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/widget/SimpleTextView;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    add-int/2addr v13, v2

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    .line 151
    .local v8, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v2, v8, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/widget/SimpleTextView;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/widget/SimpleTextView;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v9, v2, v3

    .line 153
    .local v9, "fontHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/widget/SimpleTextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v9

    div-int/lit8 v16, v2, 0x2

    .line 154
    .local v16, "yTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/widget/SimpleTextView;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v15, v2

    .line 155
    .local v15, "yOffsetToBaseline":I
    add-int v14, v16, v15

    .line 157
    .local v14, "yBaseline":I
    int-to-float v2, v13

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/widget/SimpleTextView;->drawDebug:Lcom/nuance/swype/util/DrawDebug;

    if-eqz v2, :cond_cd

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/widget/SimpleTextView;->drawDebug:Lcom/nuance/swype/util/DrawDebug;

    int-to-float v3, v13

    int-to-float v7, v14

    .line 1036
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1037
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1038
    float-to-int v3, v3

    int-to-float v6, v3

    float-to-int v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/nuance/swype/util/DrawDebug;->drawOriginLines$38ef7fb0(Landroid/graphics/Canvas;IIFF)V

    .line 162
    :cond_cd
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/widget/SimpleTextView;->drawDebug:Lcom/nuance/swype/util/DrawDebug;

    if-eqz v2, :cond_e1

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/widget/SimpleTextView;->drawDebug:Lcom/nuance/swype/util/DrawDebug;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/nuance/swype/util/DrawDebug;->drawPaddingOutline(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 167
    :cond_e1
    return-void

    .line 127
    .end local v8    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v9    # "fontHeight":I
    .end local v12    # "textWidth":I
    .end local v13    # "x":I
    .end local v14    # "yBaseline":I
    .end local v15    # "yOffsetToBaseline":I
    .end local v16    # "yTop":I
    :cond_e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/widget/SimpleTextView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v12

    goto/16 :goto_44

    .line 138
    .restart local v12    # "textWidth":I
    :pswitch_ec
    sub-int v13, v10, v12

    .line 139
    .restart local v13    # "x":I
    goto/16 :goto_51

    .line 141
    .end local v13    # "x":I
    :pswitch_f0
    const/4 v13, 0x0

    .restart local v13    # "x":I
    goto/16 :goto_51

    .line 132
    nop

    :pswitch_data_f4
    .packed-switch 0x800003
        :pswitch_f0
        :pswitch_4d
        :pswitch_ec
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 196
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 197
    .local v15, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 198
    .local v6, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 199
    .local v16, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 201
    .local v7, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/widget/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1190
    .local v11, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/widget/SimpleTextView;->bounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 204
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/widget/SimpleTextView;->useFullWidth:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9d

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/nuance/swype/widget/SimpleTextView;->getFullWidth(Ljava/lang/String;)I

    move-result v12

    .line 206
    .local v12, "textWidth":I
    :goto_43
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/widget/SimpleTextView;->getPaddingLeft()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/widget/SimpleTextView;->getPaddingRight()I

    move-result v18

    add-int v10, v17, v18

    .line 207
    .local v10, "paddingWidth":I
    add-int v9, v12, v10

    .line 210
    .local v9, "minNeededWidth":I
    sparse-switch v15, :sswitch_data_ba

    .line 219
    move v14, v9

    .line 224
    .local v14, "width":I
    :goto_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .line 226
    .local v4, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/widget/SimpleTextView;->getPaddingTop()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/widget/SimpleTextView;->getPaddingBottom()I

    move-result v18

    add-int v13, v17, v18

    .line 234
    .local v13, "verPadding":I
    iget v0, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/widget/SimpleTextView;->bounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/widget/SimpleTextView;->bounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v17, v17, v18

    .line 235
    add-int v8, v17, v13

    .line 238
    .local v8, "minNeededHeight":I
    sparse-switch v6, :sswitch_data_c4

    .line 247
    move v5, v8

    .line 251
    .local v5, "height":I
    :goto_97
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/nuance/swype/widget/SimpleTextView;->setMeasuredDimension(II)V

    .line 252
    return-void

    .line 204
    .end local v4    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v5    # "height":I
    .end local v8    # "minNeededHeight":I
    .end local v9    # "minNeededWidth":I
    .end local v10    # "paddingWidth":I
    .end local v12    # "textWidth":I
    .end local v13    # "verPadding":I
    .end local v14    # "width":I
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/widget/SimpleTextView;->bounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v12

    goto :goto_43

    .line 212
    .restart local v9    # "minNeededWidth":I
    .restart local v10    # "paddingWidth":I
    .restart local v12    # "textWidth":I
    :sswitch_a8
    move/from16 v0, v16

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 213
    .restart local v14    # "width":I
    goto :goto_53

    .line 215
    .end local v14    # "width":I
    :sswitch_af
    move/from16 v14, v16

    .line 216
    .restart local v14    # "width":I
    goto :goto_53

    .line 240
    .restart local v4    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v8    # "minNeededHeight":I
    .restart local v13    # "verPadding":I
    :sswitch_b2
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 241
    .restart local v5    # "height":I
    goto :goto_97

    .line 243
    .end local v5    # "height":I
    :sswitch_b7
    move v5, v7

    .line 244
    .restart local v5    # "height":I
    goto :goto_97

    .line 210
    nop

    :sswitch_data_ba
    .sparse-switch
        -0x80000000 -> :sswitch_a8
        0x40000000 -> :sswitch_af
    .end sparse-switch

    .line 238
    :sswitch_data_c4
    .sparse-switch
        -0x80000000 -> :sswitch_b2
        0x40000000 -> :sswitch_b7
    .end sparse-switch
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 111
    iget v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->gravity:I

    if-eq v0, p1, :cond_9

    .line 112
    iput p1, p0, Lcom/nuance/swype/widget/SimpleTextView;->gravity:I

    .line 113
    invoke-virtual {p0}, Lcom/nuance/swype/widget/SimpleTextView;->requestLayout()V

    .line 115
    :cond_9
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->text:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/nuance/swype/widget/SimpleTextView;->requestLayout()V

    .line 85
    return-void
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 63
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->color:Landroid/content/res/ColorStateList;

    .line 64
    invoke-virtual {p0}, Lcom/nuance/swype/widget/SimpleTextView;->invalidate()V

    .line 65
    return-void
.end method

.method public setTextSize(IF)V
    .registers 5
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/nuance/swype/widget/SimpleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 93
    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/widget/SimpleTextView;->setRawTextSize(F)V

    .line 95
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_10

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/widget/SimpleTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 74
    invoke-virtual {p0}, Lcom/nuance/swype/widget/SimpleTextView;->requestLayout()V

    .line 76
    :cond_10
    return-void
.end method
