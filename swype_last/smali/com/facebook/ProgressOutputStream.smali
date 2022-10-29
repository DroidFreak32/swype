.class Lcom/facebook/ProgressOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ProgressOutputStream.java"

# interfaces
.implements Lcom/facebook/RequestOutputStream;


# instance fields
.field private batchProgress:J

.field private currentRequestProgress:Lcom/facebook/RequestProgress;

.field private lastReportedProgress:J

.field private maxProgress:J

.field private final progressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/RequestProgress;",
            ">;"
        }
    .end annotation
.end field

.field private final requests:Lcom/facebook/GraphRequestBatch;

.field private final threshold:J


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "requests"    # Lcom/facebook/GraphRequestBatch;
    .param p4, "maxProgress"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lcom/facebook/GraphRequestBatch;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/RequestProgress;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "progressMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/GraphRequest;Lcom/facebook/RequestProgress;>;"
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    iput-object p2, p0, Lcom/facebook/ProgressOutputStream;->requests:Lcom/facebook/GraphRequestBatch;

    .line 45
    iput-object p3, p0, Lcom/facebook/ProgressOutputStream;->progressMap:Ljava/util/Map;

    .line 46
    iput-wide p4, p0, Lcom/facebook/ProgressOutputStream;->maxProgress:J

    .line 48
    invoke-static {}, Lcom/facebook/FacebookSdk;->getOnProgressThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ProgressOutputStream;->threshold:J

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/ProgressOutputStream;)Lcom/facebook/GraphRequestBatch;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/ProgressOutputStream;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->requests:Lcom/facebook/GraphRequestBatch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/ProgressOutputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/facebook/ProgressOutputStream;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/facebook/ProgressOutputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/facebook/ProgressOutputStream;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->maxProgress:J

    return-wide v0
.end method

.method private addProgress(J)V
    .registers 10
    .param p1, "size"    # J

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/RequestProgress;->addProgress(J)V

    .line 56
    :cond_9
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    .line 58
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->lastReportedProgress:J

    iget-wide v4, p0, Lcom/facebook/ProgressOutputStream;->threshold:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->maxProgress:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    .line 59
    :cond_21
    invoke-direct {p0}, Lcom/facebook/ProgressOutputStream;->reportBatchProgress()V

    .line 61
    :cond_24
    return-void
.end method

.method private reportBatchProgress()V
    .registers 10

    .prologue
    .line 64
    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    iget-wide v4, p0, Lcom/facebook/ProgressOutputStream;->lastReportedProgress:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_44

    .line 65
    iget-object v1, p0, Lcom/facebook/ProgressOutputStream;->requests:Lcom/facebook/GraphRequestBatch;

    invoke-virtual {v1}, Lcom/facebook/GraphRequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/GraphRequestBatch$Callback;

    .line 66
    .local v6, "callback":Lcom/facebook/GraphRequestBatch$Callback;
    instance-of v1, v6, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    if-eqz v1, :cond_12

    .line 67
    iget-object v1, p0, Lcom/facebook/ProgressOutputStream;->requests:Lcom/facebook/GraphRequestBatch;

    invoke-virtual {v1}, Lcom/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v7

    .local v7, "callbackHandler":Landroid/os/Handler;
    move-object v0, v6

    .line 70
    check-cast v0, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    .line 72
    .local v0, "progressCallback":Lcom/facebook/GraphRequestBatch$OnProgressCallback;
    if-nez v7, :cond_37

    .line 73
    iget-object v1, p0, Lcom/facebook/ProgressOutputStream;->requests:Lcom/facebook/GraphRequestBatch;

    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    iget-wide v4, p0, Lcom/facebook/ProgressOutputStream;->maxProgress:J

    invoke-interface/range {v0 .. v5}, Lcom/facebook/GraphRequestBatch$OnProgressCallback;->onBatchProgress(Lcom/facebook/GraphRequestBatch;JJ)V

    goto :goto_12

    .line 76
    :cond_37
    new-instance v1, Lcom/facebook/ProgressOutputStream$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ProgressOutputStream$1;-><init>(Lcom/facebook/ProgressOutputStream;Lcom/facebook/GraphRequestBatch$OnProgressCallback;)V

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12

    .line 89
    .end local v0    # "progressCallback":Lcom/facebook/GraphRequestBatch$OnProgressCallback;
    .end local v6    # "callback":Lcom/facebook/GraphRequestBatch$Callback;
    .end local v7    # "callbackHandler":Landroid/os/Handler;
    :cond_40
    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    iput-wide v2, p0, Lcom/facebook/ProgressOutputStream;->lastReportedProgress:J

    .line 91
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_44
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 127
    iget-object v1, p0, Lcom/facebook/ProgressOutputStream;->progressMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/RequestProgress;

    .line 128
    invoke-virtual {v1}, Lcom/facebook/RequestProgress;->reportProgress()V

    goto :goto_d

    .line 131
    :cond_1d
    invoke-direct {p0}, Lcom/facebook/ProgressOutputStream;->reportBatchProgress()V

    .line 132
    return-void
.end method

.method getBatchProgress()J
    .registers 3

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    return-wide v0
.end method

.method getMaxProgress()J
    .registers 3

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->maxProgress:J

    return-wide v0
.end method

.method public setCurrentRequest(Lcom/facebook/GraphRequest;)V
    .registers 3
    .param p1, "request"    # Lcom/facebook/GraphRequest;

    .prologue
    .line 94
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->progressMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/RequestProgress;

    :goto_a
    iput-object v0, p0, Lcom/facebook/ProgressOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    .line 95
    return-void

    .line 94
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public write(I)V
    .registers 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 120
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ProgressOutputStream;->addProgress(J)V

    .line 121
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 108
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ProgressOutputStream;->addProgress(J)V

    .line 109
    return-void
.end method

.method public write([BII)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 114
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lcom/facebook/ProgressOutputStream;->addProgress(J)V

    .line 115
    return-void
.end method
