.class public Lorg/apache/james/mime4j/decoder/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeBase64(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 81
    .local v2, "bytes":[B
    new-instance v4, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 84
    .local v4, "is":Lorg/apache/james/mime4j/decoder/Base64InputStream;
    const/4 v0, 0x0

    .line 85
    .local v0, "b":I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 86
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v0    # "b":I
    .end local v2    # "bytes":[B
    .end local v4    # "is":Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :catch_0
    move-exception v3

    .line 92
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 95
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private static decodeBaseQuotedPrintable(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 52
    .local v2, "bytes":[B
    new-instance v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v4, "is":Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    const/4 v0, 0x0

    .line 56
    .local v0, "b":I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 57
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v0    # "b":I
    .end local v2    # "bytes":[B
    .end local v4    # "is":Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :catch_0
    move-exception v3

    .line 63
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 66
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private static decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;
    .locals 11
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v9, 0x3f

    const/4 v7, 0x0

    .line 212
    add-int/lit8 v8, p1, 0x2

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 213
    .local v5, "qm1":I
    add-int/lit8 v8, p2, -0x2

    if-ne v5, v8, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-object v7

    .line 216
    :cond_1
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 217
    .local v6, "qm2":I
    add-int/lit8 v8, p2, -0x2

    if-eq v6, v8, :cond_0

    .line 220
    add-int/lit8 v8, p1, 0x2

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "mimeCharset":Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "encoding":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, p2, -0x2

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "encodedText":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 226
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 227
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "MIME charset \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' doesn\'t have a corresponding Java charset"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 233
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 234
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Current JDK doesn\'t support decoding of charset \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' (MIME charset \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 242
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 243
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 244
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Missing encoded text in encoded word: \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 251
    :cond_4
    :try_start_0
    const-string v8, "Q"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 252
    invoke-static {v2, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 253
    :cond_5
    const-string v8, "B"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 254
    new-instance v8, Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v7, v8

    goto/16 :goto_0

    .line 256
    :cond_6
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 257
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Warning: Unknown encoding in encoded word \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 265
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unsupported encoding in encoded word \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 269
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 271
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not decode encoded word \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x3f

    const/4 v10, -0x1

    .line 158
    const-string v11, "=?"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_1

    .line 188
    .end local p0    # "body":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 162
    .restart local p0    # "body":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 163
    .local v4, "previousEnd":I
    const/4 v5, 0x0

    .line 165
    .local v5, "previousWasEncoded":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v8, "sb":Ljava/lang/StringBuilder;
    :goto_1
    const-string v11, "=?"

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, "begin":I
    add-int/lit8 v3, v0, 0x2

    .line 174
    .local v3, "endScan":I
    if-eq v0, v10, :cond_2

    .line 175
    add-int/lit8 v11, v3, 0x2

    invoke-virtual {p0, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 176
    .local v6, "qm1":I
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p0, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 177
    .local v7, "qm2":I
    if-eq v7, v10, :cond_2

    .line 178
    add-int/lit8 v3, v7, 0x1

    .line 182
    .end local v6    # "qm1":I
    .end local v7    # "qm2":I
    :cond_2
    if-ne v0, v10, :cond_3

    move v2, v10

    .line 183
    .local v2, "end":I
    :goto_2
    if-ne v2, v10, :cond_4

    .line 184
    if-eqz v4, :cond_0

    .line 187
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 182
    .end local v2    # "end":I
    :cond_3
    const-string v11, "?="

    invoke-virtual {p0, v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    .line 190
    .restart local v2    # "end":I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    .line 192
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, "sep":Ljava/lang/String;
    invoke-static {p0, v0, v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "decoded":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 196
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :goto_3
    move v4, v2

    .line 206
    if-eqz v1, :cond_8

    const/4 v5, 0x1

    .line 207
    :goto_4
    goto :goto_1

    .line 199
    :cond_5
    if-eqz v5, :cond_6

    invoke-static {v9}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 200
    :cond_6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_7
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 206
    :cond_8
    const/4 v5, 0x0

    goto :goto_4
.end method

.method private static decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "encodedWord"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 132
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 133
    .local v0, "c":C
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    .line 134
    const-string v3, "=20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 140
    .end local v0    # "c":C
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBaseQuotedPrintable(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method
