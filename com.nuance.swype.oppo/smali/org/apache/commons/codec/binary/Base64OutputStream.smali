.class public Lorg/apache/commons/codec/binary/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# instance fields
.field private final base64:Lorg/apache/commons/codec/binary/Base64;

.field private final doEncode:Z

.field private final singleByte:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base64OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "doEncode"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->singleByte:[B

    .line 74
    iput-boolean p2, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->doEncode:Z

    .line 75
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/Base64;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI[B)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "doEncode"    # Z
    .param p3, "lineLength"    # I
    .param p4, "lineSeparator"    # [B

    .prologue
    .line 95
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->singleByte:[B

    .line 96
    iput-boolean p2, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->doEncode:Z

    .line 97
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p3, p4}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    .line 98
    return-void
.end method

.method private flush(Z)V
    .locals 5
    .param p1, "propogate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 158
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {v3}, Lorg/apache/commons/codec/binary/Base64;->avail()I

    move-result v0

    .line 159
    .local v0, "avail":I
    if-lez v0, :cond_0

    .line 160
    new-array v1, v0, [B

    .line 161
    .local v1, "buf":[B
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {v3, v1, v4, v0}, Lorg/apache/commons/codec/binary/Base64;->readResults([BII)I

    move-result v2

    .line 162
    .local v2, "c":I
    if-lez v2, :cond_0

    .line 163
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 166
    .end local v1    # "buf":[B
    .end local v2    # "c":I
    :cond_0
    if-eqz p1, :cond_1

    .line 167
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 169
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 189
    iget-boolean v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->doEncode:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->singleByte:[B

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/commons/codec/binary/Base64;->encode([BII)V

    .line 194
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base64OutputStream;->flush()V

    .line 195
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 196
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->singleByte:[B

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/commons/codec/binary/Base64;->decode([BII)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Base64OutputStream;->flush(Z)V

    .line 179
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 110
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/codec/binary/Base64OutputStream;->write([BII)V

    .line 111
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 134
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 136
    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_4

    .line 137
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 138
    :cond_4
    if-lez p3, :cond_5

    .line 139
    iget-boolean v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->doEncode:Z

    if-eqz v0, :cond_6

    .line 140
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/codec/binary/Base64;->encode([BII)V

    .line 144
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Base64OutputStream;->flush(Z)V

    .line 146
    :cond_5
    return-void

    .line 142
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64OutputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/codec/binary/Base64;->decode([BII)V

    goto :goto_0
.end method
