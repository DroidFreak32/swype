.class public final Lcom/jcraft/jzlib/ZOutputStream;
.super Ljava/io/OutputStream;
.source "ZOutputStream.java"


# instance fields
.field private buf:[B

.field private buf1:[B

.field private bufsize:I

.field private compress:Z

.field private flush:I

.field private out:Ljava/io/OutputStream;

.field private z:Lcom/jcraft/jzlib/ZStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 40
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 41
    const/16 v0, 0x200

    iput v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    .line 43
    iget v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf1:[B

    .line 61
    iput-object p1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 62
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v1, Lcom/jcraft/jzlib/Deflate;

    invoke-direct {v1}, Lcom/jcraft/jzlib/Deflate;-><init>()V

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget-object v1, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    invoke-virtual {v1, v0}, Lcom/jcraft/jzlib/Deflate;->deflateInit$1c280a82(Lcom/jcraft/jzlib/ZStream;)I

    .line 63
    iput-boolean v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    .line 64
    return-void
.end method

.method private end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v1, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    invoke-virtual {v1}, Lcom/jcraft/jzlib/Deflate;->deflateEnd()I

    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 123
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    .line 124
    iput-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v1, v0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    invoke-virtual {v1, v0}, Lcom/jcraft/jzlib/Inflate;->inflateEnd(Lcom/jcraft/jzlib/ZStream;)I

    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    goto :goto_1
.end method


# virtual methods
.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 128
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    iput v1, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v1, Lcom/jcraft/jzlib/ZStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v0, :cond_2

    const-string v0, "de"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "flating: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v2, v2, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jzlib/ZStreamException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    .line 132
    :goto_2
    invoke-direct {p0}, Lcom/jcraft/jzlib/ZOutputStream;->end()V

    .line 133
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 134
    iput-object v5, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 135
    return-void

    .line 128
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/ZStream;->inflate(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "in"

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    iget-object v4, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 132
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/jcraft/jzlib/ZOutputStream;->end()V

    .line 133
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 134
    iput-object v5, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    throw v0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 154
    return-void
.end method

.method public final setFlushMode$13462e()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    .line 99
    return-void
.end method

.method public final write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf1:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 68
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf1:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jzlib/ZOutputStream;->write([BII)V

    .line 69
    return-void
.end method

.method public final write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 72
    if-nez p3, :cond_0

    .line 91
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 76
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput p2, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 77
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput p3, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    iput-object v2, v1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 80
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput v5, v1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 81
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    iput v2, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 82
    iget-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    move-result v0

    .line 86
    .local v0, "err":I
    :goto_1
    if-eqz v0, :cond_4

    .line 87
    new-instance v2, Lcom/jcraft/jzlib/ZStreamException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v1, :cond_3

    const-string v1, "de"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "flating: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/jcraft/jzlib/ZStreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    .end local v0    # "err":I
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jzlib/ZStream;->inflate(I)I

    move-result v0

    .restart local v0    # "err":I
    goto :goto_1

    .line 87
    :cond_3
    const-string v1, "in"

    goto :goto_2

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    iget v3, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    iget-object v4, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 90
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-eqz v1, :cond_1

    goto :goto_0
.end method
