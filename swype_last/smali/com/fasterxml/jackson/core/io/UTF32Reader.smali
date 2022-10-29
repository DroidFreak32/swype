.class public final Lcom/fasterxml/jackson/core/io/UTF32Reader;
.super Lcom/fasterxml/jackson/core/io/BaseReader;
.source "UTF32Reader.java"


# instance fields
.field protected final _bigEndian:Z

.field protected _byteCount:I

.field protected _charCount:I

.field protected final _managedBuffers:Z

.field protected _surrogate:C


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BIIZ)V
    .registers 8
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "buf"    # [B
    .param p4, "ptr"    # I
    .param p5, "len"    # I
    .param p6, "isBigEndian"    # Z

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/core/io/BaseReader;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V

    .line 20
    iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    .line 25
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    .line 30
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    .line 45
    iput-boolean p6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z

    .line 46
    if-eqz p2, :cond_f

    const/4 v0, 0x1

    :cond_f
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    .line 47
    return-void
.end method

.method private loadMore(I)Z
    .registers 10
    .param p1, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 168
    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    .line 171
    if-lez p1, :cond_74

    .line 172
    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    if-lez v4, :cond_23

    .line 173
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, p1, :cond_21

    .line 174
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    iget-object v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 176
    :cond_21
    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 178
    .end local v1    # "i":I
    :cond_23
    iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 202
    :goto_25
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    const/4 v4, 0x4

    if-ge v2, v4, :cond_b3

    .line 203
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v2, :cond_98

    move v0, v3

    .line 204
    .local v0, "count":I
    :goto_2f
    if-gtz v0, :cond_ac

    .line 205
    if-gez v0, :cond_a9

    .line 206
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v2, :cond_3a

    .line 207
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    .line 209
    :cond_3a
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 2142
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    add-int/2addr v3, v2

    .line 2143
    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    .line 2145
    new-instance v5, Ljava/io/CharConversionException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ", needed 4, at char #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", byte #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    .end local v0    # "count":I
    :cond_74
    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 184
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v4, :cond_89

    move v0, v3

    .line 185
    .restart local v0    # "count":I
    :goto_7b
    if-gtz v0, :cond_95

    .line 186
    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 187
    if-gez v0, :cond_92

    .line 188
    iget-boolean v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v3, :cond_88

    .line 189
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    .line 216
    .end local v0    # "count":I
    :cond_88
    :goto_88
    return v2

    .line 184
    :cond_89
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_7b

    .line 194
    .restart local v0    # "count":I
    :cond_92
    invoke-static {}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V

    .line 196
    :cond_95
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    goto :goto_25

    .line 203
    .end local v0    # "count":I
    :cond_98
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_2f

    .line 212
    .restart local v0    # "count":I
    :cond_a9
    invoke-static {}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V

    .line 214
    :cond_ac
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    goto/16 :goto_25

    .line 216
    .end local v0    # "count":I
    :cond_b3
    const/4 v2, 0x1

    goto :goto_88
.end method


# virtual methods
.method public final bridge synthetic close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-super {p0}, Lcom/fasterxml/jackson/core/io/BaseReader;->close()V

    return-void
.end method

.method public final bridge synthetic read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-super {p0}, Lcom/fasterxml/jackson/core/io/BaseReader;->read()I

    move-result v0

    return v0
.end method

.method public final read([CII)I
    .registers 15
    .param p1, "cbuf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0x10ffff

    const/4 v5, -0x1

    .line 60
    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    if-nez v6, :cond_9

    .line 130
    :cond_8
    :goto_8
    return v5

    .line 63
    :cond_9
    if-gtz p3, :cond_d

    move v5, p3

    .line 64
    goto :goto_8

    .line 67
    :cond_d
    if-ltz p2, :cond_14

    add-int v6, p2, p3

    array-length v7, p1

    if-le v6, v7, :cond_48

    .line 1108
    :cond_14
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "read(buf,"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "), cbuf["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 71
    :cond_48
    add-int/2addr p3, p2

    .line 72
    move v2, p2

    .line 75
    .local v2, "outPtr":I
    iget-char v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    if-eqz v6, :cond_f5

    .line 76
    add-int/lit8 v2, v2, 0x1

    iget-char v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    aput-char v5, p1, p2

    .line 77
    const/4 v5, 0x0

    iput-char v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    move v3, v2

    .line 92
    .end local v2    # "outPtr":I
    .local v3, "outPtr":I
    :cond_58
    :goto_58
    if-ge v3, p3, :cond_15f

    .line 93
    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 96
    .local v4, "ptr":I
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z

    if-eqz v5, :cond_107

    .line 97
    iget-object v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    aget-byte v5, v5, v4

    shl-int/lit8 v5, v5, 0x18

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int v0, v5, v6

    .line 103
    .local v0, "ch":I
    :goto_86
    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 107
    const v5, 0xffff

    if-le v0, v5, :cond_153

    .line 108
    if-le v0, v8, :cond_12f

    .line 109
    sub-int v5, v3, p2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "(above "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1152
    iget v7, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    iget v8, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    .line 1153
    iget v8, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    add-int/2addr v5, v8

    .line 1155
    new-instance v8, Ljava/io/CharConversionException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Invalid UTF-32 character 0x"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " at char #"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", byte #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 83
    .end local v0    # "ch":I
    .end local v3    # "outPtr":I
    .end local v4    # "ptr":I
    .restart local v2    # "outPtr":I
    :cond_f5
    iget v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iget v7, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    sub-int v1, v6, v7

    .line 84
    .local v1, "left":I
    const/4 v6, 0x4

    if-ge v1, v6, :cond_104

    .line 85
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->loadMore(I)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_104
    move v3, v2

    .end local v2    # "outPtr":I
    .restart local v3    # "outPtr":I
    goto/16 :goto_58

    .line 100
    .end local v1    # "left":I
    .restart local v4    # "ptr":I
    :cond_107
    iget-object v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    aget-byte v5, v5, v4

    and-int/lit16 v5, v5, 0xff

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x3

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    or-int v0, v5, v6

    .restart local v0    # "ch":I
    goto/16 :goto_86

    .line 112
    :cond_12f
    const/high16 v5, 0x10000

    sub-int/2addr v0, v5

    .line 113
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    const v5, 0xd800

    shr-int/lit8 v6, v0, 0xa

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, p1, v3

    .line 115
    const v5, 0xdc00

    and-int/lit16 v6, v0, 0x3ff

    or-int v0, v5, v6

    .line 117
    if-lt v2, p3, :cond_154

    .line 118
    int-to-char v5, v0

    iput-char v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    .line 128
    .end local v0    # "ch":I
    .end local v4    # "ptr":I
    :goto_149
    sub-int p3, v2, p2

    .line 129
    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    add-int/2addr v5, p3

    iput v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    move v5, p3

    .line 130
    goto/16 :goto_8

    .end local v2    # "outPtr":I
    .restart local v0    # "ch":I
    .restart local v3    # "outPtr":I
    .restart local v4    # "ptr":I
    :cond_153
    move v2, v3

    .line 122
    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    :cond_154
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outPtr":I
    .restart local v3    # "outPtr":I
    int-to-char v5, v0

    aput-char v5, p1, v2

    .line 123
    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    if-lt v5, v6, :cond_58

    .end local v0    # "ch":I
    .end local v4    # "ptr":I
    :cond_15f
    move v2, v3

    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    goto :goto_149
.end method
