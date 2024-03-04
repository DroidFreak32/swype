.class public Lorg/apache/commons/codec/binary/Base64InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64InputStream.java"


# instance fields
.field private final base64:Lorg/apache/commons/codec/binary/Base64;

.field private final doEncode:Z

.field private final singleByte:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "doEncode"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->singleByte:[B

    .line 75
    iput-boolean p2, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->doEncode:Z

    .line 76
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/Base64;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZI[B)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "doEncode"    # Z
    .param p3, "lineLength"    # I
    .param p4, "lineSeparator"    # [B

    .prologue
    .line 96
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->singleByte:[B

    .line 97
    iput-boolean p2, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->doEncode:Z

    .line 98
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p3, p4}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    .line 99
    return-void
.end method


# virtual methods
.method public markSupported()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->singleByte:[B

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/codec/binary/Base64InputStream;->read([BII)I

    move-result v0

    .line 110
    .local v0, "r":I
    :goto_0
    if-nez v0, :cond_0

    .line 111
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->singleByte:[B

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/codec/binary/Base64InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 113
    :cond_0
    if-lez v0, :cond_2

    .line 114
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->singleByte:[B

    aget-byte v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->singleByte:[B

    aget-byte v1, v1, v2

    add-int/lit16 v1, v1, 0x100

    .line 116
    :goto_1
    return v1

    .line 114
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->singleByte:[B

    aget-byte v1, v1, v2

    goto :goto_1

    .line 116
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 141
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 142
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 143
    :cond_2
    array-length v2, p1

    if-gt p2, v2, :cond_3

    add-int v2, p2, p3

    array-length v4, p1

    if-le v2, v4, :cond_4

    .line 144
    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 145
    :cond_4
    if-nez p3, :cond_5

    move v2, v3

    .line 162
    :goto_0
    return v2

    .line 148
    :cond_5
    iget-object v2, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {v2}, Lorg/apache/commons/codec/binary/Base64;->hasData()Z

    move-result v2

    if-nez v2, :cond_7

    .line 149
    iget-boolean v2, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->doEncode:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x1000

    :goto_1
    new-array v0, v2, [B

    .line 150
    .local v0, "buf":[B
    iget-object v2, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 153
    .local v1, "c":I
    if-lez v1, :cond_6

    array-length v2, p1

    if-ne v2, p3, :cond_6

    .line 154
    iget-object v2, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/commons/codec/binary/Base64;->setInitialBuffer([BII)V

    .line 156
    :cond_6
    iget-boolean v2, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->doEncode:Z

    if-eqz v2, :cond_9

    .line 157
    iget-object v2, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {v2, v0, v3, v1}, Lorg/apache/commons/codec/binary/Base64;->encode([BII)V

    .line 162
    .end local v0    # "buf":[B
    .end local v1    # "c":I
    :cond_7
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/commons/codec/binary/Base64;->readResults([BII)I

    move-result v2

    goto :goto_0

    .line 149
    :cond_8
    const/16 v2, 0x2000

    goto :goto_1

    .line 159
    .restart local v0    # "buf":[B
    .restart local v1    # "c":I
    :cond_9
    iget-object v2, p0, Lorg/apache/commons/codec/binary/Base64InputStream;->base64:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {v2, v0, v3, v1}, Lorg/apache/commons/codec/binary/Base64;->decode([BII)V

    goto :goto_2
.end method
