.class public final Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 152
    if-nez p0, :cond_4

    .line 153
    const/4 v1, 0x0

    .line 156
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    goto :goto_3

    .line 157
    :catch_9
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {p1, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/StringUtils;->newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method private static newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;
    .registers 5
    .param p0, "charsetName"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/io/UnsupportedEncodingException;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newString([BLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 186
    if-nez p0, :cond_4

    .line 187
    const/4 v1, 0x0

    .line 190
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_3

    .line 191
    :catch_a
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {p1, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/StringUtils;->newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method
