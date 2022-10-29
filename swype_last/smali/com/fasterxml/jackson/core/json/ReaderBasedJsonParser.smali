.class public final Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;
.super Lcom/fasterxml/jackson/core/base/ParserBase;
.source "ReaderBasedJsonParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser$1;
    }
.end annotation


# instance fields
.field protected final _hashSeed:I

.field protected _inputBuffer:[C

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field protected _reader:Ljava/io/Reader;

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/Reader;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V
    .registers 7
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "features"    # I
    .param p3, "r"    # Ljava/io/Reader;
    .param p4, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p5, "st"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 74
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    .line 75
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocTokenBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 76
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 77
    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 2412
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    .line 78
    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 79
    return-void
.end method

.method private _handleApostropheValue()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x27

    .line 1394
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 1395
    .local v2, "outBuf":[C
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 13566
    iget v3, v5, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 1398
    .local v3, "outPtr":I
    :goto_e
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v5, v6, :cond_20

    .line 1399
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_20

    .line 1400
    const-string/jumbo v5, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1403
    :cond_20
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v5, v6

    .line 1405
    .local v0, "c":C
    move v1, v0

    .local v1, "i":I
    if-gt v0, v9, :cond_33

    .line 1406
    if-ne v1, v9, :cond_43

    .line 1411
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v0

    .line 1422
    :cond_33
    :goto_33
    array-length v5, v2

    if-lt v3, v5, :cond_3d

    .line 1423
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 1424
    const/4 v3, 0x0

    .line 1427
    :cond_3d
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "outPtr":I
    .local v4, "outPtr":I
    aput-char v0, v2, v3

    move v3, v4

    .line 1428
    .end local v4    # "outPtr":I
    .restart local v3    # "outPtr":I
    goto :goto_e

    .line 1412
    :cond_43
    if-gt v1, v8, :cond_33

    .line 1413
    if-eq v1, v8, :cond_52

    .line 1416
    const/16 v5, 0x20

    if-ge v1, v5, :cond_33

    .line 1417
    const-string/jumbo v5, "string value"

    invoke-virtual {p0, v1, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_33

    .line 1429
    :cond_52
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 13570
    iput v3, v5, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 1430
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v5
.end method

.method private _handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 12
    .param p1, "ch"    # I
    .param p2, "negative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 1133
    const/16 v1, 0x49

    if-ne p1, v1, :cond_9f

    .line 1134
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v6, :cond_1b

    .line 1135
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 9537
    const-string/jumbo v1, " in a value"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1139
    :cond_1b
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char p1, v1, v6

    .line 1140
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_62

    .line 1141
    if-eqz p2, :cond_40

    const-string/jumbo v0, "-INF"

    .line 1142
    .local v0, "match":Ljava/lang/String;
    :goto_2e
    invoke-direct {p0, v0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1143
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1144
    if-eqz p2, :cond_44

    :goto_3b
    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 1157
    .end local v0    # "match":Ljava/lang/String;
    :goto_3f
    return-object v1

    .line 1141
    :cond_40
    const-string/jumbo v0, "+INF"

    goto :goto_2e

    .restart local v0    # "match":Ljava/lang/String;
    :cond_44
    move-wide v2, v4

    .line 1144
    goto :goto_3b

    .line 1146
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Non-standard token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9599
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v1

    throw v1

    .line 1147
    .end local v0    # "match":Ljava/lang/String;
    :cond_62
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_9f

    .line 1148
    if-eqz p2, :cond_7d

    const-string/jumbo v0, "-Infinity"

    .line 1149
    .restart local v0    # "match":Ljava/lang/String;
    :goto_6b
    invoke-direct {p0, v0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1150
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1151
    if-eqz p2, :cond_81

    :goto_78
    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_3f

    .line 1148
    .end local v0    # "match":Ljava/lang/String;
    :cond_7d
    const-string/jumbo v0, "+Infinity"

    goto :goto_6b

    .restart local v0    # "match":Ljava/lang/String;
    :cond_81
    move-wide v2, v4

    .line 1151
    goto :goto_78

    .line 1153
    :cond_83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Non-standard token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10599
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v1

    throw v1

    .line 1156
    .end local v0    # "match":Ljava/lang/String;
    :cond_9f
    const-string/jumbo v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1157
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method private _matchToken(Ljava/lang/String;I)V
    .registers 8
    .param p1, "matchStr"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1816
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1819
    .local v1, "len":I
    :cond_5
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_17

    .line 1820
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_17

    .line 16537
    const-string/jumbo v2, " in a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1824
    :cond_17
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2a

    .line 1825
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken$16da05f7(Ljava/lang/String;)V

    .line 1827
    :cond_2a
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1828
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v1, :cond_5

    .line 1831
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_41

    .line 1832
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_41

    .line 1844
    :cond_40
    :goto_40
    return-void

    .line 1836
    :cond_41
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 1837
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_40

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_40

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_40

    .line 1841
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1842
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken$16da05f7(Ljava/lang/String;)V

    goto :goto_40
.end method

.method private _parseFieldName(I)Ljava/lang/String;
    .registers 19
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1169
    const/16 v9, 0x22

    move/from16 v0, p1

    if-eq v0, v9, :cond_19a

    .line 11270
    const/16 v9, 0x27

    move/from16 v0, p1

    if-ne v0, v9, :cond_69

    sget-object v9, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 11322
    move-object/from16 v0, p0

    iget v10, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 11323
    move-object/from16 v0, p0

    iget v9, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 11324
    move-object/from16 v0, p0

    iget v11, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 11326
    if-ge v10, v11, :cond_58

    .line 11327
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v12

    .line 11328
    array-length v13, v12

    .line 11331
    :cond_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v14, v14, v10

    .line 11332
    const/16 v15, 0x27

    if-ne v14, v15, :cond_4b

    .line 11333
    move-object/from16 v0, p0

    iget v11, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 11334
    add-int/lit8 v12, v10, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 11335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v10, v11

    invoke-virtual {v12, v13, v11, v10, v9}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v9

    :goto_4a
    return-object v9

    .line 11337
    :cond_4b
    if-ge v14, v13, :cond_51

    aget v15, v12, v14

    if-nez v15, :cond_58

    .line 11340
    :cond_51
    mul-int/lit8 v9, v9, 0x21

    add-int/2addr v9, v14

    .line 11341
    add-int/lit8 v10, v10, 0x1

    .line 11342
    if-lt v10, v11, :cond_29

    .line 11345
    :cond_58
    move-object/from16 v0, p0

    iget v11, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 11346
    move-object/from16 v0, p0

    iput v10, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 11348
    const/16 v10, 0x27

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v10}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v9

    goto :goto_4a

    .line 11274
    :cond_69
    sget-object v9, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v9

    if-nez v9, :cond_7d

    .line 11275
    const-string/jumbo v9, "was expecting double-quote to start field name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 11277
    :cond_7d
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1JsNames()[I

    move-result-object v13

    .line 11278
    array-length v11, v13

    .line 11283
    move/from16 v0, p1

    if-ge v0, v11, :cond_d8

    .line 11284
    aget v9, v13, p1

    if-nez v9, :cond_d6

    const/16 v9, 0x30

    move/from16 v0, p1

    if-lt v0, v9, :cond_96

    const/16 v9, 0x39

    move/from16 v0, p1

    if-le v0, v9, :cond_d6

    :cond_96
    const/4 v9, 0x1

    .line 11288
    :goto_97
    if-nez v9, :cond_a3

    .line 11289
    const-string/jumbo v9, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 11291
    :cond_a3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 11292
    move-object/from16 v0, p0

    iget v9, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 11293
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 11295
    if-ge v10, v12, :cond_107

    .line 11297
    :cond_b1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v14, v14, v10

    .line 11298
    if-ge v14, v11, :cond_e0

    .line 11299
    aget v15, v13, v14

    if-eqz v15, :cond_100

    .line 11300
    move-object/from16 v0, p0

    iget v11, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v11, v11, -0x1

    .line 11301
    move-object/from16 v0, p0

    iput v10, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 11302
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v10, v11

    invoke-virtual {v12, v13, v11, v10, v9}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4a

    .line 11284
    :cond_d6
    const/4 v9, 0x0

    goto :goto_97

    .line 11286
    :cond_d8
    move/from16 v0, p1

    int-to-char v9, v0

    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v9

    goto :goto_97

    .line 11304
    :cond_e0
    int-to-char v15, v14

    invoke-static {v15}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v15

    if-nez v15, :cond_100

    .line 11305
    move-object/from16 v0, p0

    iget v11, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v11, v11, -0x1

    .line 11306
    move-object/from16 v0, p0

    iput v10, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 11307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v10, v11

    invoke-virtual {v12, v13, v11, v10, v9}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4a

    .line 11309
    :cond_100
    mul-int/lit8 v9, v9, 0x21

    add-int/2addr v9, v14

    .line 11310
    add-int/lit8 v10, v10, 0x1

    .line 11311
    if-lt v10, v12, :cond_b1

    .line 11313
    :cond_107
    move-object/from16 v0, p0

    iget v11, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v11, v11, -0x1

    .line 11314
    move-object/from16 v0, p0

    iput v10, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 11436
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int/2addr v14, v11

    invoke-virtual {v10, v12, v11, v14}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 11437
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v11

    .line 11438
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 11566
    iget v10, v10, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 11439
    array-length v14, v13

    move/from16 v16, v10

    move-object v10, v11

    move v11, v9

    move/from16 v9, v16

    .line 11442
    :goto_136
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v12, v15, :cond_146

    .line 11443
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v12

    if-eqz v12, :cond_156

    .line 11447
    :cond_146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v15, v12, v15

    .line 11449
    if-gt v15, v14, :cond_176

    .line 11450
    aget v12, v13, v15

    if-eqz v12, :cond_17c

    .line 11467
    :cond_156
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 11570
    iput v9, v10, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 11469
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 11470
    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v10

    .line 11471
    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v12

    .line 11472
    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v9

    .line 11474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v13, v10, v12, v9, v11}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4a

    .line 11453
    :cond_176
    invoke-static {v15}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v12

    if-eqz v12, :cond_156

    .line 11456
    :cond_17c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 11457
    mul-int/lit8 v11, v11, 0x21

    add-int/2addr v11, v15

    .line 11459
    add-int/lit8 v12, v9, 0x1

    aput-char v15, v10, v9

    .line 11462
    array-length v9, v10

    if-lt v12, v9, :cond_1f1

    .line 11463
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v10

    .line 11464
    const/4 v9, 0x0

    goto :goto_136

    .line 1176
    :cond_19a
    move-object/from16 v0, p0

    iget v7, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1177
    .local v7, "ptr":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 1178
    .local v4, "hash":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1180
    .local v5, "inputLen":I
    if-ge v7, v5, :cond_1df

    .line 1181
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v3

    .line 1182
    .local v3, "codes":[I
    array-length v6, v3

    .line 1185
    .local v6, "maxCode":I
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v2, v9, v7

    .line 1186
    .local v2, "ch":I
    if-ge v2, v6, :cond_1d7

    aget v9, v3, v2

    if-eqz v9, :cond_1d7

    .line 1187
    const/16 v9, 0x22

    if-ne v2, v9, :cond_1df

    .line 1188
    move-object/from16 v0, p0

    iget v8, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1189
    .local v8, "start":I
    add-int/lit8 v9, v7, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1190
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int v11, v7, v8

    invoke-virtual {v9, v10, v8, v11, v4}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4a

    .line 1194
    .end local v8    # "start":I
    :cond_1d7
    mul-int/lit8 v9, v4, 0x21

    add-int v4, v9, v2

    .line 1195
    add-int/lit8 v7, v7, 0x1

    .line 1196
    if-lt v7, v5, :cond_1ad

    .line 1199
    .end local v2    # "ch":I
    .end local v3    # "codes":[I
    .end local v6    # "maxCode":I
    :cond_1df
    move-object/from16 v0, p0

    iget v8, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1200
    .restart local v8    # "start":I
    move-object/from16 v0, p0

    iput v7, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1201
    const/16 v9, 0x22

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4a

    .end local v4    # "hash":I
    .end local v5    # "inputLen":I
    .end local v7    # "ptr":I
    .end local v8    # "start":I
    :cond_1f1
    move v9, v12

    goto/16 :goto_136
.end method

.method private _parseFieldName2(III)Ljava/lang/String;
    .registers 16
    .param p1, "startPtr"    # I
    .param p2, "hash"    # I
    .param p3, "endChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1207
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int/2addr v11, p1

    invoke-virtual {v9, v10, p1, v11}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 1212
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v4

    .line 1213
    .local v4, "outBuf":[C
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 12566
    iget v5, v9, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 1216
    .local v5, "outPtr":I
    :goto_14
    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v9, v10, :cond_3b

    .line 1217
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v9

    if-nez v9, :cond_3b

    .line 1218
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, ": was expecting closing \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' for name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1221
    :cond_3b
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v9, v10

    .line 1223
    .local v1, "c":C
    move v2, v1

    .local v2, "i":I
    const/16 v9, 0x5c

    if-gt v1, v9, :cond_52

    .line 1224
    const/16 v9, 0x5c

    if-ne v2, v9, :cond_65

    .line 1229
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v1

    .line 1239
    :cond_52
    :goto_52
    mul-int/lit8 v9, p2, 0x21

    add-int p2, v9, v2

    .line 1241
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outPtr":I
    .local v6, "outPtr":I
    aput-char v1, v4, v5

    .line 1244
    array-length v9, v4

    if-lt v6, v9, :cond_8d

    .line 1245
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1246
    const/4 v5, 0x0

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_14

    .line 1230
    :cond_65
    if-gt v2, p3, :cond_52

    .line 1231
    if-eq v2, p3, :cond_74

    .line 1234
    const/16 v9, 0x20

    if-ge v2, v9, :cond_52

    .line 1235
    const-string/jumbo v9, "name"

    invoke-virtual {p0, v2, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_52

    .line 1249
    :cond_74
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 12570
    iput v5, v9, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 1251
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 1252
    .local v8, "tb":Lcom/fasterxml/jackson/core/util/TextBuffer;
    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    .line 1253
    .local v0, "buf":[C
    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v7

    .line 1254
    .local v7, "start":I
    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v3

    .line 1256
    .local v3, "len":I
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v9, v0, v7, v3, p2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v0    # "buf":[C
    .end local v3    # "len":I
    .end local v5    # "outPtr":I
    .end local v7    # "start":I
    .end local v8    # "tb":Lcom/fasterxml/jackson/core/util/TextBuffer;
    .restart local v6    # "outPtr":I
    :cond_8d
    move v5, v6

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_14
.end method

.method private _reportInvalidToken$16da05f7(Ljava/lang/String;)V
    .registers 6
    .param p1, "matchedPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1981
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_5
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_11

    .line 1982
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1986
    :cond_11
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 1987
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1990
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1991
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1993
    .end local v0    # "c":C
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unrecognized token \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\': was expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16599
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v2

    throw v2
.end method

.method private _skipCR()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1618
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1619
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    .line 1620
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1623
    :cond_1c
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 1624
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    .line 1625
    return-void
.end method

.method private _skipComment()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/16 v5, 0x2f

    const/16 v4, 0x2a

    .line 1686
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1687
    const-string/jumbo v1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v5, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1690
    :cond_18
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_2a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1691
    const-string/jumbo v1, " in a comment"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1693
    :cond_2a
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 1694
    .local v0, "c":C
    if-ne v0, v5, :cond_62

    .line 14739
    :cond_36
    :goto_36
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_42

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 14740
    :cond_42
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v2

    .line 14741
    const/16 v2, 0x20

    if-ge v1, v2, :cond_36

    .line 14742
    if-ne v1, v7, :cond_56

    .line 14743
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLF()V

    .line 15717
    :cond_55
    :goto_55
    return-void

    .line 14745
    :cond_56
    if-ne v1, v8, :cond_5c

    .line 14746
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_55

    .line 14748
    :cond_5c
    if-eq v1, v6, :cond_36

    .line 14749
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_36

    .line 1696
    :cond_62
    if-ne v0, v4, :cond_b6

    .line 15708
    :cond_64
    :goto_64
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_70

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 15709
    :cond_70
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v2

    .line 15710
    if-gt v1, v4, :cond_64

    .line 15711
    if-ne v1, v4, :cond_99

    .line 15712
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_8a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 15715
    :cond_8a
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_64

    .line 15716
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    goto :goto_55

    .line 15721
    :cond_99
    const/16 v2, 0x20

    if-ge v1, v2, :cond_64

    .line 15722
    if-ne v1, v7, :cond_a3

    .line 15723
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLF()V

    goto :goto_64

    .line 15724
    :cond_a3
    if-ne v1, v8, :cond_a9

    .line 15725
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_64

    .line 15726
    :cond_a9
    if-eq v1, v6, :cond_64

    .line 15727
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_64

    .line 15732
    :cond_af
    const-string/jumbo v1, " in a comment"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    goto :goto_55

    .line 1699
    :cond_b6
    const-string/jumbo v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_55
.end method

.method private _skipLF()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1629
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 1630
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    .line 1631
    return-void
.end method

.method private _skipWS()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 1636
    :cond_2
    :goto_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1637
    :cond_e
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 1638
    .local v0, "i":I
    if-le v0, v4, :cond_23

    .line 1639
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1f

    .line 1640
    return v0

    .line 1642
    :cond_1f
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    goto :goto_2

    .line 1643
    :cond_23
    if-eq v0, v4, :cond_2

    .line 1644
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2d

    .line 1645
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLF()V

    goto :goto_2

    .line 1646
    :cond_2d
    const/16 v1, 0xd

    if-ne v0, v1, :cond_35

    .line 1647
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_2

    .line 1648
    :cond_35
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 1649
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_2

    .line 1653
    .end local v0    # "i":I
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected end-of-input within/between "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v1

    throw v1
.end method

.method private getNextChar(Ljava/lang/String;)C
    .registers 5
    .param p1, "eofMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 146
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_f

    .line 147
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_f

    .line 148
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 151
    :cond_f
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    return v0
.end method

.method private parseNumberText(I)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 24
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 855
    const/16 v12, 0x2d

    move/from16 v0, p1

    if-ne v0, v12, :cond_3c

    const/4 v8, 0x1

    .line 856
    .local v8, "negative":Z
    :goto_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 857
    .local v9, "ptr":I
    add-int/lit8 v11, v9, -0x1

    .line 858
    .local v11, "startPtr":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 862
    .local v5, "inputLen":I
    if-eqz v8, :cond_3f

    .line 863
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v9, v12, :cond_102

    .line 866
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "ptr":I
    .local v10, "ptr":I
    aget-char p1, v12, v9

    .line 868
    const/16 v12, 0x39

    move/from16 v0, p1

    if-gt v0, v12, :cond_2d

    const/16 v12, 0x30

    move/from16 v0, p1

    if-ge v0, v12, :cond_3e

    .line 869
    :cond_2d
    move-object/from16 v0, p0

    iput v10, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 870
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v12

    move v9, v10

    .line 960
    .end local v10    # "ptr":I
    .end local v11    # "startPtr":I
    .restart local v9    # "ptr":I
    :goto_3b
    return-object v12

    .line 855
    .end local v5    # "inputLen":I
    .end local v8    # "negative":Z
    .end local v9    # "ptr":I
    :cond_3c
    const/4 v8, 0x0

    goto :goto_7

    .restart local v5    # "inputLen":I
    .restart local v8    # "negative":Z
    .restart local v10    # "ptr":I
    .restart local v11    # "startPtr":I
    :cond_3e
    move v9, v10

    .line 878
    .end local v10    # "ptr":I
    .restart local v9    # "ptr":I
    :cond_3f
    const/16 v12, 0x30

    move/from16 v0, p1

    if-eq v0, v12, :cond_102

    .line 888
    const/4 v6, 0x1

    .line 894
    .local v6, "intLen":I
    :goto_46
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v9, v12, :cond_102

    .line 897
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v10    # "ptr":I
    aget-char p1, v12, v9

    .line 898
    const/16 v12, 0x30

    move/from16 v0, p1

    if-lt v0, v12, :cond_64

    const/16 v12, 0x39

    move/from16 v0, p1

    if-gt v0, v12, :cond_64

    .line 901
    add-int/lit8 v6, v6, 0x1

    move v9, v10

    .end local v10    # "ptr":I
    .restart local v9    # "ptr":I
    goto :goto_46

    .line 904
    .end local v9    # "ptr":I
    .restart local v10    # "ptr":I
    :cond_64
    const/4 v4, 0x0

    .line 907
    .local v4, "fractLen":I
    const/16 v12, 0x2e

    move/from16 v0, p1

    if-ne v0, v12, :cond_92

    .line 910
    :goto_6b
    if-ge v10, v5, :cond_101

    .line 913
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v9    # "ptr":I
    aget-char p1, v12, v10

    .line 914
    const/16 v12, 0x30

    move/from16 v0, p1

    if-lt v0, v12, :cond_85

    const/16 v12, 0x39

    move/from16 v0, p1

    if-gt v0, v12, :cond_85

    .line 917
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9    # "ptr":I
    .restart local v10    # "ptr":I
    goto :goto_6b

    .line 920
    .end local v10    # "ptr":I
    .restart local v9    # "ptr":I
    :cond_85
    if-nez v4, :cond_91

    .line 921
    const-string/jumbo v12, "Decimal point not followed by a digit"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_91
    move v10, v9

    .line 925
    .end local v9    # "ptr":I
    .restart local v10    # "ptr":I
    :cond_92
    const/4 v3, 0x0

    .line 926
    .local v3, "expLen":I
    const/16 v12, 0x65

    move/from16 v0, p1

    if-eq v0, v12, :cond_9f

    const/16 v12, 0x45

    move/from16 v0, p1

    if-ne v0, v12, :cond_e5

    .line 927
    :cond_9f
    if-ge v10, v5, :cond_101

    .line 931
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v9    # "ptr":I
    aget-char p1, v12, v10

    .line 932
    const/16 v12, 0x2d

    move/from16 v0, p1

    if-eq v0, v12, :cond_b5

    const/16 v12, 0x2b

    move/from16 v0, p1

    if-ne v0, v12, :cond_426

    .line 933
    :cond_b5
    if-ge v9, v5, :cond_102

    .line 936
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v10    # "ptr":I
    aget-char p1, v12, v9

    .line 938
    :goto_bf
    const/16 v12, 0x39

    move/from16 v0, p1

    if-gt v0, v12, :cond_d9

    const/16 v12, 0x30

    move/from16 v0, p1

    if-lt v0, v12, :cond_d9

    .line 939
    add-int/lit8 v3, v3, 0x1

    .line 940
    if-ge v10, v5, :cond_101

    .line 943
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v9    # "ptr":I
    aget-char p1, v12, v10

    move v10, v9

    .end local v9    # "ptr":I
    .restart local v10    # "ptr":I
    goto :goto_bf

    .line 946
    :cond_d9
    if-nez v3, :cond_e5

    .line 947
    const-string/jumbo v12, "Exponent indicator not followed by a digit"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_e5
    move v9, v10

    .line 952
    .end local v10    # "ptr":I
    .restart local v9    # "ptr":I
    add-int/lit8 v9, v9, -0x1

    .line 953
    move-object/from16 v0, p0

    iput v9, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 954
    sub-int v7, v9, v11

    .line 955
    .local v7, "len":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    invoke-virtual {v12, v13, v11, v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 956
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6, v4, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reset(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v12

    goto/16 :goto_3b

    .end local v3    # "expLen":I
    .end local v7    # "len":I
    .end local v9    # "ptr":I
    .restart local v10    # "ptr":I
    :cond_101
    move v9, v10

    .line 959
    .end local v4    # "fractLen":I
    .end local v6    # "intLen":I
    .end local v10    # "ptr":I
    .restart local v9    # "ptr":I
    :cond_102
    if-eqz v8, :cond_106

    add-int/lit8 v11, v11, 0x1

    .end local v11    # "startPtr":I
    :cond_106
    move-object/from16 v0, p0

    iput v11, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 7973
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v14

    .line 7974
    const/4 v12, 0x0

    .line 7977
    if-eqz v8, :cond_11b

    .line 7978
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/16 v15, 0x2d

    aput-char v15, v14, v13

    .line 7982
    :cond_11b
    const/4 v15, 0x0

    .line 7983
    move-object/from16 v0, p0

    iget v13, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v13, v0, :cond_2da

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v13, v13, v16

    .line 7984
    :goto_13e
    const/16 v16, 0x30

    move/from16 v0, v16

    if-ne v13, v0, :cond_15a

    .line 8098
    move-object/from16 v0, p0

    iget v13, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v13, v0, :cond_2e5

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v13

    if-nez v13, :cond_2e5

    .line 8099
    const/16 v13, 0x30

    .line 7987
    :cond_15a
    :goto_15a
    const/16 v17, 0x0

    move/from16 v21, v13

    move-object v13, v14

    move/from16 v14, v21

    .line 7991
    :goto_161
    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v14, v0, :cond_41e

    const/16 v16, 0x39

    move/from16 v0, v16

    if-gt v14, v0, :cond_41e

    .line 7992
    add-int/lit8 v15, v15, 0x1

    .line 7993
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v12, v0, :cond_17f

    .line 7994
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v13

    .line 7995
    const/4 v12, 0x0

    .line 7997
    :cond_17f
    add-int/lit8 v16, v12, 0x1

    aput-char v14, v13, v12

    .line 7998
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v12, v14, :cond_375

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v12

    if-nez v12, :cond_375

    .line 8000
    const/4 v12, 0x0

    .line 8001
    const/16 v17, 0x1

    move/from16 v19, v15

    move-object v15, v13

    move v13, v12

    .line 8007
    :goto_19a
    if-nez v19, :cond_1bc

    .line 8008
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Missing integer part (next char "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 8011
    :cond_1bc
    const/4 v12, 0x0

    .line 8013
    const/16 v14, 0x2e

    if-ne v13, v14, :cond_413

    .line 8014
    add-int/lit8 v14, v16, 0x1

    aput-char v13, v15, v16

    .line 8018
    :goto_1c5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_38b

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v16

    if-nez v16, :cond_38b

    .line 8019
    const/16 v17, 0x1

    move/from16 v16, v17

    .line 8034
    :goto_1e1
    if-nez v12, :cond_1ed

    .line 8035
    const-string/jumbo v17, "Decimal point not followed by a digit"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_1ed
    move/from16 v18, v12

    move/from16 v17, v13

    move v12, v14

    move-object v13, v15

    .line 8039
    :goto_1f3
    const/4 v15, 0x0

    .line 8040
    const/16 v14, 0x65

    move/from16 v0, v17

    if-eq v0, v14, :cond_200

    const/16 v14, 0x45

    move/from16 v0, v17

    if-ne v0, v14, :cond_407

    .line 8041
    :cond_200
    array-length v14, v13

    if-lt v12, v14, :cond_20c

    .line 8042
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v13

    .line 8043
    const/4 v12, 0x0

    .line 8045
    :cond_20c
    add-int/lit8 v14, v12, 0x1

    aput-char v17, v13, v12

    .line 8047
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_3c5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move/from16 v17, v0

    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v17, v12, v17

    .line 8050
    :goto_232
    const/16 v12, 0x2d

    move/from16 v0, v17

    if-eq v0, v12, :cond_23e

    const/16 v12, 0x2b

    move/from16 v0, v17

    if-ne v0, v12, :cond_3ff

    .line 8051
    :cond_23e
    array-length v12, v13

    if-lt v14, v12, :cond_3fc

    .line 8052
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v13

    .line 8053
    const/4 v12, 0x0

    .line 8055
    :goto_24a
    add-int/lit8 v14, v12, 0x1

    aput-char v17, v13, v12

    .line 8057
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_3d0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move/from16 v17, v0

    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v12, v12, v17

    move/from16 v21, v15

    move-object v15, v13

    move/from16 v13, v21

    :goto_275
    move/from16 v17, v12

    move v12, v14

    .line 8062
    :goto_278
    const/16 v14, 0x39

    move/from16 v0, v17

    if-gt v0, v14, :cond_3f6

    const/16 v14, 0x30

    move/from16 v0, v17

    if-lt v0, v14, :cond_3f6

    .line 8063
    add-int/lit8 v13, v13, 0x1

    .line 8064
    array-length v14, v15

    if-lt v12, v14, :cond_292

    .line 8065
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v15

    .line 8066
    const/4 v12, 0x0

    .line 8068
    :cond_292
    add-int/lit8 v14, v12, 0x1

    aput-char v17, v15, v12

    .line 8069
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v12, v0, :cond_3e0

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v12

    if-nez v12, :cond_3e0

    .line 8070
    const/16 v16, 0x1

    move v15, v13

    move/from16 v12, v16

    move v13, v14

    .line 8076
    :goto_2b0
    if-nez v15, :cond_2bc

    .line 8077
    const-string/jumbo v14, "Exponent indicator not followed by a digit"

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 8082
    :cond_2bc
    :goto_2bc
    if-nez v12, :cond_2c8

    .line 8083
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 8085
    :cond_2c8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 8570
    iput v13, v12, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 8087
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v8, v1, v2, v15}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reset(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v12

    goto/16 :goto_3b

    .line 7983
    :cond_2da
    const-string/jumbo v13, "No digit following minus sign"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v13

    goto/16 :goto_13e

    .line 8101
    :cond_2e5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move/from16 v16, v0

    aget-char v13, v13, v16

    .line 8103
    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v13, v0, :cond_2fd

    const/16 v16, 0x39

    move/from16 v0, v16

    if-le v13, v0, :cond_301

    .line 8104
    :cond_2fd
    const/16 v13, 0x30

    goto/16 :goto_15a

    .line 8106
    :cond_301
    sget-object v16, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v16

    if-nez v16, :cond_317

    .line 8107
    const-string/jumbo v16, "Leading zeroes not allowed"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 8110
    :cond_317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 8111
    const/16 v16, 0x30

    move/from16 v0, v16

    if-ne v13, v0, :cond_15a

    .line 8112
    :cond_32b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_343

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v16

    if-eqz v16, :cond_15a

    .line 8113
    :cond_343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move/from16 v16, v0

    aget-char v13, v13, v16

    .line 8114
    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v13, v0, :cond_35b

    const/16 v16, 0x39

    move/from16 v0, v16

    if-le v13, v0, :cond_35f

    .line 8115
    :cond_35b
    const/16 v13, 0x30

    goto/16 :goto_15a

    .line 8117
    :cond_35f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 8118
    const/16 v16, 0x30

    move/from16 v0, v16

    if-eq v13, v0, :cond_32b

    goto/16 :goto_15a

    .line 8004
    :cond_375
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v18, v14, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v14, v12, v14

    move/from16 v12, v16

    goto/16 :goto_161

    .line 8022
    :cond_38b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move/from16 v16, v0

    add-int/lit8 v18, v16, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v13, v13, v16

    .line 8023
    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v13, v0, :cond_40f

    const/16 v16, 0x39

    move/from16 v0, v16

    if-gt v13, v0, :cond_40f

    .line 8026
    add-int/lit8 v12, v12, 0x1

    .line 8027
    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v14, v0, :cond_40c

    .line 8028
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v14}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v15

    .line 8029
    const/4 v14, 0x0

    move/from16 v16, v14

    .line 8031
    :goto_3bf
    add-int/lit8 v14, v16, 0x1

    aput-char v13, v15, v16

    goto/16 :goto_1c5

    .line 8047
    :cond_3c5
    const-string/jumbo v12, "expected a digit for number exponent"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v17

    goto/16 :goto_232

    .line 8057
    :cond_3d0
    const-string/jumbo v12, "expected a digit for number exponent"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v12

    move/from16 v21, v15

    move-object v15, v13

    move/from16 v13, v21

    goto/16 :goto_275

    .line 8073
    :cond_3e0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move/from16 v17, v0

    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v12, v12, v17

    goto/16 :goto_275

    :cond_3f6
    move v15, v13

    move v13, v12

    move/from16 v12, v16

    goto/16 :goto_2b0

    :cond_3fc
    move v12, v14

    goto/16 :goto_24a

    :cond_3ff
    move v12, v14

    move/from16 v21, v15

    move-object v15, v13

    move/from16 v13, v21

    goto/16 :goto_278

    :cond_407
    move v13, v12

    move/from16 v12, v16

    goto/16 :goto_2bc

    :cond_40c
    move/from16 v16, v14

    goto :goto_3bf

    :cond_40f
    move/from16 v16, v17

    goto/16 :goto_1e1

    :cond_413
    move/from16 v18, v12

    move/from16 v12, v16

    move/from16 v16, v17

    move/from16 v17, v13

    move-object v13, v15

    goto/16 :goto_1f3

    :cond_41e
    move/from16 v19, v15

    move/from16 v16, v12

    move-object v15, v13

    move v13, v14

    goto/16 :goto_19a

    .restart local v3    # "expLen":I
    .restart local v4    # "fractLen":I
    .restart local v6    # "intLen":I
    .restart local v11    # "startPtr":I
    :cond_426
    move v10, v9

    .end local v9    # "ptr":I
    .restart local v10    # "ptr":I
    goto/16 :goto_bf
.end method


# virtual methods
.method protected final _closeInput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    if-eqz v0, :cond_1c

    .line 165
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 166
    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 168
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    .line 170
    :cond_1c
    return-void
.end method

.method protected final _decodeEscaped()C
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1759
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v5, v6, :cond_12

    .line 1760
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1761
    const-string/jumbo v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1764
    :cond_12
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v5, v6

    .line 1766
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_6a

    .line 1789
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    .line 1807
    .end local v0    # "c":C
    :goto_23
    :sswitch_23
    return v0

    .line 1769
    .restart local v0    # "c":C
    :sswitch_24
    const/16 v0, 0x8

    goto :goto_23

    .line 1771
    :sswitch_27
    const/16 v0, 0x9

    goto :goto_23

    .line 1773
    :sswitch_2a
    const/16 v0, 0xa

    goto :goto_23

    .line 1775
    :sswitch_2d
    const/16 v0, 0xc

    goto :goto_23

    .line 1777
    :sswitch_30
    const/16 v0, 0xd

    goto :goto_23

    .line 1793
    :sswitch_33
    const/4 v4, 0x0

    .line 1794
    .local v4, "value":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_35
    const/4 v5, 0x4

    if-ge v3, v5, :cond_67

    .line 1795
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v5, v6, :cond_4a

    .line 1796
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 1797
    const-string/jumbo v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1800
    :cond_4a
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v5, v6

    .line 1801
    .local v1, "ch":I
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v2

    .line 1802
    .local v2, "digit":I
    if-gez v2, :cond_60

    .line 1803
    const-string/jumbo v5, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v1, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1805
    :cond_60
    shl-int/lit8 v5, v4, 0x4

    or-int v4, v5, v2

    .line 1794
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 1807
    .end local v1    # "ch":I
    .end local v2    # "digit":I
    :cond_67
    int-to-char v0, v4

    goto :goto_23

    .line 1766
    nop

    :sswitch_data_6a
    .sparse-switch
        0x22 -> :sswitch_23
        0x2f -> :sswitch_23
        0x5c -> :sswitch_23
        0x62 -> :sswitch_24
        0x66 -> :sswitch_2d
        0x6e -> :sswitch_2a
        0x72 -> :sswitch_30
        0x74 -> :sswitch_27
        0x75 -> :sswitch_33
    .end sparse-switch
.end method

.method protected final _finishString()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x5c

    const/16 v13, 0x22

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 1486
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1487
    .local v4, "ptr":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1489
    .local v2, "inputLen":I
    if-ge v4, v2, :cond_33

    .line 1490
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .line 1491
    .local v1, "codes":[I
    array-length v3, v1

    .line 1494
    .local v3, "maxCode":I
    :cond_11
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v0, v5, v4

    .line 1495
    .local v0, "ch":I
    if-ge v0, v3, :cond_2f

    aget v5, v1, v0

    if-eqz v5, :cond_2f

    .line 1496
    if-ne v0, v13, :cond_33

    .line 1497
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int v8, v4, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 1498
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1514
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v3    # "maxCode":I
    :goto_2e
    return-void

    .line 1504
    .restart local v0    # "ch":I
    .restart local v1    # "codes":[I
    .restart local v3    # "maxCode":I
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    .line 1505
    if-lt v4, v2, :cond_11

    .line 1511
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v3    # "maxCode":I
    :cond_33
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int v5, v4, v5

    .line 14195
    iput-object v11, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 14196
    const/4 v10, -0x1

    iput v10, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 14197
    iput v7, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 14199
    iput-object v11, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 14200
    iput-object v11, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 14203
    iget-boolean v10, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-eqz v10, :cond_b1

    .line 14204
    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V

    .line 14208
    :cond_4f
    :goto_4f
    iput v7, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    iput v7, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 14445
    iget v10, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v10, :cond_5a

    .line 14446
    invoke-virtual {v8, v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V

    .line 14448
    :cond_5a
    iput-object v11, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 14449
    iput-object v11, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 14452
    iget-object v10, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 14453
    array-length v11, v10

    iget v12, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    sub-int/2addr v11, v12

    .line 14455
    if-lt v11, v5, :cond_bc

    .line 14456
    iget v11, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-static {v9, v6, v10, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14457
    iget v6, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/2addr v5, v6

    iput v5, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 1512
    :goto_70
    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 14519
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v8

    .line 14520
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 14566
    iget v6, v5, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 14523
    :goto_7c
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v5, v9, :cond_8e

    .line 14524
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_8e

    .line 14525
    const-string/jumbo v5, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 14528
    :cond_8e
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v5, v5, v9

    .line 14530
    if-gt v5, v14, :cond_a0

    .line 14531
    if-ne v5, v14, :cond_de

    .line 14536
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v5

    .line 14547
    :cond_a0
    :goto_a0
    array-length v9, v8

    if-lt v6, v9, :cond_ab

    .line 14548
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v6

    move-object v8, v6

    move v6, v7

    .line 14552
    :cond_ab
    add-int/lit8 v9, v6, 0x1

    aput-char v5, v8, v6

    move v6, v9

    .line 14553
    goto :goto_7c

    .line 14205
    :cond_b1
    iget-object v10, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    if-nez v10, :cond_4f

    .line 14206
    invoke-virtual {v8, v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->findBuffer(I)[C

    move-result-object v10

    iput-object v10, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    goto :goto_4f

    .line 14461
    :cond_bc
    if-lez v11, :cond_c5

    .line 14462
    iget v12, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-static {v9, v6, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14463
    add-int/2addr v6, v11

    .line 14464
    sub-int/2addr v5, v11

    .line 14471
    :cond_c5
    invoke-virtual {v8, v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V

    .line 14472
    iget-object v10, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    array-length v10, v10

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 14473
    iget-object v11, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    invoke-static {v9, v6, v11, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14474
    iget v11, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/2addr v11, v10

    iput v11, v8, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 14475
    add-int/2addr v6, v10

    .line 14476
    sub-int/2addr v5, v10

    .line 14477
    if-gtz v5, :cond_c5

    goto :goto_70

    .line 14537
    :cond_de
    if-gt v5, v13, :cond_a0

    .line 14538
    if-eq v5, v13, :cond_ed

    .line 14541
    const/16 v9, 0x20

    if-ge v5, v9, :cond_a0

    .line 14542
    const-string/jumbo v9, "string value"

    invoke-virtual {p0, v5, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_a0

    .line 14554
    :cond_ed
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 14570
    iput v6, v5, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    goto/16 :goto_2e
.end method

.method protected final _releaseBuffers()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    .line 183
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 184
    .local v0, "buf":[C
    if-eqz v0, :cond_f

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 186
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseTokenBuffer([C)V

    .line 188
    :cond_f
    return-void
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->close()V

    .line 822
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->release()V

    .line 823
    return-void
.end method

.method public final getText()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 207
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_17

    .line 208
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_10

    .line 209
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 210
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 212
    :cond_10
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 3261
    :goto_16
    return-object v1

    .line 3250
    :cond_17
    if-nez v0, :cond_1b

    .line 3251
    const/4 v1, 0x0

    goto :goto_16

    .line 3253
    :cond_1b
    sget-object v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    .line 4140
    iget-object v1, v0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    goto :goto_16

    .line 3255
    :pswitch_29
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    .line 3261
    :pswitch_30
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    .line 3253
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_29
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method protected final loadMore()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    .line 124
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    .line 126
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    if-eqz v2, :cond_26

    .line 127
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 128
    .local v0, "count":I
    if-lez v0, :cond_27

    .line 129
    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 130
    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 131
    const/4 v1, 0x1

    .line 140
    .end local v0    # "count":I
    :cond_26
    return v1

    .line 134
    .restart local v0    # "count":I
    :cond_27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_closeInput()V

    .line 136
    if-nez v0, :cond_26

    .line 137
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Reader returned 0 characters when trying to read "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x22

    const/16 v12, 0x20

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 549
    iput v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_numTypesValid:I

    .line 555
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_39

    .line 4692
    iput-boolean v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 4693
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 4694
    iput-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 4696
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_28

    .line 4697
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 4701
    :cond_25
    :goto_25
    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 687
    :goto_27
    return-object v3

    .line 4698
    :cond_28
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_25

    .line 4699
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_25

    .line 558
    :cond_39
    iget-boolean v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v4, :cond_75

    .line 5565
    iput-boolean v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 5567
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 5568
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 5569
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 5572
    :goto_45
    if-lt v5, v4, :cond_59

    .line 5573
    iput v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 5574
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v4

    if-nez v4, :cond_55

    .line 5575
    const-string/jumbo v4, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 5577
    :cond_55
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 5578
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 5580
    :cond_59
    add-int/lit8 v7, v5, 0x1

    aget-char v5, v8, v5

    .line 5582
    const/16 v9, 0x5c

    if-gt v5, v9, :cond_9f

    .line 5583
    const/16 v9, 0x5c

    if-ne v5, v9, :cond_6f

    .line 5588
    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 5589
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    .line 5590
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 5591
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    goto :goto_45

    .line 5592
    :cond_6f
    if-gt v5, v13, :cond_9f

    .line 5593
    if-ne v5, v13, :cond_95

    .line 5594
    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 5659
    :cond_75
    :goto_75
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v4, v5, :cond_81

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 5660
    :cond_81
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v4, v5

    .line 5661
    if-le v0, v12, :cond_a1

    .line 5662
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_bf

    .line 5663
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    goto :goto_75

    .line 5597
    :cond_95
    if-ge v5, v12, :cond_9f

    .line 5598
    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 5599
    const-string/jumbo v9, "string value"

    invoke-virtual {p0, v5, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_9f
    move v5, v7

    .line 5603
    goto :goto_45

    .line 5668
    :cond_a1
    if-eq v0, v12, :cond_75

    .line 5669
    const/16 v4, 0xa

    if-ne v0, v4, :cond_ab

    .line 5670
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLF()V

    goto :goto_75

    .line 5671
    :cond_ab
    const/16 v4, 0xd

    if-ne v0, v4, :cond_b3

    .line 5672
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_75

    .line 5673
    :cond_b3
    const/16 v4, 0x9

    if-eq v0, v4, :cond_75

    .line 5674
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_75

    .line 5679
    :cond_bb
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleEOF()V

    .line 5680
    const/4 v0, -0x1

    .line 562
    .local v0, "i":I
    :cond_bf
    if-gez v0, :cond_c9

    .line 566
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->close()V

    .line 567
    iput-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v3, v6

    goto/16 :goto_27

    .line 573
    :cond_c9
    iget-wide v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    iget v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    int-to-long v8, v7

    add-long/2addr v4, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputTotal:J

    .line 574
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    .line 575
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    .line 578
    iput-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    .line 581
    const/16 v4, 0x5d

    if-ne v0, v4, :cond_102

    .line 582
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v4

    if-nez v4, :cond_f4

    .line 583
    const/16 v4, 0x7d

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 585
    :cond_f4
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 586
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_27

    .line 588
    :cond_102
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_121

    .line 589
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v4

    if-nez v4, :cond_113

    .line 590
    const/16 v4, 0x5d

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 592
    :cond_113
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 593
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_27

    .line 597
    :cond_121
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v4

    if-eqz v4, :cond_151

    .line 598
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_14d

    .line 599
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "was expecting comma to separate "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 601
    :cond_14d
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWS()I

    move-result v0

    .line 608
    :cond_151
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    .line 609
    .local v1, "inObject":Z
    if-eqz v1, :cond_178

    .line 611
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFieldName(I)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 613
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 614
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWS()I

    move-result v0

    .line 615
    const/16 v4, 0x3a

    if-eq v0, v4, :cond_174

    .line 616
    const-string/jumbo v4, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 618
    :cond_174
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWS()I

    move-result v0

    .line 625
    .end local v2    # "name":Ljava/lang/String;
    :cond_178
    sparse-switch v0, :sswitch_data_22e

    .line 6359
    sparse-switch v0, :sswitch_data_27c

    .line 6387
    :cond_17e
    const-string/jumbo v4, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    move-object v3, v6

    .line 682
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_185
    if-eqz v1, :cond_229

    .line 683
    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 684
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_27

    .line 627
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_18d
    iput-boolean v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 628
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_185

    .line 631
    :sswitch_192
    if-nez v1, :cond_1a0

    .line 632
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 634
    :cond_1a0
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_185

    .line 637
    :sswitch_1a3
    if-nez v1, :cond_1b1

    .line 638
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 640
    :cond_1b1
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_185

    .line 646
    :sswitch_1b4
    const-string/jumbo v4, "expected a value"

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 648
    :sswitch_1ba
    const-string/jumbo v4, "true"

    invoke-direct {p0, v4, v10}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 649
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_185

    .line 652
    :sswitch_1c3
    const-string/jumbo v4, "false"

    invoke-direct {p0, v4, v10}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 653
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_185

    .line 656
    :sswitch_1cc
    const-string/jumbo v4, "null"

    invoke-direct {p0, v4, v10}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 657
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_185

    .line 675
    :sswitch_1d5
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->parseNumberText(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_185

    .line 6368
    :sswitch_1da
    sget-object v4, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v4

    if-eqz v4, :cond_17e

    .line 6369
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleApostropheValue()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_185

    .line 6373
    :sswitch_1e7
    const-string/jumbo v4, "NaN"

    invoke-direct {p0, v4, v10}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 6374
    sget-object v4, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v4

    if-eqz v4, :cond_1ff

    .line 6375
    const-string/jumbo v4, "NaN"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v4, v6, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_185

    .line 6377
    :cond_1ff
    const-string/jumbo v4, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 6599
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v4

    throw v4

    .line 6380
    :sswitch_207
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v4, v5, :cond_219

    .line 6381
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v4

    if-nez v4, :cond_219

    .line 7537
    const-string/jumbo v4, " in a value"

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 6385
    :cond_219
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v4, v4, v5

    invoke-direct {p0, v4, v11}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_185

    .line 686
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_229
    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_27

    .line 625
    nop

    :sswitch_data_22e
    .sparse-switch
        0x22 -> :sswitch_18d
        0x2d -> :sswitch_1d5
        0x30 -> :sswitch_1d5
        0x31 -> :sswitch_1d5
        0x32 -> :sswitch_1d5
        0x33 -> :sswitch_1d5
        0x34 -> :sswitch_1d5
        0x35 -> :sswitch_1d5
        0x36 -> :sswitch_1d5
        0x37 -> :sswitch_1d5
        0x38 -> :sswitch_1d5
        0x39 -> :sswitch_1d5
        0x5b -> :sswitch_192
        0x5d -> :sswitch_1b4
        0x66 -> :sswitch_1c3
        0x6e -> :sswitch_1cc
        0x74 -> :sswitch_1ba
        0x7b -> :sswitch_1a3
        0x7d -> :sswitch_1b4
    .end sparse-switch

    .line 6359
    :sswitch_data_27c
    .sparse-switch
        0x27 -> :sswitch_1da
        0x2b -> :sswitch_207
        0x4e -> :sswitch_1e7
    .end sparse-switch
.end method
