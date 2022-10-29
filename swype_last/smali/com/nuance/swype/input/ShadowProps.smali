.class public Lcom/nuance/swype/input/ShadowProps;
.super Ljava/lang/Object;
.source "ShadowProps.java"


# static fields
.field private static final MAX_RADIUS:F = 25.0f


# instance fields
.field private color:I

.field private isHorFlipped:Z

.field private radius:F

.field private scale:F

.field private xOffset:F

.field private yOffset:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->scale:F

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->scale:F

    .line 126
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->Shadow:[I

    const/4 v4, 0x0

    sget v5, Lcom/nuance/swype/input/R$style;->ShadowStyle:I

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "ShadowStyle"

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 129
    .local v8, "props":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    invoke-direct {p0, v8}, Lcom/nuance/swype/input/ShadowProps;->setProps(Lcom/nuance/swype/plugin/TypedArrayWrapper;)V

    .line 130
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "styleName"    # I
    .param p4, "styleRes"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->scale:F

    .line 97
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->Shadow:[I

    const/4 v4, 0x0

    sget v5, Lcom/nuance/swype/input/R$style;->ShadowStyle:I

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "ShadowStyle"

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 100
    .local v8, "props":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    invoke-direct {p0, v8}, Lcom/nuance/swype/input/ShadowProps;->setProps(Lcom/nuance/swype/plugin/TypedArrayWrapper;)V

    .line 101
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/plugin/TypedArrayWrapper;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "array"    # Lcom/nuance/swype/plugin/TypedArrayWrapper;
    .param p3, "attrName"    # I

    .prologue
    const/4 v1, -0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->scale:F

    .line 114
    invoke-virtual {p2, p3, v1}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getResourceId(II)I

    move-result v0

    .line 115
    if-eq v0, v1, :cond_28

    .line 116
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->Shadow:[I

    const/4 v4, 0x0

    sget v5, Lcom/nuance/swype/input/R$style;->ShadowStyle:I

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "ShadowStyle"

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 119
    .local v8, "props":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    invoke-direct {p0, v8}, Lcom/nuance/swype/input/ShadowProps;->setProps(Lcom/nuance/swype/plugin/TypedArrayWrapper;)V

    .line 120
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 123
    .end local v8    # "props":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    :cond_28
    return-void
.end method

.method private setProps(Lcom/nuance/swype/plugin/TypedArrayWrapper;)V
    .registers 4
    .param p1, "attrs"    # Lcom/nuance/swype/plugin/TypedArrayWrapper;

    .prologue
    .line 135
    sget v0, Lcom/nuance/swype/input/R$styleable;->Shadow_shadowColor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->color:I

    .line 137
    sget v0, Lcom/nuance/swype/input/R$styleable;->Shadow_shadowRadius:I

    invoke-virtual {p1, v0}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimension$255e742(I)F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->radius:F

    .line 138
    sget v0, Lcom/nuance/swype/input/R$styleable;->Shadow_shadowDx:I

    invoke-virtual {p1, v0}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimension$255e742(I)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->xOffset:F

    .line 139
    sget v0, Lcom/nuance/swype/input/R$styleable;->Shadow_shadowDy:I

    invoke-virtual {p1, v0}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimension$255e742(I)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->yOffset:F

    .line 140
    sget v0, Lcom/nuance/swype/input/R$styleable;->Shadow_shadowScale:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->scale:F

    .line 141
    return-void
.end method


# virtual methods
.method public flipHor(Z)V
    .registers 2
    .param p1, "flip"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/nuance/swype/input/ShadowProps;->isHorFlipped:Z

    .line 34
    return-void
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->color:I

    return v0
.end method

.method public getForegroundInsetBottom()F
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/nuance/swype/input/ShadowProps;->getOffsetY()F

    move-result v0

    .line 79
    .local v0, "offset":F
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_a

    move v0, v1

    .end local v0    # "offset":F
    :cond_a
    return v0
.end method

.method public getForegroundInsetLeft()F
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/nuance/swype/input/ShadowProps;->getOffsetX()F

    move-result v0

    .line 64
    .local v0, "offset":F
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_a

    :goto_9
    return v1

    :cond_a
    neg-float v1, v0

    goto :goto_9
.end method

.method public getForegroundInsetRight()F
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/nuance/swype/input/ShadowProps;->getOffsetX()F

    move-result v0

    .line 69
    .local v0, "offset":F
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_a

    move v0, v1

    .end local v0    # "offset":F
    :cond_a
    return v0
.end method

.method public getForegroundInsetTop()F
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/nuance/swype/input/ShadowProps;->getOffsetY()F

    move-result v0

    .line 74
    .local v0, "offset":F
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_a

    :goto_9
    return v1

    :cond_a
    neg-float v1, v0

    goto :goto_9
.end method

.method public getOffsetX()F
    .registers 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/nuance/swype/input/ShadowProps;->isHorFlipped:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->xOffset:F

    neg-float v0, v0

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->xOffset:F

    goto :goto_7
.end method

.method public getOffsetY()F
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->yOffset:F

    return v0
.end method

.method public getRadius()F
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->radius:F

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->scale:F

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->color:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
