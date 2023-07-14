.class final Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLdbInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PositionInputStream"
.end annotation


# instance fields
.field private pos:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->pos:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    monitor-enter p0

    const-wide/16 v2, 0x400

    :try_start_0
    div-long v4, p1, v2

    long-to-int v2, p1

    rem-int/lit16 v6, v2, 0x400

    const/16 v2, 0x400

    new-array v7, v2, [B

    move-wide v2, v0

    :goto_0
    cmp-long v8, v2, v4

    if-gez v8, :cond_0

    invoke-super {p0, v7}, Ljava/io/FilterInputStream;->read([B)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v0, v8

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_0

    :cond_0
    if-lez v6, :cond_1

    new-array v2, v6, [B

    invoke-super {p0, v2}, Ljava/io/FilterInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_1
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized skipToPosition(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->pos:J

    sub-long v2, p1, v0

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->skip(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-int/lit8 v1, v0, 0x1

    const/4 v4, 0x5

    if-lt v0, v4, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to skip to position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " after 5 tries."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
