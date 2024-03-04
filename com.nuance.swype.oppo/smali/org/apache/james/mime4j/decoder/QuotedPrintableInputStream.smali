.class public Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

.field private pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

.field private state:B

.field private stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    .line 40
    new-instance v0, Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    .line 41
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 44
    iput-object p1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    .line 45
    return-void
.end method

.method private static asciiCharToNumericValue(B)B
    .locals 3
    .param p0, "c"    # B

    .prologue
    .line 211
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 212
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 216
    :goto_0
    return v0

    .line 213
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    .line 214
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 215
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    .line 216
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 222
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 54
    return-void
.end method

.method public read()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x39

    const/16 v9, 0x30

    const/16 v8, 0xd

    const/16 v7, 0x3d

    const/4 v2, 0x0

    .line 57
    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    iget-object v3, v3, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    iget-object v3, v3, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    iget-object v3, v3, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_2
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v3, v3

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    :cond_0
    :goto_3
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    iget-object v3, v3, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v3

    if-eqz v3, :cond_12

    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    iget-object v3, v3, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->remove()B

    move-result v3

    iget-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    packed-switch v4, :pswitch_data_0

    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal state: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v6, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    iput-byte v2, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->clear()V

    goto :goto_3

    :sswitch_1
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v3, v3

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_1

    :sswitch_2
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->clear()V

    goto :goto_2

    :pswitch_0
    if-eq v3, v7, :cond_2

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    iput-byte v3, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto :goto_0

    :pswitch_1
    if-ne v3, v8, :cond_3

    const/4 v3, 0x2

    iput-byte v3, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    :cond_3
    if-lt v3, v9, :cond_4

    if-le v3, v10, :cond_6

    :cond_4
    const/16 v4, 0x41

    if-lt v3, v4, :cond_5

    const/16 v4, 0x46

    if-le v3, v4, :cond_6

    :cond_5
    const/16 v4, 0x61

    if-lt v3, v4, :cond_7

    const/16 v4, 0x66

    if-gt v3, v4, :cond_7

    :cond_6
    const/4 v1, 0x3

    iput-byte v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    move v1, v3

    goto/16 :goto_0

    :cond_7
    if-ne v3, v7, :cond_9

    sget-object v3, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Malformed MIME; got =="

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_8
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v3, v7}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    :cond_9
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Malformed MIME; expected \\r or [0-9A-Z], got "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_a
    iput-byte v2, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v7}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    :pswitch_2
    const/16 v4, 0xa

    if-ne v3, v4, :cond_b

    iput-byte v2, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    :cond_b
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Malformed MIME; expected 10, got "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_c
    iput-byte v2, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v7}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    :pswitch_3
    if-lt v3, v9, :cond_d

    if-le v3, v10, :cond_f

    :cond_d
    const/16 v4, 0x41

    if-lt v3, v4, :cond_e

    const/16 v4, 0x46

    if-le v3, v4, :cond_f

    :cond_e
    const/16 v4, 0x61

    if-lt v3, v4, :cond_10

    const/16 v4, 0x66

    if-gt v3, v4, :cond_10

    :cond_f
    invoke-static {v1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v4

    invoke-static {v3}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v3

    iput-byte v2, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    iget-object v5, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    :cond_10
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Malformed MIME; expected [0-9A-Z], got "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_11
    iput-byte v2, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v7}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 58
    :cond_12
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    iget-object v1, v1, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v1

    if-nez v1, :cond_14

    .line 59
    const/4 v0, -0x1

    .line 65
    :cond_13
    :goto_4
    return v0

    .line 61
    :cond_14
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    iget-object v1, v1, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->remove()B

    move-result v0

    .line 62
    .local v0, "val":B
    if-gez v0, :cond_13

    .line 65
    and-int/lit16 v0, v0, 0xff

    goto :goto_4

    .line 57
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x20 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
