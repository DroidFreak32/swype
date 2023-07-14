.class public final Lcom/fasterxml/jackson/core/io/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# static fields
.field private static final HEX_BYTES:[B

.field private static final HEX_CHARS:[C

.field static final sHexValues:[I

.field static final sInputCodes:[I

.field static final sInputCodesComment:[I

.field static final sInputCodesJsNames:[I

.field static final sInputCodesUtf8:[I

.field static final sInputCodesUtf8JsNames:[I

.field static final sOutputEscapes128:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v10, -0x1

    const/16 v9, 0x100

    const/16 v8, 0x80

    const/4 v7, 0x0

    .line 8
    const-string/jumbo v5, "0123456789ABCDEF"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 11
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    array-length v3, v5

    .line 12
    .local v3, "len":I
    new-array v5, v3, [B

    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_BYTES:[B

    .line 13
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 14
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_BYTES:[B

    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    aget-char v6, v6, v2

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 13
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    new-array v4, v9, [I

    .line 31
    .local v4, "table":[I
    const/4 v2, 0x0

    :goto_1
    const/16 v5, 0x20

    if-ge v2, v5, :cond_1

    .line 32
    aput v10, v4, v2

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 35
    :cond_1
    const/16 v5, 0x22

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 36
    const/16 v5, 0x5c

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 46
    sput-object v4, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    new-array v4, v9, [I

    .line 47
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    array-length v6, v6

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    const/16 v0, 0x80

    .local v0, "c":I
    :goto_2
    if-ge v0, v9, :cond_5

    .line 52
    and-int/lit16 v5, v0, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_2

    .line 53
    const/4 v1, 0x2

    .line 63
    .local v1, "code":I
    :goto_3
    aput v1, v4, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 54
    .end local v1    # "code":I
    :cond_2
    and-int/lit16 v5, v0, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_3

    .line 55
    const/4 v1, 0x3

    .restart local v1    # "code":I
    goto :goto_3

    .line 56
    .end local v1    # "code":I
    :cond_3
    and-int/lit16 v5, v0, 0xf8

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_4

    .line 58
    const/4 v1, 0x4

    .restart local v1    # "code":I
    goto :goto_3

    .line 61
    .end local v1    # "code":I
    :cond_4
    const/4 v1, -0x1

    .restart local v1    # "code":I
    goto :goto_3

    .line 65
    .end local v1    # "code":I
    :cond_5
    sput-object v4, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8:[I

    .line 76
    new-array v4, v9, [I

    .line 78
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([II)V

    .line 80
    const/16 v2, 0x21

    :goto_4
    if-ge v2, v9, :cond_7

    .line 81
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 82
    aput v7, v4, v2

    .line 80
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 88
    :cond_7
    const/16 v5, 0x40

    aput v7, v4, v5

    .line 89
    const/16 v5, 0x23

    aput v7, v4, v5

    .line 90
    const/16 v5, 0x2a

    aput v7, v4, v5

    .line 91
    const/16 v5, 0x2d

    aput v7, v4, v5

    .line 92
    const/16 v5, 0x2b

    aput v7, v4, v5

    .line 93
    sput-object v4, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    .line 103
    new-array v4, v9, [I

    .line 105
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    array-length v6, v6

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    invoke-static {v4, v8, v8, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 107
    sput-object v4, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    .line 114
    new-array v5, v9, [I

    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    .line 117
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8:[I

    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    invoke-static {v5, v8, v6, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    const/16 v6, 0x20

    invoke-static {v5, v7, v6, v10}, Ljava/util/Arrays;->fill([IIII)V

    .line 121
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    const/16 v6, 0x9

    aput v7, v5, v6

    .line 122
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    aput v11, v5, v11

    .line 123
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    const/16 v6, 0xd

    const/16 v7, 0xd

    aput v7, v5, v6

    .line 124
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    const/16 v6, 0x2a

    const/16 v7, 0x2a

    aput v7, v5, v6

    .line 133
    new-array v4, v8, [I

    .line 135
    const/4 v2, 0x0

    :goto_5
    const/16 v5, 0x20

    if-ge v2, v5, :cond_8

    .line 137
    aput v10, v4, v2

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 142
    :cond_8
    const/16 v5, 0x22

    const/16 v6, 0x22

    aput v6, v4, v5

    .line 143
    const/16 v5, 0x5c

    const/16 v6, 0x5c

    aput v6, v4, v5

    .line 145
    const/16 v5, 0x8

    const/16 v6, 0x62

    aput v6, v4, v5

    .line 146
    const/16 v5, 0x9

    const/16 v6, 0x74

    aput v6, v4, v5

    .line 147
    const/16 v5, 0xc

    const/16 v6, 0x66

    aput v6, v4, v5

    .line 148
    const/16 v5, 0x6e

    aput v5, v4, v11

    .line 149
    const/16 v5, 0xd

    const/16 v6, 0x72

    aput v6, v4, v5

    .line 150
    sput-object v4, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 158
    new-array v5, v8, [I

    .line 160
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([II)V

    .line 161
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v11, :cond_9

    .line 162
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v6, v2, 0x30

    aput v2, v5, v6

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 164
    :cond_9
    const/4 v2, 0x0

    :goto_7
    const/4 v5, 0x6

    if-ge v2, v5, :cond_a

    .line 165
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v6, v2, 0x61

    add-int/lit8 v7, v2, 0xa

    aput v7, v5, v6

    .line 166
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v6, v2, 0x41

    add-int/lit8 v7, v2, 0xa

    aput v7, v5, v6

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 168
    :cond_a
    return-void
.end method

.method public static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x30

    .line 194
    sget-object v2, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 195
    .local v2, "escCodes":[I
    array-length v3, v2

    .line 196
    .local v3, "escLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 197
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 198
    .local v0, "c":C
    if-ge v0, v3, :cond_0

    aget v7, v2, v0

    if-nez v7, :cond_1

    .line 199
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    :cond_1
    const/16 v7, 0x5c

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    aget v1, v2, v0

    .line 204
    .local v1, "escCode":I
    if-gez v1, :cond_2

    .line 206
    const/16 v7, 0x75

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v7, v1, 0x1

    neg-int v6, v7

    .line 210
    .local v6, "value":I
    sget-object v7, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    shr-int/lit8 v8, v6, 0x4

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    sget-object v7, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    and-int/lit8 v8, v6, 0xf

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 213
    .end local v6    # "value":I
    :cond_2
    int-to-char v7, v1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 216
    .end local v0    # "c":C
    .end local v1    # "escCode":I
    :cond_3
    return-void
.end method

.method public static charToHex(I)I
    .locals 1
    .param p0, "ch"    # I

    .prologue
    .line 189
    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static copyHexBytes()[B
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_BYTES:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static copyHexChars()[C
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static get7BitOutputEscapes()[I
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    return-object v0
.end method

.method public static getInputCodeComment()[I
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    return-object v0
.end method

.method public static getInputCodeLatin1()[I
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    return-object v0
.end method

.method public static getInputCodeLatin1JsNames()[I
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    return-object v0
.end method

.method public static getInputCodeUtf8()[I
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8:[I

    return-object v0
.end method

.method public static getInputCodeUtf8JsNames()[I
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    return-object v0
.end method
