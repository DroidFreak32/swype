.class public abstract Lcom/google/gdata/util/common/base/UnicodeEscaper;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"


# static fields
.field private static final DEST_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 454
    new-instance v0, Lcom/google/gdata/util/common/base/UnicodeEscaper$2;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/UnicodeEscaper$2;-><init>()V

    sput-object v0, Lcom/google/gdata/util/common/base/UnicodeEscaper;->DEST_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static codePointAt(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "end"    # I

    .prologue
    .line 408
    if-ge p1, p2, :cond_5

    .line 409
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 410
    .local v0, "c1":C
    const v3, 0xd800

    if-lt v0, v3, :cond_0

    const v3, 0xdfff

    if-le v0, v3, :cond_1

    .line 422
    .end local v0    # "c1":C
    :cond_0
    :goto_0
    return v0

    .line 414
    .restart local v0    # "c1":C
    :cond_1
    const v3, 0xdbff

    if-gt v0, v3, :cond_4

    .line 416
    if-ne v2, p2, :cond_2

    .line 417
    neg-int v0, v0

    goto :goto_0

    .line 420
    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 421
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 422
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_0

    .line 424
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected low surrogate but got char \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 428
    .end local v1    # "c2":C
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected low surrogate character \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 433
    .end local v0    # "c1":C
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :cond_5
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "Index exceeds specified range"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final growBuffer([CII)[C
    .locals 2
    .param p0, "dest"    # [C
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 442
    new-array v0, p2, [C

    .line 443
    .local v0, "copy":[C
    if-lez p1, :cond_0

    .line 444
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 144
    .local v0, "end":I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 145
    .local v1, "index":I
    if-ne v1, v0, :cond_0

    .end local p1    # "string":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v12, 0x0

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 169
    .local v5, "end":I
    sget-object v10, Lcom/google/gdata/util/common/base/UnicodeEscaper;->DEST_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    .line 170
    .local v2, "dest":[C
    const/4 v3, 0x0

    .line 171
    .local v3, "destIndex":I
    const/4 v9, 0x0

    .line 173
    .local v9, "unescapedChunkStart":I
    :goto_0
    if-ge p2, v5, :cond_5

    .line 174
    invoke-static {p1, p2, v5}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 175
    .local v1, "cp":I
    if-gez v1, :cond_0

    .line 176
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Trailing high surrogate at end of input"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 179
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v7

    .line 180
    .local v7, "escaped":[C
    if-eqz v7, :cond_3

    .line 181
    sub-int v0, p2, v9

    .line 185
    .local v0, "charsSkipped":I
    add-int v10, v3, v0

    array-length v11, v7

    add-int v8, v10, v11

    .line 186
    .local v8, "sizeNeeded":I
    array-length v10, v2

    if-ge v10, v8, :cond_1

    .line 187
    sub-int v10, v5, p2

    add-int/2addr v10, v8

    add-int/lit8 v4, v10, 0x20

    .line 188
    .local v4, "destLength":I
    invoke-static {v2, v3, v4}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 191
    .end local v4    # "destLength":I
    :cond_1
    if-lez v0, :cond_2

    .line 192
    invoke-virtual {p1, v9, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 193
    add-int/2addr v3, v0

    .line 195
    :cond_2
    array-length v10, v7

    if-lez v10, :cond_3

    .line 196
    array-length v10, v7

    invoke-static {v7, v12, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    array-length v10, v7

    add-int/2addr v3, v10

    .line 200
    .end local v0    # "charsSkipped":I
    .end local v8    # "sizeNeeded":I
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x2

    :goto_1
    add-int v9, p2, v10

    .line 202
    invoke-virtual {p0, p1, v9, v5}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 203
    goto :goto_0

    .line 200
    :cond_4
    const/4 v10, 0x1

    goto :goto_1

    .line 207
    .end local v1    # "cp":I
    .end local v7    # "escaped":[C
    :cond_5
    sub-int v0, v5, v9

    .line 208
    .restart local v0    # "charsSkipped":I
    if-lez v0, :cond_7

    .line 209
    add-int v6, v3, v0

    .line 210
    .local v6, "endIndex":I
    array-length v10, v2

    if-ge v10, v6, :cond_6

    .line 211
    invoke-static {v2, v3, v6}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 213
    :cond_6
    invoke-virtual {p1, v9, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 214
    move v3, v6

    .line 216
    .end local v6    # "endIndex":I
    :cond_7
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v12, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v10
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 108
    move v1, p2

    .line 109
    .local v1, "index":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 110
    invoke-static {p1, v1, p3}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 111
    .local v0, "cp":I
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    if-nez v2, :cond_1

    .line 112
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    :goto_1
    add-int/2addr v1, v2

    .line 115
    goto :goto_0

    .line 112
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 116
    .end local v0    # "cp":I
    :cond_1
    return v1
.end method
