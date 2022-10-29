.class public Lcom/nuance/swype/input/emoji/EmojiGridParams;
.super Ljava/lang/Object;
.source "EmojiGridParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field public final baselineOffset:I

.field public final cellCount:I

.field private expandPadding:Z

.field public final height:I

.field public final heightData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

.field public final paint:Landroid/graphics/Paint;

.field public final scale:F

.field public final width:I

.field public final widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string/jumbo v0, "EmojiGridParams"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 24
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIF)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "scale"    # F

    .prologue
    const/4 v5, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->paint:Landroid/graphics/Paint;

    .line 135
    iput-boolean v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->expandPadding:Z

    .line 154
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Params(): w: "

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "; h: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "; s: "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 156
    if-lez p2, :cond_44

    if-lez p3, :cond_44

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_4d

    .line 157
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "All arguments must be positive"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_4d
    iput p2, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->width:I

    .line 161
    iput p3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->height:I

    .line 162
    iput p4, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->scale:F

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 167
    .local v1, "res":Landroid/content/res/Resources;
    sget v0, Lcom/nuance/swype/input/R$dimen;->emoji_text_size:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 168
    .local v8, "textSizeUnscaled":F
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v0

    .line 169
    if-nez v0, :cond_72

    .line 170
    sget v0, Lcom/nuance/swype/input/R$integer;->emoji_text_value:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 171
    int-to-float v0, v0

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/util/Util;->convertDpToPixel(F)F

    move-result v8

    .line 174
    :cond_72
    mul-float v0, v8, p4

    float-to-int v7, v0

    .line 175
    .local v7, "textSize":I
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->paint:Landroid/graphics/Paint;

    int-to-float v3, v7

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 178
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    .line 179
    .local v6, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v2, v0, v3

    .line 181
    .local v2, "fontHeight":I
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    sget v3, Lcom/nuance/swype/input/R$fraction;->emoji_hor_padding_factor:I

    iget-boolean v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->expandPadding:Z

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;-><init>(Landroid/content/res/Resources;IIIZ)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    .line 184
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    sget v3, Lcom/nuance/swype/input/R$fraction;->emoji_ver_padding_factor:I

    iget-boolean v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->expandPadding:Z

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;-><init>(Landroid/content/res/Resources;IIIZ)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->heightData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    .line 187
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->heightData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v0, v0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellCount:I

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v3, v3, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellCount:I

    mul-int/2addr v0, v3

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    .line 190
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->heightData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v0, v0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellSize:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget v3, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->baselineOffset:I

    .line 192
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method


# virtual methods
.method public createCells(Landroid/content/Context;Lcom/nuance/swype/input/emoji/EmojiPageView;Lcom/nuance/swype/input/emoji/EmojiCategory;Ljava/util/List;)Ljava/util/List;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/nuance/swype/input/emoji/EmojiPageView;
    .param p3, "cat"    # Lcom/nuance/swype/input/emoji/EmojiCategory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nuance/swype/input/emoji/EmojiPageView;",
            "Lcom/nuance/swype/input/emoji/EmojiCategory;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/EmojiGridCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    .local p4, "emojis":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiGridParams;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "createCells()"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "called : cellCount=="

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, ", size =="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 234
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    invoke-static {v1}, Lcom/nuance/swype/util/CollectionUtils;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 235
    .local v8, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/EmojiGridCell;>;"
    const/4 v6, 0x0

    .line 236
    .local v6, "xCell":I
    const/4 v7, 0x0

    .line 237
    .local v7, "yCell":I
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_3b
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    if-ge v5, v1, :cond_64

    .line 238
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_64

    .line 242
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/emoji/Emoji;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/nuance/swype/input/emoji/EmojiGridCell;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/EmojiPageView;Lcom/nuance/swype/input/emoji/EmojiCategory;Lcom/nuance/swype/input/emoji/Emoji;III)V

    .line 243
    .local v0, "cell":Lcom/nuance/swype/input/emoji/EmojiGridCell;
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v6, v6, 0x1

    .line 245
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v1, v1, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellCount:I

    if-lt v6, v1, :cond_61

    .line 247
    const/4 v6, 0x0

    .line 248
    add-int/lit8 v7, v7, 0x1

    .line 237
    :cond_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 252
    .end local v0    # "cell":Lcom/nuance/swype/input/emoji/EmojiGridCell;
    :cond_64
    return-object v8
.end method

.method public getCellIndex(FF)I
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, -0x1

    .line 203
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->getCellIndexSlop(F)I

    move-result v0

    .line 204
    .local v0, "xCell":I
    if-ne v2, v0, :cond_a

    .line 214
    :cond_9
    :goto_9
    return v2

    .line 207
    :cond_a
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->heightData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    invoke-virtual {v3, p2}, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->getCellIndexSlop(F)I

    move-result v1

    .line 208
    .local v1, "yCell":I
    if-eq v2, v1, :cond_9

    .line 212
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v2, v2, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellCount:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    .line 214
    goto :goto_9
.end method

.method public getFirstItemOnPage(I)I
    .registers 3
    .param p1, "pageNumber"    # I

    .prologue
    .line 199
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public getPageForItem(I)I
    .registers 3
    .param p1, "itemIndex"    # I

    .prologue
    .line 195
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    if-lez v0, :cond_9

    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    div-int v0, p1, v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getXOriginOffset(Landroid/graphics/Rect;I)I
    .registers 7
    .param p1, "textBounds"    # Landroid/graphics/Rect;
    .param p2, "gravity"    # I

    .prologue
    .line 222
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v2, v2, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->padding:I

    div-int/lit8 v1, v2, 0x2

    .line 223
    .local v1, "leftPadding":I
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v2, v2, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellSize:I

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v3, v3, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->padding:I

    sub-int v0, v2, v3

    .line 224
    .local v0, "areaWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v0, v2, p2}, Lcom/nuance/swype/util/GeomUtil;->getOffsetX(III)I

    move-result v2

    add-int/2addr v2, v1

    .line 227
    iget v3, p1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    add-int/2addr v2, v3

    .line 228
    return v2
.end method

.method public matches(IIF)Z
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    sget-object v2, Lcom/nuance/swype/input/emoji/EmojiGridParams;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "matches(): ow: "

    aput-object v4, v3, v1

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string/jumbo v5, "; oh: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "; w: "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "; h: "

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "; os: "

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->scale:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "; s: "

    aput-object v5, v3, v4

    const/16 v4, 0xb

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 143
    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 145
    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->width:I

    if-ne v2, p1, :cond_70

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->height:I

    if-ne v2, p2, :cond_70

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->scale:F

    cmpl-float v2, v2, p3

    if-nez v2, :cond_70

    :goto_6f
    return v0

    :cond_70
    move v0, v1

    goto :goto_6f
.end method
