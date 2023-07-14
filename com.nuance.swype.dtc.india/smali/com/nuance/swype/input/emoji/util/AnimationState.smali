.class public Lcom/nuance/swype/input/emoji/util/AnimationState;
.super Ljava/lang/Object;
.source "AnimationState.java"


# instance fields
.field private matrix:Landroid/graphics/Matrix;

.field private matrixInvalid:Z

.field private final matrixUtil:Lcom/nuance/swype/input/emoji/util/MatrixUtil;

.field private rotate:F

.field private scale:F

.field private final xPivot:F

.field private xTrans:F

.field private final yPivot:F

.field private yTrans:F


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "xPivot"    # I
    .param p2, "yPivot"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->scale:F

    .line 11
    iput v1, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->yTrans:F

    .line 13
    iput v1, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->xTrans:F

    .line 15
    iput v1, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->rotate:F

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->matrix:Landroid/graphics/Matrix;

    .line 24
    new-instance v0, Lcom/nuance/swype/input/emoji/util/MatrixUtil;

    invoke-direct {v0}, Lcom/nuance/swype/input/emoji/util/MatrixUtil;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->matrixUtil:Lcom/nuance/swype/input/emoji/util/MatrixUtil;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->matrixInvalid:Z

    .line 33
    int-to-float v0, p1

    iput v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->xPivot:F

    .line 34
    int-to-float v0, p2

    iput v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->yPivot:F

    .line 35
    return-void
.end method


# virtual methods
.method public getMatrix()Landroid/graphics/Matrix;
    .locals 5

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->matrixInvalid:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->scale:F

    iget v2, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->scale:F

    iget v3, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->xPivot:F

    iget v4, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->yPivot:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->rotate:F

    iget v2, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->xPivot:F

    iget v3, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->yPivot:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->xTrans:F

    iget v2, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->yTrans:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->matrixInvalid:Z

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->rotate:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->scale:F

    return v0
.end method

.method public getTransX()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->xTrans:F

    return v0
.end method

.method public getTransY()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->yTrans:F

    return v0
.end method

.method public map(IIII[I)[I
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "points"    # [I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->matrixUtil:Lcom/nuance/swype/input/emoji/util/MatrixUtil;

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/util/AnimationState;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/input/emoji/util/MatrixUtil;->map(Landroid/graphics/Matrix;IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->rotate:F

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->scale:F

    .line 55
    iput v1, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->xTrans:F

    .line 56
    iput v1, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->yTrans:F

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->matrixInvalid:Z

    .line 58
    return-void
.end method

.method public transform(FFFF)V
    .locals 1
    .param p1, "rotate"    # F
    .param p2, "scale"    # F
    .param p3, "xTrans"    # F
    .param p4, "yTrans"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->rotate:F

    .line 63
    iput p2, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->scale:F

    .line 64
    iput p3, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->xTrans:F

    .line 65
    iput p4, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->yTrans:F

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/util/AnimationState;->matrixInvalid:Z

    .line 67
    return-void
.end method
