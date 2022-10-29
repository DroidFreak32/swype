.class public abstract Lcom/fasterxml/jackson/core/base/ParserBase;
.super Lcom/fasterxml/jackson/core/base/ParserMinimalBase;
.source "ParserBase.java"


# static fields
.field static final BD_MAX_INT:Ljava/math/BigDecimal;

.field static final BD_MAX_LONG:Ljava/math/BigDecimal;

.field static final BD_MIN_INT:Ljava/math/BigDecimal;

.field static final BD_MIN_LONG:Ljava/math/BigDecimal;

.field static final BI_MAX_INT:Ljava/math/BigInteger;

.field static final BI_MAX_LONG:Ljava/math/BigInteger;

.field static final BI_MIN_INT:Ljava/math/BigInteger;

.field static final BI_MIN_LONG:Ljava/math/BigInteger;


# instance fields
.field public _binaryValue:[B

.field protected _byteArrayBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

.field protected _closed:Z

.field public _currInputProcessed:J

.field public _currInputRow:I

.field public _currInputRowStart:I

.field protected _expLength:I

.field protected _fractLength:I

.field public _inputEnd:I

.field public _inputPtr:I

.field protected _intLength:I

.field public final _ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

.field public _nameCopied:Z

.field protected _nameCopyBuffer:[C

.field public _nextToken:Lcom/fasterxml/jackson/core/JsonToken;

.field public _numTypesValid:I

.field protected _numberBigDecimal:Ljava/math/BigDecimal;

.field protected _numberBigInt:Ljava/math/BigInteger;

.field protected _numberDouble:D

.field protected _numberInt:I

.field protected _numberLong:J

.field protected _numberNegative:Z

.field public _parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

.field public final _textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

.field public _tokenInputCol:I

.field public _tokenInputRow:I

.field public _tokenInputTotal:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 195
    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MIN_INT:Ljava/math/BigInteger;

    .line 196
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MAX_INT:Ljava/math/BigInteger;

    .line 198
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MIN_LONG:Ljava/math/BigInteger;

    .line 199
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MAX_LONG:Ljava/math/BigInteger;

    .line 201
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MIN_LONG:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    .line 202
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MAX_LONG:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    .line 204
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MIN_INT:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    .line 205
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MAX_INT:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V
    .registers 9
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "features"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 299
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;-><init>()V

    .line 54
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 59
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 71
    iput-wide v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputProcessed:J

    .line 77
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 85
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 101
    iput-wide v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputTotal:J

    .line 106
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 112
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 151
    iput-object v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopyBuffer:[C

    .line 158
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopied:Z

    .line 164
    iput-object v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_byteArrayBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 247
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    .line 300
    iput p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_features:I

    .line 301
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 302
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->constructTextBuffer()Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 1070
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;-><init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;III)V

    .line 303
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 304
    return-void
.end method

.method private _parseNumericValue(I)V
    .registers 13
    .param p1, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 727
    iget-object v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_a3

    .line 728
    iget-object v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    .line 729
    .local v0, "buf":[C
    iget-object v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v5

    .line 730
    .local v5, "offset":I
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_intLength:I

    .line 731
    .local v4, "len":I
    iget-boolean v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z

    if-eqz v6, :cond_1e

    .line 732
    add-int/lit8 v5, v5, 0x1

    .line 734
    :cond_1e
    const/16 v6, 0x9

    if-gt v4, v6, :cond_30

    .line 735
    invoke-static {v0, v5, v4}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt([CII)I

    move-result v1

    .line 736
    .local v1, "i":I
    iget-boolean v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z

    if-eqz v6, :cond_2b

    neg-int v1, v1

    .end local v1    # "i":I
    :cond_2b
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I

    .line 737
    iput v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    .line 7797
    .end local v0    # "buf":[C
    .end local v4    # "len":I
    .end local v5    # "offset":I
    :goto_2f
    return-void

    .line 740
    .restart local v0    # "buf":[C
    .restart local v4    # "len":I
    .restart local v5    # "offset":I
    :cond_30
    const/16 v6, 0x12

    if-gt v4, v6, :cond_64

    .line 741
    invoke-static {v0, v5, v4}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong([CII)J

    move-result-wide v2

    .line 742
    .local v2, "l":J
    iget-boolean v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z

    if-eqz v6, :cond_3d

    .line 743
    neg-long v2, v2

    .line 746
    :cond_3d
    const/16 v6, 0xa

    if-ne v4, v6, :cond_5f

    .line 747
    iget-boolean v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z

    if-eqz v6, :cond_52

    .line 748
    const-wide/32 v6, -0x80000000

    cmp-long v6, v2, v6

    if-ltz v6, :cond_5f

    .line 749
    long-to-int v6, v2

    iput v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I

    .line 750
    iput v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    goto :goto_2f

    .line 754
    :cond_52
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v2, v6

    if-gtz v6, :cond_5f

    .line 755
    long-to-int v6, v2

    iput v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I

    .line 756
    iput v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    goto :goto_2f

    .line 761
    :cond_5f
    iput-wide v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J

    .line 762
    iput v9, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    goto :goto_2f

    .line 6803
    .end local v2    # "l":J
    :cond_64
    iget-object v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v7

    .line 6806
    :try_start_6a
    iget-boolean v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z

    invoke-static {v0, v5, v4, v6}, Lcom/fasterxml/jackson/core/io/NumberInput;->inLongRange([CIIZ)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 6808
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J

    .line 6809
    const/4 v6, 0x2

    iput v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_7b} :catch_7c

    goto :goto_2f

    .line 6815
    :catch_7c
    move-exception v6

    .line 6817
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Malformed numeric value \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/fasterxml/jackson/core/base/ParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 6812
    :cond_98
    :try_start_98
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 6813
    const/4 v6, 0x4

    iput v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_a2} :catch_7c

    goto :goto_2f

    .line 768
    .end local v0    # "buf":[C
    .end local v4    # "len":I
    .end local v5    # "offset":I
    :cond_a3
    iget-object v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_11e

    .line 7786
    if-ne p1, v10, :cond_10c

    .line 7787
    :try_start_ab
    iget-object v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 8385
    iget-object v6, v7, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    if-eqz v6, :cond_e3

    .line 8386
    new-instance v6, Ljava/math/BigDecimal;

    iget-object v7, v7, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    invoke-direct {v6, v7}, Ljava/math/BigDecimal;-><init>([C)V

    .line 7787
    :goto_b8
    iput-object v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 7788
    const/16 v6, 0x10

    iput v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
    :try_end_be
    .catch Ljava/lang/NumberFormatException; {:try_start_ab .. :try_end_be} :catch_c0

    goto/16 :goto_2f

    .line 7794
    :catch_c0
    move-exception v6

    .line 7796
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Malformed numeric value \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/fasterxml/jackson/core/base/ParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 8389
    :cond_e3
    :try_start_e3
    iget v6, v7, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v6, :cond_f3

    .line 8390
    new-instance v6, Ljava/math/BigDecimal;

    iget-object v8, v7, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    iget v9, v7, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    iget v7, v7, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    invoke-direct {v6, v8, v9, v7}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_b8

    .line 8393
    :cond_f3
    iget v6, v7, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    if-nez v6, :cond_102

    .line 8394
    new-instance v6, Ljava/math/BigDecimal;

    iget-object v8, v7, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    const/4 v9, 0x0

    iget v7, v7, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-direct {v6, v8, v9, v7}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_b8

    .line 8397
    :cond_102
    new-instance v6, Ljava/math/BigDecimal;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_b8

    .line 7791
    :cond_10c
    iget-object v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 8407
    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 7791
    iput-wide v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    .line 7792
    const/16 v6, 0x8

    iput v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
    :try_end_11c
    .catch Ljava/lang/NumberFormatException; {:try_start_e3 .. :try_end_11c} :catch_c0

    goto/16 :goto_2f

    .line 772
    :cond_11e
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Current token ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8599
    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v6

    throw v6
.end method

.method private reportOverflowInt()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") out of range of int (-2147483648 - 2147483647)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11599
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private reportOverflowLong()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") out of range of long (-9223372036854775808 - 9223372036854775807)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12599
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public abstract _closeInput()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public _decodeEscaped()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1009
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract _finishString()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation
.end method

.method public final _handleEOF()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 3078
    iget v0, v0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    if-nez v0, :cond_41

    const/4 v0, 0x1

    .line 478
    :goto_7
    if-nez v0, :cond_40

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ": expected close marker for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 481
    :cond_40
    return-void

    .line 3078
    :cond_41
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public _releaseBuffers()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 462
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 2136
    iget-object v2, v1, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    if-nez v2, :cond_16

    .line 2137
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithEmpty()V

    .line 463
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopyBuffer:[C

    .line 464
    .local v0, "buf":[C
    if-eqz v0, :cond_15

    .line 465
    iput-object v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopyBuffer:[C

    .line 466
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseNameCopyBuffer([C)V

    .line 468
    :cond_15
    return-void

    .line 2139
    .end local v0    # "buf":[C
    :cond_16
    iget-object v2, v1, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    if-eqz v2, :cond_a

    .line 2141
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithEmpty()V

    .line 2143
    iget-object v2, v1, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 2144
    iput-object v4, v1, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 2145
    iget-object v1, v1, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v3, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V

    goto :goto_a
.end method

.method public final _reportMismatchedEndMarker(IC)V
    .registers 7
    .param p1, "actCh"    # I
    .param p2, "expCh"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "startDesc":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected close marker \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3599
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v1

    throw v1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_closed:Z

    if-nez v0, :cond_d

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_closed:Z

    .line 345
    :try_start_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_closeInput()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 349
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    .line 352
    :cond_d
    return-void

    .line 349
    :catchall_e
    move-exception v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    throw v0
.end method

.method public final getBigIntegerValue()Ljava/math/BigInteger;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 654
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_28

    .line 655
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    if-nez v0, :cond_e

    .line 656
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseNumericValue(I)V

    .line 658
    :cond_e
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_28

    .line 5896
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2b

    .line 5898
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 5908
    :goto_22
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    .line 662
    :cond_28
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    return-object v0

    .line 5899
    :cond_2b
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3a

    .line 5900
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_22

    .line 5901
    :cond_3a
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4a

    .line 5902
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_22

    .line 5903
    :cond_4a
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5d

    .line 5904
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_22

    .line 5906
    :cond_5d
    invoke-static {}, Lcom/fasterxml/jackson/core/base/ParserBase;->_throwInternal()V

    goto :goto_22
.end method

.method public final getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .registers 9

    .prologue
    .line 384
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 385
    .local v5, "col":I
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputProcessed:J

    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public final getCurrentName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_17

    .line 322
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public final getDecimalValue()Ljava/math/BigDecimal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 697
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2c

    .line 698
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    if-nez v0, :cond_f

    .line 699
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseNumericValue(I)V

    .line 701
    :cond_f
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2c

    .line 5944
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2f

    .line 5949
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 5959
    :goto_26
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    .line 705
    :cond_2c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    return-object v0

    .line 5950
    :cond_2f
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3f

    .line 5951
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_26

    .line 5952
    :cond_3f
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4e

    .line 5953
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_26

    .line 5954
    :cond_4e
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5e

    .line 5955
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_26

    .line 5957
    :cond_5e
    invoke-static {}, Lcom/fasterxml/jackson/core/base/ParserBase;->_throwInternal()V

    goto :goto_26
.end method

.method public final getDoubleValue()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 683
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_29

    .line 684
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    if-nez v0, :cond_f

    .line 685
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseNumericValue(I)V

    .line 687
    :cond_f
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_29

    .line 5920
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2c

    .line 5921
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    .line 5932
    :goto_23
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    .line 691
    :cond_29
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    return-wide v0

    .line 5922
    :cond_2c
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3b

    .line 5923
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    goto :goto_23

    .line 5924
    :cond_3b
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_47

    .line 5925
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    goto :goto_23

    .line 5926
    :cond_47
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_53

    .line 5927
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    goto :goto_23

    .line 5929
    :cond_53
    invoke-static {}, Lcom/fasterxml/jackson/core/base/ParserBase;->_throwInternal()V

    goto :goto_23
.end method

.method public final getFloatValue()F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getDoubleValue()D

    move-result-wide v0

    .line 677
    double-to-float v0, v0

    return v0
.end method

.method public final getIntValue()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 626
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4c

    .line 627
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    if-nez v0, :cond_e

    .line 628
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseNumericValue(I)V

    .line 630
    :cond_e
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4c

    .line 4831
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4f

    .line 4833
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J

    long-to-int v0, v0

    .line 4834
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_44

    .line 4835
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") out of range of int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5599
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    .line 4837
    :cond_44
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I

    .line 4860
    :goto_46
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    .line 634
    :cond_4c
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I

    return v0

    .line 4838
    :cond_4f
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_75

    .line 4839
    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MIN_INT:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_69

    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MAX_INT:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_6c

    .line 4841
    :cond_69
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportOverflowInt()V

    .line 4843
    :cond_6c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I

    goto :goto_46

    .line 4844
    :cond_75
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_97

    .line 4846
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_8e

    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_91

    .line 4847
    :cond_8e
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportOverflowInt()V

    .line 4849
    :cond_91
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    double-to-int v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I

    goto :goto_46

    .line 4850
    :cond_97
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_bd

    .line 4851
    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_b1

    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_b4

    .line 4853
    :cond_b1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportOverflowInt()V

    .line 4855
    :cond_b4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I

    goto :goto_46

    .line 4857
    :cond_bd
    invoke-static {}, Lcom/fasterxml/jackson/core/base/ParserBase;->_throwInternal()V

    goto :goto_46
.end method

.method public final getLongValue()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 640
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    .line 641
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    if-nez v0, :cond_e

    .line 642
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseNumericValue(I)V

    .line 644
    :cond_e
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    .line 5866
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    .line 5867
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J

    .line 5890
    :goto_1f
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    .line 648
    :cond_25
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J

    return-wide v0

    .line 5868
    :cond_28
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4e

    .line 5869
    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MIN_LONG:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_42

    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MAX_LONG:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_45

    .line 5871
    :cond_42
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportOverflowLong()V

    .line 5873
    :cond_45
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J

    goto :goto_1f

    .line 5874
    :cond_4e
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6d

    .line 5876
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_64

    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v0, v2

    if-lez v0, :cond_67

    .line 5877
    :cond_64
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportOverflowLong()V

    .line 5879
    :cond_67
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J

    goto :goto_1f

    .line 5880
    :cond_6d
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_93

    .line 5881
    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_87

    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_8a

    .line 5883
    :cond_87
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportOverflowLong()V

    .line 5885
    :cond_8a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J

    goto :goto_1f

    .line 5887
    :cond_93
    invoke-static {}, Lcom/fasterxml/jackson/core/base/ParserBase;->_throwInternal()V

    goto :goto_1f
.end method

.method public abstract loadMore()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final loadMoreGuaranteed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 434
    :cond_1b
    return-void
.end method

.method public final reportInvalidNumber(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Invalid numeric value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10599
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method public final reportUnexpectedNumberChar(ILjava/lang/String;)V
    .registers 6
    .param p1, "ch"    # I
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected character ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") in numeric value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9599
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v1

    throw v1
.end method

.method public final reset(ZIII)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 6
    .param p1, "negative"    # Z
    .param p2, "intLen"    # I
    .param p3, "fractLen"    # I
    .param p4, "expLen"    # I

    .prologue
    .line 522
    if-gtz p3, :cond_9

    if-gtz p4, :cond_9

    .line 523
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 525
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetFloat(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_8
.end method

.method public final resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 8
    .param p1, "valueStr"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 550
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 4214
    iput-object v3, v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 4215
    const/4 v1, -0x1

    iput v1, v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 4216
    iput v2, v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 4218
    iput-object p1, v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 4219
    iput-object v3, v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 4221
    iget-boolean v1, v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-eqz v1, :cond_16

    .line 4222
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V

    .line 4224
    :cond_16
    iput v2, v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 551
    iput-wide p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D

    .line 552
    const/16 v0, 0x8

    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    .line 553
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final resetFloat(ZIII)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 6
    .param p1, "negative"    # Z
    .param p2, "intLen"    # I
    .param p3, "fractLen"    # I
    .param p4, "expLen"    # I

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z

    .line 541
    iput p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_intLength:I

    .line 542
    iput p3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_fractLength:I

    .line 543
    iput p4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_expLength:I

    .line 544
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    .line 545
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 4
    .param p1, "negative"    # Z
    .param p2, "intLen"    # I

    .prologue
    const/4 v0, 0x0

    .line 530
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z

    .line 531
    iput p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_intLength:I

    .line 532
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_fractLength:I

    .line 533
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_expLength:I

    .line 534
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    .line 535
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method
