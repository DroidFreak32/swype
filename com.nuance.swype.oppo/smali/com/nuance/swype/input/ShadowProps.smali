.class public Lcom/nuance/swype/input/ShadowProps;
.super Ljava/lang/Object;
.source "ShadowProps.java"


# instance fields
.field private color:I

.field private isHorFlipped:Z

.field private radius:F

.field private scale:F

.field private xOffset:F

.field private yOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->scale:F

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->scale:F

    .line 118
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/ShadowProps;->setProps(Landroid/content/res/TypedArray;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "array"    # Landroid/content/res/TypedArray;
    .param p3, "attrName"    # I

    .prologue
    const/4 v3, -0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/nuance/swype/input/ShadowProps;->scale:F

    .line 107
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 108
    .local v0, "id":I
    if-eq v0, v3, :cond_0

    .line 109
    sget-object v2, Lcom/nuance/swype/input/R$styleable;->Shadow:[I

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 110
    .local v1, "props":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/ShadowProps;->setProps(Landroid/content/res/TypedArray;)V

    .line 112
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    .end local v1    # "props":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "styleName"    # I
    .param p4, "styleRes"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/nuance/swype/input/ShadowProps;->scale:F

    .line 92
    sget-object v1, Lcom/nuance/swype/input/R$styleable;->Shadow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "props":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/ShadowProps;->setProps(Landroid/content/res/TypedArray;)V

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    :cond_0
    return-void
.end method

.method private final setProps(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 122
    sget v0, Lcom/nuance/swype/input/R$styleable;->Shadow_shadowColor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->color:I

    .line 123
    sget v0, Lcom/nuance/swype/input/R$styleable;->Shadow_shadowRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->radius:F

    .line 124
    sget v0, Lcom/nuance/swype/input/R$styleable;->Shadow_shadowDx:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->xOffset:F

    .line 125
    sget v0, Lcom/nuance/swype/input/R$styleable;->Shadow_shadowDy:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->yOffset:F

    .line 126
    sget v0, Lcom/nuance/swype/input/R$styleable;->Shadow_shadowScale:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/ShadowProps;->scale:F

    .line 127
    return-void
.end method


# virtual methods
.method public flipHor(Z)V
    .locals 0
    .param p1, "flip"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/nuance/swype/input/ShadowProps;->isHorFlipped:Z

    .line 29
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->color:I

    return v0
.end method

.method public getForegroundInsetBottom()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/nuance/swype/input/ShadowProps;->getOffsetY()F

    move-result v0

    .line 74
    .local v0, "offset":F
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    move v0, v1

    .end local v0    # "offset":F
    :cond_0
    return v0
.end method

.method public getForegroundInsetLeft()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/nuance/swype/input/ShadowProps;->getOffsetX()F

    move-result v0

    .line 59
    .local v0, "offset":F
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    neg-float v1, v0

    goto :goto_0
.end method

.method public getForegroundInsetRight()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/nuance/swype/input/ShadowProps;->getOffsetX()F

    move-result v0

    .line 64
    .local v0, "offset":F
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    move v0, v1

    .end local v0    # "offset":F
    :cond_0
    return v0
.end method

.method public getForegroundInsetTop()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/nuance/swype/input/ShadowProps;->getOffsetY()F

    move-result v0

    .line 69
    .local v0, "offset":F
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    neg-float v1, v0

    goto :goto_0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/nuance/swype/input/ShadowProps;->isHorFlipped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->xOffset:F

    neg-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->xOffset:F

    goto :goto_0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->yOffset:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->radius:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->scale:F

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/nuance/swype/input/ShadowProps;->color:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
