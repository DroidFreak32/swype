.class public Lorg/apache/james/mime4j/MimeStreamParser;
.super Ljava/lang/Object;
.source "MimeStreamParser.java"


# static fields
.field private static fieldChars:Ljava/util/BitSet;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private bodyDescriptors:Ljava/util/LinkedList;

.field private handler:Lorg/apache/james/mime4j/ContentHandler;

.field private rootStream:Lorg/apache/james/mime4j/RootInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-class v1, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;

    .line 55
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    .line 63
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    sput-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    .line 64
    const/16 v0, 0x21

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 65
    sget-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 68
    sget-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    .line 59
    iput-object v1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    .line 60
    return-void
.end method

.method private parseEntity(Ljava/io/InputStream;)V
    .locals 17
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Lorg/apache/james/mime4j/BodyDescriptor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_0
    invoke-direct {v1, v4}, Lorg/apache/james/mime4j/BodyDescriptor;-><init>(Lorg/apache/james/mime4j/BodyDescriptor;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v4}, Lorg/apache/james/mime4j/ContentHandler;->startHeader()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/RootInputStream;->getLineNumber()I

    move-result v6

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    const/16 v7, 0xa

    if-ne v5, v7, :cond_5

    const/16 v7, 0xa

    if-eq v4, v7, :cond_1

    if-nez v4, :cond_5

    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v4, -0x1

    if-ne v5, v4, :cond_3

    sget-object v4, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Line "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/RootInputStream;->getLineNumber()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": Unexpected end of headers detected. Boundary detected in header or EOF reached."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_3
    const/4 v5, 0x0

    const/4 v4, 0x0

    move v7, v6

    move/from16 v16, v4

    move v4, v6

    move v6, v5

    move/from16 v5, v16

    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ge v5, v8, :cond_d

    :goto_3
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ge v5, v8, :cond_6

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/james/mime4j/BodyDescriptor;

    goto/16 :goto_0

    :cond_5
    int-to-char v7, v5

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v7, 0xd

    if-eq v5, v7, :cond_0

    move v4, v5

    goto :goto_1

    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    if-ge v5, v8, :cond_8

    sget-object v8, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_8
    invoke-virtual {v10, v6, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v8, v5, 0x2

    const/16 v6, 0x3a

    invoke-virtual {v11, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v6, 0x0

    const/4 v9, -0x1

    if-eq v12, v9, :cond_9

    sget-object v9, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v9, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v6, v14, :cond_15

    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_c

    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v9, v11}, Lorg/apache/james/mime4j/ContentHandler;->field(Ljava/lang/String;)V

    add-int/lit8 v9, v12, 0x1

    invoke-virtual {v11, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v13, v9}, Lorg/apache/james/mime4j/BodyDescriptor;->addField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-nez v6, :cond_a

    sget-object v6, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Line "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ": Ignoring invalid field: \'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_a
    move v4, v7

    move v6, v8

    :cond_b
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v4}, Lorg/apache/james/mime4j/ContentHandler;->endHeader()V

    .line 140
    .local v1, "bd":Lorg/apache/james/mime4j/BodyDescriptor;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/BodyDescriptor;->isMultipart()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 141
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v4, v1}, Lorg/apache/james/mime4j/ContentHandler;->startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V

    .line 145
    new-instance v3, Lorg/apache/james/mime4j/MimeBoundaryInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 147
    .local v3, "tempIs":Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v5, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v5, v3}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v5}, Lorg/apache/james/mime4j/ContentHandler;->preamble(Ljava/io/InputStream;)V

    .line 148
    invoke-virtual {v3}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->consume()V

    .line 150
    :cond_e
    invoke-virtual {v3}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->hasMoreParts()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 151
    new-instance v3, Lorg/apache/james/mime4j/MimeBoundaryInputStream;

    .end local v3    # "tempIs":Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 152
    .restart local v3    # "tempIs":Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v4}, Lorg/apache/james/mime4j/ContentHandler;->startBodyPart()V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/MimeStreamParser;->parseEntity(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v4}, Lorg/apache/james/mime4j/ContentHandler;->endBodyPart()V

    .line 153
    invoke-virtual {v3}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->consume()V

    .line 154
    invoke-virtual {v3}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parentEOF()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 155
    sget-object v4, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 156
    sget-object v4, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Line "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/RootInputStream;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Body part ended prematurely. Higher level boundary detected or EOF reached."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 165
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v5, Lorg/apache/james/mime4j/CloseShieldInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v5}, Lorg/apache/james/mime4j/ContentHandler;->epilogue(Ljava/io/InputStream;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v4}, Lorg/apache/james/mime4j/ContentHandler;->endMultipart()V

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 191
    .end local v3    # "tempIs":Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    :cond_10
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    .line 193
    return-void

    .line 171
    :cond_11
    invoke-virtual {v1}, Lorg/apache/james/mime4j/BodyDescriptor;->isMessage()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 172
    invoke-virtual {v1}, Lorg/apache/james/mime4j/BodyDescriptor;->isBase64Encoded()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 173
    sget-object v4, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "base64 encoded message/rfc822 detected"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 174
    new-instance v2, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    new-instance v4, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    move-object/from16 p1, v2

    .line 181
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 182
    invoke-direct/range {p0 .. p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseMessage(Ljava/io/InputStream;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_6

    .line 176
    :cond_13
    invoke-virtual {v1}, Lorg/apache/james/mime4j/BodyDescriptor;->isQuotedPrintableEncoded()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 177
    sget-object v4, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "quoted-printable encoded message/rfc822 detected"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 178
    new-instance v2, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    new-instance v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    move-object/from16 p1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    goto :goto_7

    .line 185
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v5, Lorg/apache/james/mime4j/CloseShieldInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v1, v5}, Lorg/apache/james/mime4j/ContentHandler;->body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_6

    .end local v1    # "bd":Lorg/apache/james/mime4j/BodyDescriptor;
    :cond_15
    move v6, v9

    goto/16 :goto_5
.end method

.method private parseMessage(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->startMessage()V

    .line 200
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseEntity(Ljava/io/InputStream;)V

    .line 201
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->endMessage()V

    .line 203
    return-void
.end method


# virtual methods
.method public final parse(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lorg/apache/james/mime4j/RootInputStream;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/RootInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    .line 86
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/MimeStreamParser;->parseMessage(Ljava/io/InputStream;)V

    .line 87
    return-void
.end method

.method public final setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V
    .locals 0
    .param p1, "h"    # Lorg/apache/james/mime4j/ContentHandler;

    .prologue
    .line 317
    iput-object p1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    .line 318
    return-void
.end method
