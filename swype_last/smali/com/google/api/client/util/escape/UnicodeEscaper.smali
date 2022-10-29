.class public abstract Lcom/google/api/client/util/escape/UnicodeEscaper;
.super Lcom/google/api/client/util/escape/Escaper;
.source "UnicodeEscaper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/api/client/util/escape/Escaper;-><init>()V

    return-void
.end method

.method private static growBuffer([CII)[C
    .registers 5
    .param p0, "dest"    # [C
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 253
    new-array v0, p2, [C

    .line 254
    .local v0, "copy":[C
    if-lez p1, :cond_8

    .line 255
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    :cond_8
    return-object v0
.end method


# virtual methods
.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .registers 21
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 132
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 135
    .local v7, "end":I
    invoke-static {}, Lcom/google/api/client/util/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v4

    .line 136
    .local v4, "dest":[C
    const/4 v5, 0x0

    .line 137
    .local v5, "destIndex":I
    const/4 v12, 0x0

    .line 139
    .local v12, "unescapedChunkStart":I
    :goto_a
    move/from16 v0, p2

    if-ge v0, v7, :cond_f6

    .line 1221
    move/from16 v0, p2

    if-ge v0, v7, :cond_a7

    .line 1222
    add-int/lit8 v13, p2, 0x1

    invoke-interface/range {p1 .. p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1223
    const v14, 0xd800

    if-lt v3, v14, :cond_22

    const v14, 0xdfff

    if-le v3, v14, :cond_2d

    .line 141
    .local v3, "cp":I
    :cond_22
    :goto_22
    if-gez v3, :cond_b0

    .line 142
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "Trailing high surrogate at end of input"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1226
    .end local v3    # "cp":I
    :cond_2d
    const v14, 0xdbff

    if-gt v3, v14, :cond_79

    .line 1228
    if-ne v13, v7, :cond_36

    .line 1229
    neg-int v3, v3

    goto :goto_22

    .line 1232
    :cond_36
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    .line 1233
    invoke-static {v14}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v15

    if-eqz v15, :cond_47

    .line 1234
    invoke-static {v3, v14}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_22

    .line 1236
    :cond_47
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Expected low surrogate but got char \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\' with value "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, " at index "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1240
    :cond_79
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Unexpected low surrogate character \'"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' with value "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " at index "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1245
    :cond_a7
    new-instance v13, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v14, "Index exceeds specified range"

    invoke-direct {v13, v14}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 147
    .restart local v3    # "cp":I
    :cond_b0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/api/client/util/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v9

    .line 148
    .local v9, "escaped":[C
    invoke-static {v3}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v13

    if-eqz v13, :cond_f4

    const/4 v13, 0x2

    :goto_bd
    add-int v10, p2, v13

    .line 149
    .local v10, "nextIndex":I
    if-eqz v9, :cond_ea

    .line 150
    sub-int v2, p2, v12

    .line 154
    .local v2, "charsSkipped":I
    add-int v13, v5, v2

    array-length v14, v9

    add-int v11, v13, v14

    .line 155
    .local v11, "sizeNeeded":I
    array-length v13, v4

    if-ge v13, v11, :cond_d5

    .line 156
    add-int v13, v11, v7

    sub-int v13, v13, p2

    add-int/lit8 v6, v13, 0x20

    .line 157
    .local v6, "destLength":I
    invoke-static {v4, v5, v6}, Lcom/google/api/client/util/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v4

    .line 160
    .end local v6    # "destLength":I
    :cond_d5
    if-lez v2, :cond_df

    .line 161
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v12, v1, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 162
    add-int/2addr v5, v2

    .line 164
    :cond_df
    array-length v13, v9

    if-lez v13, :cond_e9

    .line 165
    const/4 v13, 0x0

    array-length v14, v9

    invoke-static {v9, v13, v4, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    array-length v13, v9

    add-int/2addr v5, v13

    .line 169
    :cond_e9
    move v12, v10

    .line 171
    .end local v2    # "charsSkipped":I
    .end local v11    # "sizeNeeded":I
    :cond_ea
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v7}, Lcom/google/api/client/util/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 172
    goto/16 :goto_a

    .line 148
    .end local v10    # "nextIndex":I
    :cond_f4
    const/4 v13, 0x1

    goto :goto_bd

    .line 176
    .end local v3    # "cp":I
    .end local v9    # "escaped":[C
    :cond_f6
    sub-int v2, v7, v12

    .line 177
    .restart local v2    # "charsSkipped":I
    if-lez v2, :cond_109

    .line 178
    add-int v8, v5, v2

    .line 179
    .local v8, "endIndex":I
    array-length v13, v4

    if-ge v13, v8, :cond_103

    .line 180
    invoke-static {v4, v5, v8}, Lcom/google/api/client/util/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v4

    .line 182
    :cond_103
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 183
    move v5, v8

    .line 185
    .end local v8    # "endIndex":I
    :cond_109
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v13
.end method

.method protected abstract nextEscapeIndex(Ljava/lang/CharSequence;II)I
.end method
