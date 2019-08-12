.class public Lcom/nuance/swype/widget/CustomTextView;
.super Landroid/widget/TextView;
.source "CustomTextView.java"


# static fields
.field private static final SPECIAL_CHARACTERS_NEED_MORE_SPACE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "CustomTextView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/widget/CustomTextView;->SPECIAL_CHARACTERS_NEED_MORE_SPACE:[C

    return-void

    :array_0
    .array-data 2
        0x1030s
        0x102fs
        0x1037s
        0x103es
        0x103ds
        0x1039s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method private static needMoreSpace(C)Z
    .locals 5
    .param p0, "c"    # C

    .prologue
    .line 98
    sget-object v0, Lcom/nuance/swype/widget/CustomTextView;->SPECIAL_CHARACTERS_NEED_MORE_SPACE:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v1, v0, v2

    .line 99
    .local v1, "ch":C
    if-ne p0, v1, :cond_0

    .line 100
    const/4 v4, 0x1

    .line 103
    .end local v1    # "ch":C
    :goto_1
    return v4

    .line 98
    .restart local v1    # "ch":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "ch":C
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 52
    .local v4, "paint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getCurrentTextColor()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 58
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v5, v10, v8, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 62
    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getGravity()I

    move-result v8

    and-int/lit8 v3, v8, 0x7

    .line 63
    .local v3, "grav":I
    packed-switch v3, :pswitch_data_0

    .line 74
    :pswitch_0
    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getWidth()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    .line 75
    .local v6, "x":I
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 78
    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/nuance/swype/widget/CustomTextView;->needMoreSpace(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v6, v8

    .line 83
    :cond_0
    invoke-static {v5, v0, v3, v4}, Lcom/nuance/swype/util/DrawingUtils;->hAdjustCharAlignment(Ljava/lang/String;Landroid/graphics/Rect;ILandroid/graphics/Paint;)I

    move-result v8

    add-int/2addr v6, v8

    .line 85
    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 87
    .local v1, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v8, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v2, v8, v9

    .line 91
    .local v2, "fontHeight":I
    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v7, v8, v9

    .line 93
    .local v7, "yBaseline":I
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {p1, v5, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    return-void

    .line 65
    .end local v1    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v2    # "fontHeight":I
    .end local v6    # "x":I
    .end local v7    # "yBaseline":I
    :pswitch_1
    const/4 v6, 0x0

    .line 66
    .restart local v6    # "x":I
    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 69
    .end local v6    # "x":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 70
    .restart local v6    # "x":I
    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 115
    invoke-super/range {p0 .. p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 116
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 117
    .local v10, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 118
    .local v3, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 119
    .local v11, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 121
    .local v4, "heightSize":I
    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, "text":Ljava/lang/String;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 123
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 124
    .local v7, "paint":Landroid/text/TextPaint;
    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v7, v8, v12, v13, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getPaddingRight()I

    move-result v13

    add-int v6, v12, v13

    .line 129
    .local v6, "minNeededWidth":I
    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-lez v12, :cond_0

    .line 130
    iget v12, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v6, v12

    .line 132
    :cond_0
    rem-int/lit8 v12, v6, 0x2

    add-int/2addr v6, v12

    .line 133
    sparse-switch v10, :sswitch_data_0

    .line 142
    move v9, v6

    .line 145
    .local v9, "width":I
    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/nuance/swype/widget/CustomTextView;->needMoreSpace(C)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v9, v12

    .line 150
    :cond_1
    invoke-virtual {v7}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 154
    .local v1, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v12, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v13, v0, Landroid/graphics/Rect;->top:I

    iget v14, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int/2addr v12, v13

    .line 155
    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/nuance/swype/widget/CustomTextView;->getPaddingBottom()I

    move-result v13

    add-int v5, v12, v13

    .line 156
    .local v5, "minNeededHeight":I
    sparse-switch v3, :sswitch_data_1

    .line 165
    move v2, v5

    .line 169
    .local v2, "height":I
    :goto_1
    invoke-virtual {p0, v9, v2}, Lcom/nuance/swype/widget/CustomTextView;->setMeasuredDimension(II)V

    .line 170
    return-void

    .line 135
    .end local v1    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v2    # "height":I
    .end local v5    # "minNeededHeight":I
    .end local v9    # "width":I
    :sswitch_0
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 136
    .restart local v9    # "width":I
    goto :goto_0

    .line 138
    .end local v9    # "width":I
    :sswitch_1
    move v9, v11

    .line 139
    .restart local v9    # "width":I
    goto :goto_0

    .line 158
    .restart local v1    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v5    # "minNeededHeight":I
    :sswitch_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 159
    .restart local v2    # "height":I
    goto :goto_1

    .line 161
    .end local v2    # "height":I
    :sswitch_3
    move v2, v4

    .line 162
    .restart local v2    # "height":I
    goto :goto_1

    .line 133
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 156
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method
