.class public final Lcom/nuance/swype/util/DrawingUtils;
.super Ljava/lang/Object;
.source "DrawingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/util/DrawingUtils$1;
    }
.end annotation


# static fields
.field private static final SPECIAL_CHARACTERS:[C

.field private static final SPECIAL_CHARACTERS_ADJUSTMENTS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-array v0, v3, [C

    const/16 v1, 0x3001

    aput-char v1, v0, v2

    sput-object v0, Lcom/nuance/swype/util/DrawingUtils;->SPECIAL_CHARACTERS:[C

    .line 24
    new-array v0, v3, [C

    const/4 v1, 0x3

    aput-char v1, v0, v2

    sput-object v0, Lcom/nuance/swype/util/DrawingUtils;->SPECIAL_CHARACTERS_ADJUSTMENTS:[C

    return-void
.end method

.method public static getExcessAboveAscent(Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;)I
    .locals 2
    .param p0, "textBounds"    # Landroid/graphics/Rect;
    .param p1, "fm"    # Landroid/graphics/Paint$FontMetrics;

    .prologue
    .line 105
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static getExcessBelowDescent(Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;)I
    .locals 2
    .param p0, "textBounds"    # Landroid/graphics/Rect;
    .param p1, "fm"    # Landroid/graphics/Paint$FontMetrics;

    .prologue
    .line 113
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static hAdjustCharAlignment(Ljava/lang/String;Landroid/graphics/Rect;ILandroid/graphics/Paint;)I
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textBounds"    # Landroid/graphics/Rect;
    .param p2, "gravity"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "adjustment":I
    and-int/lit8 p2, p2, 0x7

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    sget-object v5, Ljava/lang/Character$UnicodeBlock;->DEVANAGARI:Ljava/lang/Character$UnicodeBlock;

    if-eq v4, v5, :cond_0

    sget-object v5, Ljava/lang/Character$UnicodeBlock;->GUJARATI:Ljava/lang/Character$UnicodeBlock;

    if-eq v4, v5, :cond_0

    sget-object v5, Ljava/lang/Character$UnicodeBlock;->MALAYALAM:Ljava/lang/Character$UnicodeBlock;

    if-eq v4, v5, :cond_0

    sget-object v5, Ljava/lang/Character$UnicodeBlock;->MYANMAR:Ljava/lang/Character$UnicodeBlock;

    if-eq v4, v5, :cond_0

    sget-object v5, Ljava/lang/Character$UnicodeBlock;->TELUGU:Ljava/lang/Character$UnicodeBlock;

    if-eq v4, v5, :cond_0

    sget-object v5, Ljava/lang/Character$UnicodeBlock;->KANNADA:Ljava/lang/Character$UnicodeBlock;

    if-eq v4, v5, :cond_0

    sget-object v5, Ljava/lang/Character$UnicodeBlock;->KHMER:Ljava/lang/Character$UnicodeBlock;

    if-eq v4, v5, :cond_0

    sget-object v5, Ljava/lang/Character$UnicodeBlock;->TAMIL:Ljava/lang/Character$UnicodeBlock;

    if-eq v4, v5, :cond_0

    sget-object v5, Ljava/lang/Character$UnicodeBlock;->BENGALI:Ljava/lang/Character$UnicodeBlock;

    if-ne v4, v5, :cond_2

    :cond_0
    const/4 v2, 0x4

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 75
    :goto_1
    return v0

    .line 40
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_2
    sget-object v4, Lcom/nuance/swype/util/DrawingUtils;->SPECIAL_CHARACTERS:[C

    array-length v4, v4

    if-ge v1, v4, :cond_1

    sget-object v4, Lcom/nuance/swype/util/DrawingUtils;->SPECIAL_CHARACTERS:[C

    aget-char v4, v4, v1

    if-ne v4, v3, :cond_4

    sget-object v2, Lcom/nuance/swype/util/DrawingUtils;->SPECIAL_CHARACTERS_ADJUSTMENTS:[C

    aget-char v2, v2, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 42
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 51
    :pswitch_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v0, v1, 0x2

    .line 52
    goto :goto_1

    .line 44
    :pswitch_2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v0, v1

    .line 45
    goto :goto_1

    .line 47
    :pswitch_3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    neg-int v0, v1

    .line 48
    goto :goto_1

    .line 56
    :pswitch_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 57
    goto :goto_1

    .line 59
    :pswitch_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v0, v1, 0x2

    .line 60
    goto :goto_1

    .line 64
    :pswitch_6
    sget-object v1, Lcom/nuance/swype/util/DrawingUtils$1;->$SwitchMap$android$graphics$Paint$Align:[I

    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    goto :goto_1

    .line 66
    :pswitch_7
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v0, v1, 0x2

    .line 68
    goto :goto_1

    .line 70
    :pswitch_8
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 71
    iget v1, p1, Landroid/graphics/Rect;->right:I

    neg-int v0, v1

    .line 72
    goto :goto_1

    .line 74
    :pswitch_9
    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v0, v1

    goto :goto_1

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 42
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 64
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static vAdjustCharAlignment$4ccb736e(Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;)I
    .locals 4
    .param p0, "textBounds"    # Landroid/graphics/Rect;
    .param p1, "fm"    # Landroid/graphics/Paint$FontMetrics;

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "adjustment":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 97
    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 99
    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_0
.end method
