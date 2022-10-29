.class public final Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;
.super Ljava/lang/Object;
.source "ByteSourceJsonBootstrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper$1;
    }
.end annotation


# instance fields
.field protected _bigEndian:Z

.field private final _bufferRecyclable:Z

.field protected _bytesPerChar:I

.field protected final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected final _in:Ljava/io/InputStream;

.field protected final _inputBuffer:[B

.field private _inputEnd:I

.field protected _inputProcessed:I

.field private _inputPtr:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)V
    .registers 6
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 76
    iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    .line 86
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 87
    iput-object p2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    .line 88
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocReadIOBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    .line 89
    iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    .line 90
    iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputProcessed:I

    .line 91
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bufferRecyclable:Z

    .line 92
    return-void
.end method

.method private checkUTF16(I)Z
    .registers 5
    .param p1, "i16"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 461
    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_f

    .line 462
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 470
    :goto_a
    const/4 v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    move v0, v1

    .line 471
    :cond_e
    return v0

    .line 463
    :cond_f
    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_e

    .line 464
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    goto :goto_a
.end method

.method private ensureLoaded(I)Z
    .registers 9
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    sub-int v1, v2, v3

    .line 499
    .local v1, "gotten":I
    :goto_6
    if-ge v1, p1, :cond_29

    .line 502
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v2, :cond_11

    .line 503
    const/4 v0, -0x1

    .line 507
    .local v0, "count":I
    :goto_d
    if-gtz v0, :cond_22

    .line 508
    const/4 v2, 0x0

    .line 513
    .end local v0    # "count":I
    :goto_10
    return v2

    .line 505
    :cond_11
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    array-length v5, v5

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_d

    .line 510
    :cond_22
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    .line 511
    add-int/2addr v1, v0

    .line 512
    goto :goto_6

    .line 513
    .end local v0    # "count":I
    :cond_29
    const/4 v2, 0x1

    goto :goto_10
.end method

