.class final Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UTF7StyleCharsetDecoder.java"


# instance fields
.field private final base64:Lcom/beetstra/jutf7/Base64Util;

.field private base64mode:Z

.field private bitsRead:I

.field private justShifted:Z

.field private justUnshifted:Z

.field private final shift:B

.field private final strict:Z

.field private tempChar:I

.field private final unshift:B


# direct methods
.method constructor <init>(Lcom/beetstra/jutf7/UTF7StyleCharset;Lcom/beetstra/jutf7/Base64Util;Z)V
    .locals 2
    .param p1, "cs"    # Lcom/beetstra/jutf7/UTF7StyleCharset;
    .param p2, "base64"    # Lcom/beetstra/jutf7/Base64Util;
    .param p3, "strict"    # Z

    .prologue
    .line 52
    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 53
    iput-object p2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    .line 54
    iput-boolean p3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z

    .line 55
    invoke-virtual {p1}, Lcom/beetstra/jutf7/UTF7StyleCharset;->shift()B

    move-result v0

    iput-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->shift:B

    .line 56
    invoke-virtual {p1}, Lcom/beetstra/jutf7/UTF7StyleCharset;->unshift()B

    move-result v0

    iput-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->unshift:B

    .line 57
    return-void
.end method

.method private base64bitsWaiting()Z
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static overflow(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method private setUnshifted()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    .line 192
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 193
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 194
    return-void
.end method


# virtual methods
.method protected final decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 8
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 65
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 67
    .local v0, "b":B
    iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    if-eqz v2, :cond_b

    .line 68
    iget-byte v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->unshift:B

    if-ne v0, v2, :cond_4

    .line 69
    invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64bitsWaiting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 100
    .end local v0    # "b":B
    :goto_1
    return-object v1

    .line 71
    .restart local v0    # "b":B
    :cond_0
    iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justShifted:Z

    if-eqz v2, :cond_3

    .line 72
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    invoke-static {p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->overflow(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_1

    .line 74
    :cond_1
    iget-byte v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->shift:B

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 77
    :goto_2
    invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->setUnshifted()V

    .line 85
    :cond_2
    iput-boolean v7, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justShifted:Z

    goto :goto_0

    .line 76
    :cond_3
    iput-boolean v6, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z

    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_5

    .line 80
    invoke-static {p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->overflow(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_1

    .line 81
    :cond_5
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    const/16 v4, 0x80

    if-lt v0, v4, :cond_6

    const/4 v3, -0x1

    :goto_3
    if-ltz v3, :cond_8

    iget v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    add-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    iget v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_7

    iget v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    iget v5, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    rsub-int/lit8 v5, v5, 0x10

    shl-int/2addr v3, v5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    :goto_4
    move-object v1, v2

    .line 82
    .local v1, "result":Ljava/nio/charset/CoderResult;
    :goto_5
    if-eqz v1, :cond_2

    goto :goto_1

    .line 81
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :cond_6
    iget-object v3, v3, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    aget v3, v3, v0

    goto :goto_3

    :cond_7
    iget v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    add-int/lit8 v4, v4, -0x10

    iput v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    iget v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    iget v5, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    shr-int v5, v3, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    iget v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    int-to-char v4, v4

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    iget v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    rsub-int/lit8 v4, v4, 0x10

    shl-int/2addr v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    iput v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    goto :goto_4

    :cond_8
    iget-boolean v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z

    if-eqz v3, :cond_9

    invoke-static {p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_5

    :cond_9
    int-to-char v3, v0

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64bitsWaiting()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    :cond_a
    invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->setUnshifted()V

    goto :goto_4

    .line 87
    :cond_b
    iget-byte v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->shift:B

    if-ne v0, v2, :cond_d

    .line 88
    iput-boolean v6, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    .line 89
    iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z

    if-eqz v2, :cond_c

    .line 90
    invoke-static {p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto/16 :goto_1

    .line 91
    :cond_c
    iput-boolean v6, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justShifted:Z

    goto/16 :goto_0

    .line 94
    :cond_d
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_e

    .line 95
    invoke-static {p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->overflow(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto/16 :goto_1

    .line 96
    :cond_e
    int-to-char v2, v0

    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 97
    iput-boolean v7, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z

    goto/16 :goto_0

    .line 100
    .end local v0    # "b":B
    :cond_f
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto/16 :goto_1
.end method

.method protected final implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64bitsWaiting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_0
.end method

.method protected final implReset()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->setUnshifted()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z

    .line 161
    return-void
.end method
