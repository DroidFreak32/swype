.class final Landroid/support/v7/widget/CardViewApi21;
.super Ljava/lang/Object;
.source "CardViewApi21.java"

# interfaces
.implements Landroid/support/v7/widget/CardViewImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCardBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;
    .registers 2
    .param p0, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 112
    invoke-interface {p0}, Landroid/support/v7/widget/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    return-object v0
.end method


# virtual methods
.method public final getElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public final getMaxElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 53
    invoke-static {p1}, Landroid/support/v7/widget/CardViewApi21;->getCardBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    .line 2074
    iget v0, v0, Landroid/support/v7/widget/RoundRectDrawable;->mPadding:F

    .line 53
    return v0
.end method

.method public final getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 4
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 63
    .line 4068
    invoke-static {p1}, Landroid/support/v7/widget/CardViewApi21;->getCardBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    .line 4147
    iget v0, v0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    .line 63
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 4
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 58
    .line 3068
    invoke-static {p1}, Landroid/support/v7/widget/CardViewApi21;->getCardBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    .line 3147
    iget v0, v0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    .line 58
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getRadius(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 68
    invoke-static {p1}, Landroid/support/v7/widget/CardViewApi21;->getCardBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    .line 5147
    iget v0, v0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    .line 68
    return v0
.end method

.method public final initStatic()V
    .registers 1

    .prologue
    .line 42
    return-void
.end method

.method public final initialize(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/Context;IFFF)V
    .registers 10
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # I
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .prologue
    .line 26
    new-instance v0, Landroid/support/v7/widget/RoundRectDrawable;

    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/RoundRectDrawable;-><init>(IF)V

    .line 27
    .local v0, "background":Landroid/support/v7/widget/RoundRectDrawable;
    invoke-interface {p1, v0}, Landroid/support/v7/widget/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 31
    invoke-virtual {v1, p5}, Landroid/view/View;->setElevation(F)V

    .line 32
    invoke-virtual {p0, p1, p6}, Landroid/support/v7/widget/CardViewApi21;->setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 33
    return-void
.end method

.method public final onCompatPaddingChanged(Landroid/support/v7/widget/CardViewDelegate;)V
    .registers 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 98
    .line 8053
    invoke-static {p1}, Landroid/support/v7/widget/CardViewApi21;->getCardBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    .line 8074
    iget v0, v0, Landroid/support/v7/widget/RoundRectDrawable;->mPadding:F

    .line 98
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/CardViewApi21;->setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 99
    return-void
.end method

.method public final onPreventCornerOverlapChanged(Landroid/support/v7/widget/CardViewDelegate;)V
    .registers 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 103
    .line 9053
    invoke-static {p1}, Landroid/support/v7/widget/CardViewApi21;->getCardBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    .line 9074
    iget v0, v0, Landroid/support/v7/widget/RoundRectDrawable;->mPadding:F

    .line 103
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/CardViewApi21;->setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 104
    return-void
.end method

.method public final setBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;I)V
    .registers 5
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "color"    # I

    .prologue
    .line 108
    invoke-static {p1}, Landroid/support/v7/widget/CardViewApi21;->getCardBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    .line 9151
    iget-object v1, v0, Landroid/support/v7/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9152
    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawable;->invalidateSelf()V

    .line 109
    return-void
.end method

.method public final setElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .registers 4
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "elevation"    # F

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setElevation(F)V

    .line 74
    return-void
.end method

.method public final setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .registers 7
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .prologue
    .line 46
    invoke-static {p1}, Landroid/support/v7/widget/CardViewApi21;->getCardBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    .line 2062
    iget v3, v0, Landroid/support/v7/widget/RoundRectDrawable;->mPadding:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_1a

    iget-boolean v3, v0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForPadding:Z

    if-ne v3, v1, :cond_1a

    iget-boolean v3, v0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForRadius:Z

    if-eq v3, v2, :cond_27

    .line 2066
    :cond_1a
    iput p2, v0, Landroid/support/v7/widget/RoundRectDrawable;->mPadding:F

    .line 2067
    iput-boolean v1, v0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 2068
    iput-boolean v2, v0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 2069
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 2070
    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawable;->invalidateSelf()V

    .line 48
    :cond_27
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 49
    return-void
.end method

.method public final setRadius(Landroid/support/v7/widget/CardViewDelegate;F)V
    .registers 5
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "radius"    # F

    .prologue
    .line 37
    invoke-static {p1}, Landroid/support/v7/widget/CardViewApi21;->getCardBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    .line 1123
    iget v1, v0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_13

    .line 1126
    iput p2, v0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    .line 1127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 1128
    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawable;->invalidateSelf()V

    .line 38
    :cond_13
    return-void
.end method

.method public final updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V
    .registers 8
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    const/4 v5, 0x0

    .line 83
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v4

    if-nez v4, :cond_b

    .line 84
    invoke-interface {p1, v5, v5, v5, v5}, Landroid/support/v7/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 94
    :goto_a
    return-void

    .line 6053
    :cond_b
    invoke-static {p1}, Landroid/support/v7/widget/CardViewApi21;->getCardBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v4

    .line 6074
    iget v0, v4, Landroid/support/v7/widget/RoundRectDrawable;->mPadding:F

    .line 7068
    .local v0, "elevation":F
    invoke-static {p1}, Landroid/support/v7/widget/CardViewApi21;->getCardBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v4

    .line 7147
    iget v2, v4, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    .line 89
    .local v2, "radius":F
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 91
    .local v1, "hPadding":I
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 93
    .local v3, "vPadding":I
    invoke-interface {p1, v1, v3, v1, v3}, Landroid/support/v7/widget/CardViewDelegate;->setShadowPadding(IIII)V

    goto :goto_a
.end method
