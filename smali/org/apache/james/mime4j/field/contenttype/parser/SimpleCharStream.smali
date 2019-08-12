.class public final Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# instance fields
.field private available:I

.field bufcolumn:[I

.field private buffer:[C

.field bufline:[I

.field public bufpos:I

.field private bufsize:I

.field private column:I

.field private inBuf:I

.field private inputStream:Ljava/io/Reader;

.field private line:I

.field private maxNextCharInd:I

.field private prevCharIsCR:Z

.field private prevCharIsLF:Z

.field private tabSize:I

.field tokenBegin:I


# direct methods
.method private constructor <init>(Ljava/io/Reader;)V
    .locals 4
    .param p1, "dstream"    # Ljava/io/Reader;

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x1000

    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    .line 34
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    .line 35
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I

    .line 37
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 38
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 43
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    .line 44
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I

    .line 45
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tabSize:I

    .line 260
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 261
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I

    .line 262
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    .line 264
    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    .line 265
    new-array v0, v2, [C

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    .line 266
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    .line 267
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    .line 268
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;B)V
    .locals 0
    .param p1, "dstream"    # Ljava/io/Reader;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/Reader;)V

    .line 274
    return-void
.end method

.method private ExpandBuff(Z)V
    .locals 10
    .param p1, "wrapAround"    # Z

    .prologue
    const/4 v9, 0x0

    .line 53
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v1, v4, [C

    .line 54
    .local v1, "newbuffer":[C
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v2, v4, [I

    .line 55
    .local v2, "newbufline":[I
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v0, v4, [I

    .line 59
    .local v0, "newbufcolumn":[I
    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    .line 66
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    .line 70
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    .line 74
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    .line 97
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    .line 98
    iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    .line 99
    return-void

    .line 78
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    .line 81
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    .line 84
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    .line 87
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v3

    .line 92
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/Error;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public final GetImage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 376
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 379
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final GetSuffix(I)[C
    .locals 5
    .param p1, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 385
    new-array v0, p1, [C

    .line 387
    .local v0, "ret":[C
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    .line 388
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :goto_0
    return-object v0

    .line 391
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final backup(I)V
    .locals 2
    .param p1, "amount"    # I

    .prologue
    .line 252
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I

    .line 253
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_0

    .line 254
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    .line 255
    :cond_0
    return-void
.end method

.method public final getEndColumn()I
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public final getEndLine()I
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public final readChar()C
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x800

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I

    if-lez v1, :cond_1

    .line 199
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I

    .line 201
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    if-ne v1, v2, :cond_0

    .line 202
    iput v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    .line 204
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 213
    :goto_0
    return v0

    .line 207
    :cond_1
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    if-lt v1, v2, :cond_a

    .line 208
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    if-ne v1, v2, :cond_6

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    if-le v1, v3, :cond_4

    iput v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    iput v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    :cond_2
    :goto_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-ne v1, v8, :cond_9

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    if-ne v2, v8, :cond_3

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    :cond_3
    throw v1

    :cond_4
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    if-gez v1, :cond_5

    iput v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    iput v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    goto :goto_1

    :cond_5
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_1

    :cond_6
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    if-le v1, v2, :cond_7

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    goto :goto_1

    :cond_7
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    sub-int/2addr v1, v2

    if-ge v1, v3, :cond_8

    invoke-direct {p0, v7}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_1

    :cond_8
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    goto :goto_1

    :cond_9
    :try_start_1
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :cond_a
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 212
    .local v0, "c":C
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    iget-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z

    if-eqz v1, :cond_d

    iput-boolean v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z

    :cond_b
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I

    :cond_c
    :goto_2
    packed-switch v0, :pswitch_data_0

    :goto_3
    :pswitch_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I

    aput v3, v1, v2

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    aput v3, v1, v2

    goto/16 :goto_0

    :cond_d
    iget-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v1, :cond_c

    iput-boolean v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    iput-boolean v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_2

    :pswitch_1
    iput-boolean v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_3

    :pswitch_2
    iput-boolean v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_3

    :pswitch_3
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tabSize:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tabSize:I

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
