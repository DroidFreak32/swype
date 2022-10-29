.class public Lcom/nuance/swype/input/emoji/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final Character_getName:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 97
    const-class v0, Ljava/lang/Character;

    const-string/jumbo v1, "getName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 98
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/util/Util;->Character_getName:Ljava/lang/reflect/Method;

    .line 97
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static adjustRect([FFFFF)V
    .registers 7
    .param p0, "dest"    # [F
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 83
    const/4 v0, 0x0

    aget v1, p0, v0

    add-float/2addr v1, p1

    aput v1, p0, v0

    .line 84
    const/4 v0, 0x1

    aget v1, p0, v0

    add-float/2addr v1, p2

    aput v1, p0, v0

    .line 85
    const/4 v0, 0x2

    aget v1, p0, v0

    add-float/2addr v1, p3

    aput v1, p0, v0

    .line 86
    const/4 v0, 0x3

    aget v1, p0, v0

    add-float/2addr v1, p4

    aput v1, p0, v0

    .line 87
    return-void
.end method

.method public static adjustRect([III)V
    .registers 5
    .param p0, "dest"    # [I
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/2addr v1, p1

    aput v1, p0, v0

    .line 91
    const/4 v0, 0x1

    aget v1, p0, v0

    add-int/2addr v1, p2

    aput v1, p0, v0

    .line 92
    const/4 v0, 0x2

    aget v1, p0, v0

    add-int/2addr v1, p1

    aput v1, p0, v0

    .line 93
    const/4 v0, 0x3

    aget v1, p0, v0

    add-int/2addr v1, p2

    aput v1, p0, v0

    .line 94
    return-void
.end method

.method public static adjustRect([IIIII)V
    .registers 7
    .param p0, "dest"    # [I
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/2addr v1, p1

    aput v1, p0, v0

    .line 77
    const/4 v0, 0x1

    aget v1, p0, v0

    add-int/2addr v1, p2

    aput v1, p0, v0

    .line 78
    const/4 v0, 0x2

    aget v1, p0, v0

    add-int/2addr v1, p3

    aput v1, p0, v0

    .line 79
    const/4 v0, 0x3

    aget v1, p0, v0

    add-int/2addr v1, p4

    aput v1, p0, v0

    .line 80
    return-void
.end method

.method public static allocRect(IIII)[I
    .registers 6
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    return-object v0
.end method

.method public static allocRect([F)[I
    .registers 7
    .param p0, "points"    # [F

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 64
    .local v0, "out":[I
    aget v1, p0, v2

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/util/Util;->roundDownInt(F)I

    move-result v1

    aput v1, v0, v2

    .line 65
    aget v1, p0, v3

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/util/Util;->roundDownInt(F)I

    move-result v1

    aput v1, v0, v3

    .line 66
    aget v1, p0, v4

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/util/Util;->roundUpInt(F)I

    move-result v1

    aput v1, v0, v4

    .line 67
    aget v1, p0, v5

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/util/Util;->roundUpInt(F)I

    move-result v1

    aput v1, v0, v5

    .line 68
    return-object v0
.end method

.method public static allocRectF(IIII)[F
    .registers 7
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float v2, p0

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x2

    int-to-float v2, p2

    aput v2, v0, v1

    const/4 v1, 0x3

    int-to-float v2, p3

    aput v2, v0, v1

    return-object v0
.end method

.method public static convertDpToPixel(F)F
    .registers 4
    .param p0, "dp"    # F

    .prologue
    .line 123
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 124
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p0

    .line 125
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method public static copyRect([I[I)V
    .registers 7
    .param p0, "dest"    # [I
    .param p1, "src"    # [I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    aget v0, p1, v1

    aput v0, p0, v1

    .line 53
    aget v0, p1, v2

    aput v0, p0, v2

    .line 54
    aget v0, p1, v3

    aput v0, p0, v3

    .line 55
    aget v0, p1, v4

    aput v0, p0, v4

    .line 56
    return-void
.end method

.method public static getCharDesc(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "codePointText"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 108
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 109
    .local v0, "codePoint":I
    const-string/jumbo v2, "%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "hex":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nuance/swype/input/emoji/util/Util;->getCharName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [U+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCharName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "codePointText"    # Ljava/lang/String;

    .prologue
    .line 113
    if-nez p0, :cond_6

    .line 114
    const-string/jumbo v0, "null"

    .line 120
    :cond_5
    :goto_5
    return-object v0

    .line 116
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/util/Util;->getCharacterName(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 118
    const-string/jumbo v0, "???"

    goto :goto_5
.end method

.method private static getCharacterName(I)Ljava/lang/String;
    .registers 6
    .param p0, "codePoint"    # I

    .prologue
    const/4 v0, 0x0

    .line 101
    sget-object v1, Lcom/nuance/swype/input/emoji/util/Util;->Character_getName:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_17

    .line 102
    sget-object v1, Lcom/nuance/swype/input/emoji/util/Util;->Character_getName:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    :cond_17
    return-object v0
.end method

.method public static newPair(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(TF;TS;)",
            "Landroid/util/Pair",
            "<TF;TS;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "f":Ljava/lang/Object;, "TF;"
    .local p1, "s":Ljava/lang/Object;, "TS;"
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static posToString(II)Ljava/lang/String;
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static posToString([I)Ljava/lang/String;
    .registers 2
    .param p0, "pos"    # [I

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/swype/input/emoji/util/Util;->posToString([II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static posToString([II)Ljava/lang/String;
    .registers 4
    .param p0, "pos"    # [I
    .param p1, "offset"    # I

    .prologue
    .line 23
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/emoji/util/Util;->posToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rectToString(IIII)Ljava/lang/String;
    .registers 6
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/nuance/swype/input/emoji/util/Util;->posToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/nuance/swype/input/emoji/util/Util;->posToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rectToString([I)Ljava/lang/String;
    .registers 4
    .param p0, "rect"    # [I

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v1, p0, v2

    invoke-static {v1, v2}, Lcom/nuance/swype/input/emoji/util/Util;->posToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/nuance/swype/input/emoji/util/Util;->posToString([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static roundDownInt(F)I
    .registers 3
    .param p0, "val"    # F

    .prologue
    .line 44
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static roundInt(F)I
    .registers 2
    .param p0, "val"    # F

    .prologue
    .line 48
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static roundUpInt(F)I
    .registers 3
    .param p0, "val"    # F

    .prologue
    .line 40
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
