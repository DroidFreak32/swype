.class public Lcom/fsck/k9/view/ColorPickerBox;
.super Landroid/view/View;
.source "ColorPickerBox.java"


# instance fields
.field private dalam:Landroid/graphics/Shader;

.field private hue:F

.field private luar:Landroid/graphics/Shader;

.field private onedp:F

.field private paint:Landroid/graphics/Paint;

.field private sizeUiDp:F

.field private sizeUiPx:F

.field private tmp00:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/view/ColorPickerBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/view/ColorPickerBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/high16 v0, 0x43700000    # 240.0f

    iput v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->sizeUiDp:F

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->tmp00:[F

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->onedp:F

    .line 46
    iget v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->sizeUiDp:F

    iget v1, p0, Lcom/fsck/k9/view/ColorPickerBox;->onedp:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->sizeUiPx:F

    .line 47
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    iget-object v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->paint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v4, p0, Lcom/fsck/k9/view/ColorPickerBox;->sizeUiPx:F

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->luar:Landroid/graphics/Shader;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->tmp00:[F

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fsck/k9/view/ColorPickerBox;->tmp00:[F

    const/4 v4, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v3, v4

    aput v7, v0, v2

    .line 61
    iget-object v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->tmp00:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/fsck/k9/view/ColorPickerBox;->hue:F

    aput v3, v0, v2

    .line 62
    iget-object v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->tmp00:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 64
    .local v6, "rgb":I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/fsck/k9/view/ColorPickerBox;->sizeUiPx:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->dalam:Landroid/graphics/Shader;

    .line 65
    new-instance v8, Landroid/graphics/ComposeShader;

    iget-object v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->luar:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/fsck/k9/view/ColorPickerBox;->dalam:Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v0, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 67
    .local v8, "shader":Landroid/graphics/ComposeShader;
    iget-object v0, p0, Lcom/fsck/k9/view/ColorPickerBox;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 69
    iget v3, p0, Lcom/fsck/k9/view/ColorPickerBox;->sizeUiPx:F

    iget v4, p0, Lcom/fsck/k9/view/ColorPickerBox;->sizeUiPx:F

    iget-object v5, p0, Lcom/fsck/k9/view/ColorPickerBox;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    return-void
.end method

.method public setHue(F)V
    .locals 0
    .param p1, "hue"    # F

    .prologue
    .line 74
    iput p1, p0, Lcom/fsck/k9/view/ColorPickerBox;->hue:F

    .line 75
    invoke-virtual {p0}, Lcom/fsck/k9/view/ColorPickerBox;->invalidate()V

    .line 76
    return-void
.end method