.method private static reportWeirdUCS4(Ljava/lang/String;)V
    .registers 4
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported UCS-4 endianness ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final constructParser(ILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;ZZ)Lcom/fasterxml/jackson/core/JsonParser;
    .registers 22
    .param p1, "parserFeatures"    # I
    .param p2, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p3, "rootByteSymbols"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .param p4, "rootCharSymbols"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .param p5, "canonicalize"    # Z
    .param p6, "intern"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 226
    .line 1120
    const/4 v2, 0x0

    .line 1129
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->ensureLoaded(I)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 1130
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v3

    .line 1395
    sparse-switch v4, :sswitch_data_1d6

    .line 1412
    :goto_38
    ushr-int/lit8 v3, v4, 0x10

    .line 1413
    const v5, 0xfeff

    if-ne v3, v5, :cond_a5

    .line 1414
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    .line 1415
    const/4 v3, 0x2

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    .line 1416
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 1417
    const/4 v3, 0x1

    .line 1135
    :goto_4c
    if-eqz v3, :cond_d0

    .line 1136
    const/4 v2, 0x1

    .line 1161
    :cond_4f
    :goto_4f
    if-nez v2, :cond_136

    .line 1162
    sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    .line 1178
    :goto_53
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/core/io/IOContext;->setEncoding(Lcom/fasterxml/jackson/core/JsonEncoding;)V

    .line 228
    sget-object v3, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    if-ne v2, v3, :cond_160

    .line 232
    if-eqz p5, :cond_160

    .line 233
    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->makeChild$ed8baa8(Z)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    move-result-object v7

    .line 234
    .local v7, "can":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    new-instance v2, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    iget-boolean v11, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bufferRecyclable:Z

    move/from16 v4, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v11}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/InputStream;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;[BIIZ)V

    .line 237
    .end local v7    # "can":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    :goto_7b
    return-object v2

    .line 1397
    :sswitch_7c
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 1398
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    .line 1399
    const/4 v3, 0x4

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    .line 1400
    const/4 v3, 0x1

    goto :goto_4c

    .line 1402
    :sswitch_8a
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    .line 1403
    const/4 v3, 0x4

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    .line 1404
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 1405
    const/4 v3, 0x1

    goto :goto_4c

    .line 1407
    :sswitch_98
    const-string/jumbo v3, "2143"

    invoke-static {v3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    .line 1409
    :sswitch_9e
    const-string/jumbo v3, "3412"

    invoke-static {v3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_38

    .line 1419
    :cond_a5
    const v5, 0xfffe

    if-ne v3, v5, :cond_b8

    .line 1420
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    .line 1421
    const/4 v3, 0x2

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    .line 1422
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 1423
    const/4 v3, 0x1

    goto :goto_4c

    .line 1426
    :cond_b8
    ushr-int/lit8 v3, v4, 0x8

    const v5, 0xefbbbf

    if-ne v3, v5, :cond_cd

    .line 1427
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    .line 1428
    const/4 v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    .line 1429
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 1430
    const/4 v3, 0x1

    goto :goto_4c

    .line 1432
    :cond_cd
    const/4 v3, 0x0

    goto/16 :goto_4c

    .line 1441
    :cond_d0
    shr-int/lit8 v3, v4, 0x8

    if-nez v3, :cond_e0

    .line 1442
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 1455
    :goto_d7
    const/4 v3, 0x4

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    .line 1456
    const/4 v3, 0x1

    .line 1144
    :goto_db
    if-eqz v3, :cond_106

    .line 1145
    const/4 v2, 0x1

    goto/16 :goto_4f

    .line 1443
    :cond_e0
    const v3, 0xffffff

    and-int/2addr v3, v4

    if-nez v3, :cond_ea

    .line 1444
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    goto :goto_d7

    .line 1445
    :cond_ea
    const v3, -0xff0001

    and-int/2addr v3, v4

    if-nez v3, :cond_f7

    .line 1446
    const-string/jumbo v3, "3412"

    invoke-static {v3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_d7

    .line 1447
    :cond_f7
    const v3, -0xff01

    and-int/2addr v3, v4

    if-nez v3, :cond_104

    .line 1448
    const-string/jumbo v3, "2143"

    invoke-static {v3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_d7

    .line 1451
    :cond_104
    const/4 v3, 0x0

    goto :goto_db

    .line 1146
    :cond_106
    ushr-int/lit8 v3, v4, 0x10

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->checkUTF16(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1147
    const/4 v2, 0x1

    goto/16 :goto_4f

    .line 1150
    :cond_111
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->ensureLoaded(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1151
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 1153
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->checkUTF16(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1154
    const/4 v2, 0x1

    goto/16 :goto_4f

    .line 1164
    :cond_136
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    packed-switch v2, :pswitch_data_1e8

    .line 1175
    :pswitch_13b
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Internal error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1166
    :pswitch_144
    sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto/16 :goto_53

    .line 1169
    :pswitch_148
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    if-eqz v2, :cond_150

    sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_BE:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto/16 :goto_53

    :cond_150
    sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_LE:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto/16 :goto_53

    .line 1172
    :pswitch_154
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    if-eqz v2, :cond_15c

    sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_BE:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto/16 :goto_53

    :cond_15c
    sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_LE:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto/16 :goto_53

    .line 237
    :cond_160
    new-instance v2, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 2191
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/io/IOContext;->getEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;

    move-result-object v4

    .line 2192
    sget-object v5, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper$1;->$SwitchMap$com$fasterxml$jackson$core$JsonEncoding:[I

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonEncoding;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1f4

    .line 2218
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Internal error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2195
    :pswitch_17e
    new-instance v8, Lcom/fasterxml/jackson/core/io/UTF32Reader;

    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    iget-object v10, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v11, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v12, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    iget v13, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/io/IOContext;->getEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonEncoding;->isBigEndian()Z

    move-result v14

    invoke-direct/range {v8 .. v14}, Lcom/fasterxml/jackson/core/io/UTF32Reader;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BIIZ)V

    move-object v11, v8

    .line 237
    :goto_198
    invoke-virtual/range {p4 .. p6}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->makeChild(ZZ)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-result-object v13

    move-object v8, v2

    move-object v9, v3

    move/from16 v10, p1

    move-object/from16 v12, p2

    invoke-direct/range {v8 .. v13}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/Reader;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V

    goto/16 :goto_7b

    .line 2203
    :pswitch_1a7
    iget-object v10, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    .line 2205
    if-nez v10, :cond_1c0

    .line 2206
    new-instance v8, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    invoke-direct {v8, v5, v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 2215
    :goto_1b6
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_198

    .line 2211
    :cond_1c0
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    if-ge v5, v6, :cond_1d4

    .line 2212
    new-instance v8, Lcom/fasterxml/jackson/core/io/MergedStream;

    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    iget-object v11, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v12, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    iget v13, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    invoke-direct/range {v8 .. v13}, Lcom/fasterxml/jackson/core/io/MergedStream;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V

    goto :goto_1b6

    :cond_1d4
    move-object v8, v10

    goto :goto_1b6

    .line 1395
    :sswitch_data_1d6
    .sparse-switch
        -0x1010000 -> :sswitch_9e
        -0x20000 -> :sswitch_8a
        0xfeff -> :sswitch_7c
        0xfffe -> :sswitch_98
    .end sparse-switch

    .line 1164
    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_144
        :pswitch_148
        :pswitch_13b
        :pswitch_154
    .end packed-switch

    .line 2192
    :pswitch_data_1f4
    .packed-switch 0x1
        :pswitch_17e
        :pswitch_17e
        :pswitch_1a7
        :pswitch_1a7
        :pswitch_1a7
    .end packed-switch
.end method
