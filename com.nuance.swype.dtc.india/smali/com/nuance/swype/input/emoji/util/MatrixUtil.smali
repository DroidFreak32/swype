.class public Lcom/nuance/swype/input/emoji/util/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# instance fields
.field private final floatPoints:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/util/MatrixUtil;->floatPoints:[F

    .line 16
    return-void
.end method

.method public static map(Landroid/graphics/Matrix;IIII[F)[F
    .locals 2
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "points"    # [F

    .prologue
    .line 41
    if-nez p5, :cond_0

    .line 42
    const/4 v0, 0x4

    new-array p5, v0, [F

    .line 44
    :cond_0
    const/4 v0, 0x0

    int-to-float v1, p1

    aput v1, p5, v0

    .line 45
    const/4 v0, 0x1

    int-to-float v1, p2

    aput v1, p5, v0

    .line 46
    const/4 v0, 0x2

    int-to-float v1, p3

    aput v1, p5, v0

    .line 47
    const/4 v0, 0x3

    int-to-float v1, p4

    aput v1, p5, v0

    .line 48
    invoke-virtual {p0, p5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 49
    return-object p5
.end method

.method public static map(Landroid/graphics/Matrix;Landroid/view/View;[F)[F
    .locals 2
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "points"    # [F

    .prologue
    .line 24
    if-nez p2, :cond_0

    .line 25
    const/4 v0, 0x4

    new-array p2, v0, [F

    .line 27
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    aput v1, p2, v0

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    aput v1, p2, v0

    .line 29
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    aput v1, p2, v0

    .line 30
    const/4 v0, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    aput v1, p2, v0

    .line 31
    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 32
    return-object p2
.end method


# virtual methods
.method public map(Landroid/graphics/Matrix;IIII[I)[I
    .locals 7
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "points"    # [I

    .prologue
    .line 54
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/util/MatrixUtil;->floatPoints:[F

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/nuance/swype/input/emoji/util/MatrixUtil;->map(Landroid/graphics/Matrix;IIII[F)[F

    move-result-object v6

    .line 55
    .local v6, "temp":[F
    if-nez p6, :cond_0

    .line 56
    const/4 v0, 0x4

    new-array p6, v0, [I

    .line 58
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/util/Util;->roundInt(F)I

    move-result v1

    aput v1, p6, v0

    .line 59
    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v6, v1

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/util/Util;->roundInt(F)I

    move-result v1

    aput v1, p6, v0

    .line 60
    const/4 v0, 0x2

    const/4 v1, 0x2

    aget v1, v6, v1

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/util/Util;->roundInt(F)I

    move-result v1

    aput v1, p6, v0

    .line 61
    const/4 v0, 0x3

    const/4 v1, 0x3

    aget v1, v6, v1

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/util/Util;->roundInt(F)I

    move-result v1

    aput v1, p6, v0

    .line 62
    return-object p6
.end method
