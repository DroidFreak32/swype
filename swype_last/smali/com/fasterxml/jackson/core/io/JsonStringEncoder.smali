.class public final Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final HEX_BYTES:[B

.field private static final HEX_CHARS:[C

.field protected static final _threadEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/fasterxml/jackson/core/io/JsonStringEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

.field protected final _quoteBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_CHARS:[C

    .line 21
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x30

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    .line 66
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x2

    aput-char v3, v0, v1

    .line 68
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    .line 69
    return-void
.end method

.method private static _throwIllegalSurrogate(I)V
    .registers 4
    .param p0, "code"    # I

    .prologue
    .line 396
    const v0, 0x10ffff

    if-le p0, v0, :cond_26

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal character point (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_26
    const v0, 0xd800

    if-lt p0, v0, :cond_72

    .line 400
    const v0, 0xdbff

    if-gt p0, v0, :cond_51

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unmatched first part of surrogate pair (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unmatched second part of surrogate pair (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal character point (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    .registers 4

    .prologue
    .line 77
    sget-object v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 78
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/fasterxml/jackson/core/io/JsonStringEncoder;>;"
    if-nez v1, :cond_1d

    const/4 v0, 0x0

    .line 80
    .local v0, "enc":Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    :goto_b
    if-nez v0, :cond_1c

    .line 81
    new-instance v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .end local v0    # "enc":Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;-><init>()V

    .line 82
    .restart local v0    # "enc":Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    sget-object v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 84
    :cond_1c
    return-object v0

    .line 78
    .end local v0    # "enc":Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-object v0, v2

    goto :goto_b
.end method


# virtual methods
.method public final encodeAsUTF8(Ljava/lang/String;)[B
    .registers 15
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 255
    .local v0, "byteBuilder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    if-nez v0, :cond_c

    .line 257
    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .end local v0    # "byteBuilder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(B)V

    .restart local v0    # "byteBuilder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 259
    :cond_c
    const/4 v3, 0x0

    .line 260
    .local v3, "inputPtr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 261
    .local v2, "inputEnd":I
    const/4 v7, 0x0

    .line 1183
    .local v7, "outputPtr":I
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->reset()V

    .line 1184
    iget-object v5, v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    .line 263
    .local v5, "outputBuffer":[B
    array-length v6, v5

    .local v6, "outputEnd":I
    move v4, v3

    .line 266
    .end local v3    # "inputPtr":I
    .local v4, "inputPtr":I
    :goto_19
    if-ge v4, v2, :cond_137

    .line 267
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":I
    move v4, v3

    .line 270
    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :goto_22
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_3e

    .line 271
    if-lt v7, v6, :cond_2e

    .line 272
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 273
    array-length v6, v5

    .line 274
    const/4 v7, 0x0

    .line 276
    :cond_2e
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .local v8, "outputPtr":I
    int-to-byte v9, v1

    aput-byte v9, v5, v7

    .line 277
    if-ge v4, v2, :cond_129

    .line 280
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, v3

    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_22

    .line 284
    :cond_3e
    if-lt v7, v6, :cond_134

    .line 285
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 286
    array-length v6, v5

    .line 287
    const/4 v7, 0x0

    move v8, v7

    .line 289
    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_47
    const/16 v9, 0x800

    if-ge v1, v9, :cond_69

    .line 290
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    move v3, v4

    .line 328
    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :goto_55
    if-lt v7, v6, :cond_5d

    .line 329
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 330
    array-length v6, v5

    .line 331
    const/4 v7, 0x0

    .line 333
    :cond_5d
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, v3

    .line 334
    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_19

    .line 293
    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_69
    const v9, 0xd800

    if-lt v1, v9, :cond_73

    const v9, 0xdfff

    if-le v1, v9, :cond_92

    .line 294
    :cond_73
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v9, v1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 295
    if-lt v7, v6, :cond_84

    .line 296
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 297
    array-length v6, v5

    .line 298
    const/4 v7, 0x0

    .line 300
    :cond_84
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v3, v4

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_55

    .line 302
    .end local v3    # "inputPtr":I
    .end local v7    # "outputPtr":I
    .restart local v4    # "inputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_92
    const v9, 0xdbff

    if-le v1, v9, :cond_9a

    .line 303
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 306
    :cond_9a
    if-lt v4, v2, :cond_9f

    .line 307
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 309
    :cond_9f
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1388
    const v10, 0xdc00

    if-lt v9, v10, :cond_af

    const v10, 0xdfff

    if-le v9, v10, :cond_df

    .line 1389
    :cond_af
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Broken surrogate pair: first char 0x"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", second 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "; illegal combination"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1391
    :cond_df
    const/high16 v10, 0x10000

    const v11, 0xd800

    sub-int v11, v1, v11

    shl-int/lit8 v11, v11, 0xa

    add-int/2addr v10, v11

    const v11, 0xdc00

    sub-int/2addr v9, v11

    add-int v1, v10, v9

    .line 310
    const v9, 0x10ffff

    if-le v1, v9, :cond_f7

    .line 311
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 313
    :cond_f7
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 314
    if-lt v7, v6, :cond_108

    .line 315
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 316
    array-length v6, v5

    .line 317
    const/4 v7, 0x0

    .line 319
    :cond_108
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    .line 320
    if-lt v8, v6, :cond_139

    .line 321
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 322
    array-length v6, v5

    .line 323
    const/4 v7, 0x0

    .line 325
    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    :goto_11b
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    goto/16 :goto_55

    .end local v3    # "inputPtr":I
    .end local v7    # "outputPtr":I
    .restart local v4    # "inputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_129
    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v3, v4

    .line 335
    .end local v1    # "c":I
    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :goto_12b
    iget-object v9, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 2208
    iput v7, v9, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 2209
    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v9

    .line 335
    return-object v9

    .end local v3    # "inputPtr":I
    .restart local v1    # "c":I
    .restart local v4    # "inputPtr":I
    :cond_134
    move v8, v7

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto/16 :goto_47

    .end local v1    # "c":I
    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    :cond_137
    move v3, v4

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_12b

    .end local v7    # "outputPtr":I
    .restart local v1    # "c":I
    .restart local v8    # "outputPtr":I
    :cond_139
    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    goto :goto_11b
.end method
