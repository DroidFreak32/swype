.class public final Lcom/nuance/swype/util/GeomUtil;
.super Ljava/lang/Object;
.source "GeomUtil.java"


# direct methods
.method public static confine(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7
    .param p0, "child"    # Landroid/graphics/Rect;
    .param p1, "parent"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 75
    .line 1052
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1053
    if-nez v0, :cond_15

    .line 1055
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1062
    .local v0, "dx":I
    :cond_15
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1063
    if-nez v1, :cond_29

    .line 1065
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 77
    .local v1, "dy":I
    :cond_29
    if-nez v0, :cond_2d

    if-eqz v1, :cond_31

    .line 78
    :cond_2d
    invoke-static {p0, v0, v1}, Lcom/nuance/swype/util/GeomUtil;->moveRectBy(Landroid/graphics/Rect;II)V

    .line 79
    const/4 v2, 0x1

    .line 81
    :cond_31
    return v2
.end method

.method public static confine(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 4
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "padding"    # I

    .prologue
    .line 92
    if-eqz p2, :cond_b

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1135
    invoke-static {v0, p2, p2, p2, p2}, Lcom/nuance/swype/util/GeomUtil;->shrink(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object p1

    .line 95
    :cond_b
    invoke-static {p0, p1}, Lcom/nuance/swype/util/GeomUtil;->confine(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public static expand(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 157
    iget v0, p1, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    neg-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/nuance/swype/util/GeomUtil;->shrink(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getOffsetX(III)I
    .registers 5
    .param p0, "areaWidth"    # I
    .param p1, "contentWidth"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 242
    and-int/lit8 v1, p2, 0x7

    packed-switch v1, :pswitch_data_10

    .line 251
    :pswitch_5
    sub-int v1, p0, p1

    div-int/lit8 v0, v1, 0x2

    .line 255
    .local v0, "offset":I
    :goto_9
    return v0

    .line 244
    .end local v0    # "offset":I
    :pswitch_a
    const/4 v0, 0x0

    .line 245
    .restart local v0    # "offset":I
    goto :goto_9

    .line 247
    .end local v0    # "offset":I
    :pswitch_c
    sub-int v0, p0, p1

    .line 248
    .restart local v0    # "offset":I
    goto :goto_9

    .line 242
    nop

    :pswitch_data_10
    .packed-switch 0x3
        :pswitch_a
        :pswitch_5
        :pswitch_c
    .end packed-switch
.end method

.method public static getOffsetY(III)I
    .registers 5
    .param p0, "areaHeight"    # I
    .param p1, "contentHeight"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 260
    and-int/lit8 v1, p2, 0x7

    packed-switch v1, :pswitch_data_10

    .line 269
    :pswitch_5
    sub-int v1, p0, p1

    div-int/lit8 v0, v1, 0x2

    .line 273
    .local v0, "offset":I
    :goto_9
    return v0

    .line 262
    .end local v0    # "offset":I
    :pswitch_a
    const/4 v0, 0x0

    .line 263
    .restart local v0    # "offset":I
    goto :goto_9

    .line 265
    .end local v0    # "offset":I
    :pswitch_c
    sub-int v0, p0, p1

    .line 266
    .restart local v0    # "offset":I
    goto :goto_9

    .line 260
    nop

    :pswitch_data_10
    .packed-switch 0x3
        :pswitch_a
        :pswitch_5
        :pswitch_c
    .end packed-switch
.end method

.method public static getRect(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static getSnapDist(III)I
    .registers 6
    .param p0, "v1"    # I
    .param p1, "v2"    # I
    .param p2, "threshold"    # I

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 162
    .local v0, "d1":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 163
    .local v1, "d2":I
    if-ge v0, v1, :cond_10

    .line 164
    if-ge v0, p2, :cond_e

    .line 166
    .end local p0    # "v1":I
    :goto_d
    return p0

    .restart local p0    # "v1":I
    :cond_e
    move p0, v2

    .line 164
    goto :goto_d

    .line 166
    :cond_10
    if-ge v1, p2, :cond_14

    move p0, p1

    goto :goto_d

    :cond_14
    move p0, v2

    goto :goto_d
.end method

.method public static getSnapDistHor(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 6
    .param p0, "child"    # Landroid/graphics/Rect;
    .param p1, "parent"    # Landroid/graphics/Rect;
    .param p2, "threshold"    # I

    .prologue
    .line 174
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1, p2}, Lcom/nuance/swype/util/GeomUtil;->getSnapDist(III)I

    move-result v0

    return v0
.end method

.method public static getSnapDistVer(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 6
    .param p0, "child"    # Landroid/graphics/Rect;
    .param p1, "parent"    # Landroid/graphics/Rect;
    .param p2, "threshold"    # I

    .prologue
    .line 182
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1, p2}, Lcom/nuance/swype/util/GeomUtil;->getSnapDist(III)I

    move-result v0

    return v0
.end method

.method public static moveRectBy(Landroid/graphics/Rect;II)V
    .registers 6
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 121
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 122
    .local v0, "height":I
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 123
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 124
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 125
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 126
    return-void
.end method

.method public static moveRectTo(Landroid/graphics/Rect;II)V
    .registers 6
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 108
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 109
    .local v0, "height":I
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 110
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 111
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 112
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 113
    return-void
.end method

.method public static moveRectTo(Landroid/graphics/Rect;[I)V
    .registers 4
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "pt"    # [I

    .prologue
    .line 116
    .line 2089
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 2093
    const/4 v1, 0x1

    aget v1, p1, v1

    .line 116
    invoke-static {p0, v0, v1}, Lcom/nuance/swype/util/GeomUtil;->moveRectTo(Landroid/graphics/Rect;II)V

    .line 117
    return-void
.end method

.method public static setSize(Landroid/graphics/Rect;II)V
    .registers 4
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 197
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 198
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 199
    return-void
.end method

.method private static shrink(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;
    .registers 6
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "leftPad"    # I
    .param p2, "topPad"    # I
    .param p3, "rightPad"    # I
    .param p4, "botPad"    # I

    .prologue
    .line 142
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 143
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 144
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p3

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 145
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p4

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 146
    return-object p0
.end method

.method public static shrink(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 153
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/nuance/swype/util/GeomUtil;->shrink(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
