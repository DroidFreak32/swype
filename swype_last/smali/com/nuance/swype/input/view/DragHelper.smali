.class public Lcom/nuance/swype/input/view/DragHelper;
.super Ljava/lang/Object;
.source "DragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/view/DragHelper$DragVisualizer;
    }
.end annotation


# static fields
.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final DRAG_PAINT_ALPHA:F = 0.5f


# instance fields
.field private dragPaint:Landroid/graphics/Paint;

.field private isDragging:Z

.field private savedAlpha:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/DragHelper;->isDragging:Z

    .line 1021
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/nuance/swype/input/view/DragHelper;->savedAlpha:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public static canUseLayerPaint(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Lcom/nuance/android/compat/ViewCompat;->supportsSetLayerPaint()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/nuance/android/compat/ViewCompat;->isBackedByLayer(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static createAlphaMatrix(F)[F
    .registers 5
    .param p0, "alpha"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 179
    const/16 v0, 0x14

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput p0, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    return-object v0
.end method

.method private static createGrayScaleColorFilter(F)Landroid/graphics/ColorFilter;
    .registers 4
    .param p0, "alpha"    # F

    .prologue
    .line 206
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-static {p0}, Lcom/nuance/swype/input/view/DragHelper;->createGrayScaleMatrix(F)[F

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v0
.end method

.method private static createGrayScaleMatrix(F)[F
    .registers 7
    .param p0, "alpha"    # F

    .prologue
    const v5, 0x3f170a3d    # 0.59f

    const v4, 0x3e99999a    # 0.3f

    const v3, 0x3de147ae    # 0.11f

    const/4 v2, 0x0

    .line 189
    const/16 v0, 0x14

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v4, v0, v1

    const/4 v1, 0x1

    aput v5, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v5, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v5, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput p0, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    return-object v0
.end method

.method private static createSaturationColorFilter(FF)Landroid/graphics/ColorFilter;
    .registers 5
    .param p0, "scale"    # F
    .param p1, "alpha"    # F

    .prologue
    .line 197
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 198
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {v0, p0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 199
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1a

    .line 200
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-static {p1}, Lcom/nuance/swype/input/view/DragHelper;->createAlphaMatrix(F)[F

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 202
    :cond_1a
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method private scaleAndMapBackAlpha(Landroid/view/View;F)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alphaScale"    # F

    .prologue
    .line 138
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_24

    .line 139
    invoke-static {p1, p2}, Lcom/nuance/swype/input/view/DragHelper;->scaleBackAlpha(Landroid/view/View;F)I

    move-result v0

    .line 140
    .local v0, "oldAlpha":I
    iget-object v1, p0, Lcom/nuance/swype/input/view/DragHelper;->savedAlpha:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 141
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Should not contain view"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 143
    :cond_1b
    iget-object v1, p0, Lcom/nuance/swype/input/view/DragHelper;->savedAlpha:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v0    # "oldAlpha":I
    :cond_24
    return-void
.end method

.method public static scaleBackAlpha(Landroid/view/View;F)I
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 78
    const/4 v2, -0x1

    .line 79
    .local v2, "old":I
    if-eqz p0, :cond_15

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_15

    .line 82
    const/16 v3, 0xff

    invoke-static {v0, v3}, Lcom/nuance/android/compat/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;I)I

    move-result v2

    .line 83
    int-to-float v3, v2

    mul-float/2addr v3, p1

    float-to-int v1, v3

    .line 84
    .local v1, "newAlpha":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 87
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "newAlpha":I
    :cond_15
    return v2
.end method

.method public static setBackAlpha(Landroid/view/View;I)I
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # I

    .prologue
    .line 93
    const/4 v1, -0x1

    .line 94
    .local v1, "old":I
    if-eqz p0, :cond_12

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_12

    .line 97
    const/16 v2, 0xff

    invoke-static {v0, v2}, Lcom/nuance/android/compat/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;I)I

    move-result v1

    .line 98
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 101
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_12
    return v1
.end method

.method private shouldUseLayerPaint(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-static {p1}, Lcom/nuance/swype/input/view/DragHelper;->canUseLayerPaint(Landroid/view/View;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearDragVisualState(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 162
    if-eqz p1, :cond_24

    .line 164
    iget-object v1, p0, Lcom/nuance/swype/input/view/DragHelper;->savedAlpha:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 165
    .local v0, "backgroundAlpha":Ljava/lang/Integer;
    if-eqz v0, :cond_1a

    .line 166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 167
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/nuance/swype/input/view/DragHelper;->setBackAlpha(Landroid/view/View;I)I

    .line 171
    :cond_1a
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/DragHelper;->shouldUseLayerPaint(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 172
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/nuance/android/compat/ViewCompat;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 175
    .end local v0    # "backgroundAlpha":Ljava/lang/Integer;
    :cond_24
    return-void
.end method

.method protected createColorFilter()Landroid/graphics/ColorFilter;
    .registers 3

    .prologue
    .line 43
    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/DragHelper;->createSaturationColorFilter(FF)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDragPaint()Landroid/graphics/Paint;
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragHelper;->dragPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_14

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/view/DragHelper;->dragPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragHelper;->dragPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/nuance/swype/input/view/DragHelper;->createColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 51
    :cond_14
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragHelper;->dragPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isDragging()Z
    .registers 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/DragHelper;->isDragging:Z

    return v0
.end method

.method public onBeginDragVisualState()V
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/DragHelper;->isDragging:Z

    .line 121
    return-void
.end method

.method public onFinishDragVisualState()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragHelper;->savedAlpha:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/DragHelper;->isDragging:Z

    .line 130
    return-void
.end method

.method public setDragVisualState(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alphaScale"    # F

    .prologue
    .line 149
    if-eqz p1, :cond_f

    .line 150
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/DragHelper;->shouldUseLayerPaint(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 152
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/DragHelper;->getDragPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nuance/android/compat/ViewCompat;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 159
    :cond_f
    :goto_f
    return-void

    .line 156
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/view/DragHelper;->scaleAndMapBackAlpha(Landroid/view/View;F)V

    goto :goto_f
.end method

.method public shouldUseDragPaint(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/DragHelper;->shouldUseLayerPaint(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
