.class public final Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;
.super Ljava/io/FilterOutputStream;
.source "QuotedPrintableOutputStream.java"


# instance fields
.field private closed:Z

.field private encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    .line 42
    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    .line 43
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->initEncoding(Ljava/io/OutputStream;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 49
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->completeEncoding()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

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
    .line 68
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->flushOutput()V

    .line 69
    return-void
.end method

.method public final write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write([BII)V

    .line 75
    return-void
.end method

.method public final write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/io/IOException;

    const-string v1, "QuotedPrintableOutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encodeChunk([BII)V

    .line 86
    return-void
.end method
