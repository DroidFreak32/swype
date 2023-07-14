.class Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/comm/HttpConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteCountingOutputStream"
.end annotation


# instance fields
.field private size:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size:J

    return-void
.end method


# virtual methods
.method public size()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    iget-wide v0, p0, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size:J

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    iget-wide v0, p0, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/connect/comm/HttpConnector$ByteCountingOutputStream;->size:J

    return-void
.end method
