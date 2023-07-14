.class public final Lcom/nuance/swype/util/DrawDebug;
.super Ljava/lang/Object;
.source "DrawDebug.java"


# instance fields
.field private final baselinePaint:Landroid/graphics/Paint;

.field private final borderDrawable:Landroid/graphics/drawable/Drawable;

.field private final paddingDrawable:Landroid/graphics/drawable/Drawable;


# virtual methods
.method public final drawBorderOutline$1be95c50(Landroid/graphics/Canvas;II)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lcom/nuance/swype/util/DrawDebug;->borderDrawable:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, p2, 0x0

    add-int/lit8 v2, p3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    iget-object v0, p0, Lcom/nuance/swype/util/DrawDebug;->borderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    return-void
.end method

.method public final drawOriginLines$38ef7fb0(Landroid/graphics/Canvas;IIFF)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "xOriginOffset"    # F
    .param p5, "baselineOffset"    # F

    .prologue
    const/4 v1, 0x0

    .line 48
    add-float v9, v1, p4

    .line 49
    .local v9, "xOrigin":F
    add-float v2, v1, p5

    .line 50
    .local v2, "yBaseline":F
    add-int/lit8 v0, p2, 0x0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/nuance/swype/util/DrawDebug;->baselinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 52
    add-int/lit8 v0, p3, 0x0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/nuance/swype/util/DrawDebug;->baselinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v9

    move v5, v1

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    return-void
.end method

.method public final drawPaddingOutline(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 60
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 61
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 62
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 63
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/nuance/swype/util/DrawDebug;->paddingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    iget-object v4, p0, Lcom/nuance/swype/util/DrawDebug;->paddingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    return-void
.end method
