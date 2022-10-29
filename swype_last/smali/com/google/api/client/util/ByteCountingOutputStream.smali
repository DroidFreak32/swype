.class final Lcom/google/api/client/util/ByteCountingOutputStream;
.super Ljava/io/OutputStream;
.source "ByteCountingOutputStream.java"


# instance fields
.field count:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    .line 39
    return-void
.end method

.method public final write([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    .line 34
    return-void
.end method
