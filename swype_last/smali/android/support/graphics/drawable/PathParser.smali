.class final Landroid/support/graphics/drawable/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/PathParser$PathDataNode;,
        Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
    }
.end annotation


# direct methods
.method private static addNode(Ljava/util/ArrayList;C[F)V
    .registers 5
    .param p1, "cmd"    # C
    .param p2, "val"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/graphics/drawable/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/graphics/drawable/PathParser$PathDataNode;>;"
    new-instance v0, Landroid/support/graphics/drawable/PathParser$PathDataNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(C[FB)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method static copyOfRange$7b60297f([FI)[F
    .registers 8
    .param p0, "original"    # [F
    .param p1, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 44
    if-gez p1, :cond_9

    .line 45
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 47
    :cond_9
    array-length v1, p0

    .line 48
    .local v1, "originalLength":I
    if-gez v1, :cond_12

    .line 49
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 51
    :cond_12
    add-int/lit8 v3, p1, 0x0

    .line 52
    .local v3, "resultLength":I
    add-int/lit8 v4, v1, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 53
    .local v0, "copyLength":I
    new-array v2, v3, [F

    .line 54
    .local v2, "result":[F
    invoke-static {p0, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    return-object v2
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .registers 9
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 81
    if-nez p0, :cond_5

    .line 82
    const/4 v5, 0x0

    .line 102
    :goto_4
    return-object v5

    .line 84
    :cond_5
    const/4 v3, 0x0

    .line 85
    .local v3, "start":I
    const/4 v0, 0x1

    .line 87
    .local v0, "end":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/graphics/drawable/PathParser$PathDataNode;>;"
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_33

    .line 89
    invoke-static {p0, v0}, Landroid/support/graphics/drawable/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v0

    .line 90
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2f

    .line 92
    invoke-static {v2}, Landroid/support/graphics/drawable/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v4

    .line 93
    .local v4, "val":[F
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v1, v5, v4}, Landroid/support/graphics/drawable/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 96
    .end local v4    # "val":[F
    :cond_2f
    move v3, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 98
    goto :goto_c

    .line 99
    .end local v2    # "s":Ljava/lang/String;
    :cond_33
    sub-int v5, v0, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_47

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_47

    .line 100
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-array v6, v7, [F

    invoke-static {v1, v5, v6}, Landroid/support/graphics/drawable/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 102
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    goto :goto_4
.end method

.method public static deepCopyNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .registers 6
    .param p0, "source"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .prologue
    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 v0, 0x0

    .line 117
    :cond_3
    return-object v0

    .line 113
    :cond_4
    array-length v2, p0

    new-array v0, v2, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 114
    .local v0, "copy":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 115
    new-instance v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;

    aget-object v3, p0, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;B)V

    aput-object v2, v0, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .registers 15
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7a

    if-ne v8, v9, :cond_1b

    const/4 v8, 0x1

    :goto_a
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5a

    if-ne v9, v10, :cond_1d

    const/4 v9, 0x1

    :goto_14
    or-int/2addr v8, v9

    if-eqz v8, :cond_1f

    .line 197
    const/4 v8, 0x0

    new-array v8, v8, [F

    .line 227
    :goto_1a
    return-object v8

    .line 196
    :cond_1b
    const/4 v8, 0x0

    goto :goto_a

    :cond_1d
    const/4 v9, 0x0

    goto :goto_14

    .line 200
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v5, v8, [F

    .line 201
    .local v5, "results":[F
    const/4 v0, 0x0

    .line 202
    .local v0, "count":I
    const/4 v6, 0x1

    .line 205
    .local v6, "startPosition":I
    new-instance v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;-><init>(B)V

    .line 206
    .local v4, "result":Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "totalLength":I
    move v1, v0

    .line 211
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_32
    if-ge v6, v7, :cond_a2

    .line 1244
    const/4 v10, 0x0

    .line 1245
    const/4 v8, 0x0

    iput-boolean v8, v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 1246
    const/4 v9, 0x0

    .line 1247
    const/4 v8, 0x0

    move v11, v8

    move v12, v6

    .line 1248
    :goto_3c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v12, v8, :cond_85

    .line 1250
    const/4 v8, 0x0

    .line 1251
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 1252
    sparse-switch v13, :sswitch_data_aa

    .line 1278
    :cond_4a
    :goto_4a
    if-nez v10, :cond_85

    .line 1248
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    move v11, v8

    goto :goto_3c

    .line 1255
    :sswitch_51
    const/4 v10, 0x1

    .line 1256
    goto :goto_4a

    .line 1259
    :sswitch_53
    if-eq v12, v6, :cond_4a

    if-nez v11, :cond_4a

    .line 1260
    const/4 v10, 0x1

    .line 1261
    const/4 v11, 0x1

    iput-boolean v11, v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_5b} :catch_5c

    goto :goto_4a

    .line 228
    .end local v1    # "count":I
    .end local v4    # "result":Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
    .end local v5    # "results":[F
    .end local v6    # "startPosition":I
    .end local v7    # "totalLength":I
    :catch_5c
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "error in parsing \""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1265
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "count":I
    .restart local v4    # "result":Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
    .restart local v5    # "results":[F
    .restart local v6    # "startPosition":I
    .restart local v7    # "totalLength":I
    :sswitch_7a
    if-nez v9, :cond_7e

    .line 1266
    const/4 v9, 0x1

    goto :goto_4a

    .line 1269
    :cond_7e
    const/4 v10, 0x1

    .line 1270
    const/4 v11, 0x1

    :try_start_80
    iput-boolean v11, v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_4a

    .line 1275
    :sswitch_83
    const/4 v8, 0x1

    goto :goto_4a

    .line 1284
    :cond_85
    iput v12, v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 213
    iget v3, v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 215
    .local v3, "endPosition":I
    if-ge v6, v3, :cond_a8

    .line 216
    add-int/lit8 v0, v1, 0x1

    .line 217
    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 216
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v5, v1

    .line 220
    :goto_97
    iget-boolean v8, v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v8, :cond_9e

    .line 222
    move v6, v3

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_32

    .line 224
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_9e
    add-int/lit8 v6, v3, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_32

    .line 227
    .end local v3    # "endPosition":I
    :cond_a2
    invoke-static {v5, v1}, Landroid/support/graphics/drawable/PathParser;->copyOfRange$7b60297f([FI)[F
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_a5} :catch_5c

    move-result-object v8

    goto/16 :goto_1a

    .restart local v3    # "endPosition":I
    :cond_a8
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_97

    .line 1252
    :sswitch_data_aa
    .sparse-switch
        0x20 -> :sswitch_51
        0x2c -> :sswitch_51
        0x2d -> :sswitch_53
        0x2e -> :sswitch_7a
        0x45 -> :sswitch_83
        0x65 -> :sswitch_83
    .end sparse-switch
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "end"    # I

    .prologue
    .line 162
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_20

    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 168
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_18

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_21

    :cond_18
    const/16 v1, 0x65

    if-eq v0, v1, :cond_21

    const/16 v1, 0x45

    if-eq v0, v1, :cond_21

    .line 174
    .end local v0    # "c":C
    :cond_20
    return p1

    .line 172
    .restart local v0    # "c":C
    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
