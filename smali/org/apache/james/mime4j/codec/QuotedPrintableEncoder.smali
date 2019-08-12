.class final Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;
.super Ljava/lang/Object;
.source "QuotedPrintableEncoder.java"


# static fields
.field private static final HEX_DIGITS:[B


# instance fields
.field private final binary:Z

.field private nextSoftBreak:I

.field private out:Ljava/io/OutputStream;

.field private final outBuffer:[B

.field private outputIndex:I

.field private pendingCR:Z

.field private pendingSpace:Z

.field private pendingTab:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->HEX_DIGITS:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0xc00

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    .line 56
    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    .line 57
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    .line 59
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    .line 60
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    .line 61
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    .line 62
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    .line 63
    return-void
.end method

.method private clearPending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    .line 120
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    .line 121
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    .line 122
    return-void
.end method

.method private escape(B)V
    .locals 3
    .param p1, "next"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 225
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->softBreak()V

    .line 228
    :cond_0
    and-int/lit16 v0, p1, 0xff

    .line 230
    .local v0, "nextUnsigned":I
    const/16 v1, 0x3d

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 231
    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    .line 232
    sget-object v1, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->HEX_DIGITS:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 233
    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    .line 234
    sget-object v1, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->HEX_DIGITS:[B

    rem-int/lit8 v2, v0, 0x10

    aget-byte v1, v1, v2

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 235
    return-void
.end method

.method private lineBreak()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 255
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 256
    const/16 v0, 0x4c

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    .line 257
    return-void
.end method

.method private plain(B)V
    .locals 2
    .param p1, "next"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 216
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->softBreak()V

    .line 218
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 219
    return-void
.end method

.method private softBreak()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 249
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->lineBreak()V

    .line 250
    return-void
.end method

.method private write(B)V
    .locals 3
    .param p1, "next"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    aput-byte p1, v0, v1

    .line 240
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 242
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->flushOutput()V

    .line 244
    :cond_0
    return-void
.end method

.method private writePending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    if-eqz v0, :cond_1

    .line 104
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    .line 114
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->clearPending()V

    .line 115
    return-void

    .line 106
    :cond_1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    if-eqz v0, :cond_2

    .line 108
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_0

    .line 110
    :cond_2
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    if-eqz v0, :cond_0

    .line 112
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_0
.end method


# virtual methods
.method final completeEncoding()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    .line 85
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->flushOutput()V

    .line 86
    return-void
.end method

.method final encodeChunk([BII)V
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 76
    move v0, p2

    .local v0, "inputIndex":I
    :goto_0
    add-int v1, p3, p2

    if-ge v0, v1, :cond_a

    .line 78
    aget-byte v1, p1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    iget-boolean v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    if-eqz v2, :cond_2

    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->lineBreak()V

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->clearPending()V

    .line 76
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_2

    :cond_4
    const/16 v2, 0xd

    if-ne v1, v2, :cond_5

    iput-boolean v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    if-ne v1, v4, :cond_6

    iput-boolean v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    goto :goto_2

    :cond_6
    if-ne v1, v5, :cond_7

    iput-boolean v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    goto :goto_2

    :cond_7
    if-ge v1, v4, :cond_8

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_2

    :cond_8
    const/16 v2, 0x7e

    if-le v1, v2, :cond_9

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_2

    :cond_9
    const/16 v2, 0x3d

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_2

    .line 80
    :cond_a
    return-void
.end method

.method final flushOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 261
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 269
    :goto_0
    iput v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    .line 270
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method final initEncoding(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x0

    .line 67
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    .line 68
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    .line 69
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    .line 70
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    .line 71
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    .line 72
    return-void
.end method
