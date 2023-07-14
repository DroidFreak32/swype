.class public Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;
.super Ljava/lang/Object;
.source "EmojiGridParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiGridParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DimensionData"
.end annotation


# instance fields
.field public final cellCount:I

.field public final cellSize:I

.field public final internalSize:I

.field public final margin:I

.field public final padding:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIZ)V
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "internalSize"    # I
    .param p3, "idPaddingFactor"    # I
    .param p4, "areaSize"    # I
    .param p5, "expandPadding"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p2, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->internalSize:I

    .line 43
    invoke-virtual {p1, p3, p2, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->padding:I

    .line 44
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiGridParams;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Params():  padding: "

    aput-object v5, v4, v8

    iget v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->padding:I

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "; internal: "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 44
    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 46
    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->padding:I

    add-int v2, p2, v3

    .line 47
    .local v2, "minDim":I
    if-gtz v2, :cond_0

    .line 48
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Computed min cellSize dimension must be positive"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    :cond_0
    div-int v3, p4, v2

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellCount:I

    .line 54
    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellCount:I

    mul-int/2addr v3, v2

    sub-int v1, p4, v3

    .line 55
    .local v1, "extraSpace":I
    if-eqz p5, :cond_1

    .line 57
    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellCount:I

    div-int v0, v1, v3

    .line 58
    .local v0, "extraPerCell":I
    add-int v3, v2, v0

    iput v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellSize:I

    .line 59
    iput v8, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->margin:I

    .line 65
    .end local v0    # "extraPerCell":I
    :goto_0
    return-void

    .line 62
    :cond_1
    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellSize:I

    .line 63
    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellCount:I

    add-int/lit8 v3, v3, 0x1

    div-int v3, v1, v3

    iput v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->margin:I

    goto :goto_0
.end method


# virtual methods
.method public getCellIndex(F)I
    .locals 6
    .param p1, "offset"    # F

    .prologue
    const/4 v3, -0x1

    .line 86
    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->margin:I

    iget v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellSize:I

    add-int v0, v4, v5

    .line 87
    .local v0, "advance":I
    int-to-float v4, v0

    div-float v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 88
    .local v1, "cellIndex":I
    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellCount:I

    if-lt v1, v4, :cond_1

    move v1, v3

    .line 99
    .end local v1    # "cellIndex":I
    :cond_0
    :goto_0
    return v1

    .line 93
    .restart local v1    # "cellIndex":I
    :cond_1
    mul-int v4, v1, v0

    iget v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->margin:I

    add-int v2, v4, v5

    .line 94
    .local v2, "cellOffset":I
    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    move v1, v3

    .line 96
    goto :goto_0
.end method

.method public getCellIndexSlop(F)I
    .locals 6
    .param p1, "offset"    # F

    .prologue
    .line 72
    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->margin:I

    neg-int v3, v3

    div-int/lit8 v2, v3, 0x2

    .line 73
    .local v2, "firstCellPos":I
    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->margin:I

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellSize:I

    add-int v0, v3, v4

    .line 74
    .local v0, "advance":I
    int-to-float v3, v2

    add-float/2addr v3, p1

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 75
    .local v1, "cellIndex":I
    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellCount:I

    if-lt v1, v3, :cond_0

    .line 77
    const/4 v1, -0x1

    .line 79
    .end local v1    # "cellIndex":I
    :cond_0
    return v1
.end method
