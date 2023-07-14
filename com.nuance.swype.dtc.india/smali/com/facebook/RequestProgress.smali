.class Lcom/facebook/RequestProgress;
.super Ljava/lang/Object;
.source "RequestProgress.java"


# instance fields
.field private final callbackHandler:Landroid/os/Handler;

.field private lastReportedProgress:J

.field private maxProgress:J

.field private progress:J

.field private final request:Lcom/facebook/GraphRequest;

.field private final threshold:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V
    .locals 2
    .param p1, "callbackHandler"    # Landroid/os/Handler;
    .param p2, "request"    # Lcom/facebook/GraphRequest;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/GraphRequest;

    .line 34
    iput-object p1, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    .line 36
    invoke-static {}, Lcom/facebook/FacebookSdk;->getOnProgressThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->threshold:J

    .line 37
    return-void
.end method


# virtual methods
.method addProgress(J)V
    .locals 7
    .param p1, "size"    # J

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 50
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    iget-wide v4, p0, Lcom/facebook/RequestProgress;->threshold:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/RequestProgress;->reportProgress()V

    .line 53
    :cond_1
    return-void
.end method

.method addToMax(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    .line 57
    return-void
.end method

.method getMaxProgress()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    return-wide v0
.end method

.method getProgress()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    return-wide v0
.end method

.method reportProgress()V
    .locals 12

    .prologue
    .line 60
    iget-wide v8, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v10, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    cmp-long v1, v8, v10

    if-lez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v0

    .line 62
    .local v0, "callback":Lcom/facebook/GraphRequest$Callback;
    iget-wide v8, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_0

    instance-of v1, v0, Lcom/facebook/GraphRequest$OnProgressCallback;

    if-eqz v1, :cond_0

    .line 64
    iget-wide v4, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 65
    .local v4, "currentCopy":J
    iget-wide v6, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    .local v6, "maxProgressCopy":J
    move-object v3, v0

    .line 66
    check-cast v3, Lcom/facebook/GraphRequest$OnProgressCallback;

    .line 68
    .local v3, "callbackCopy":Lcom/facebook/GraphRequest$OnProgressCallback;
    iget-object v1, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 69
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/facebook/GraphRequest$OnProgressCallback;->onProgress(JJ)V

    .line 79
    :goto_0
    iget-wide v8, p0, Lcom/facebook/RequestProgress;->progress:J

    iput-wide v8, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    .line 82
    .end local v0    # "callback":Lcom/facebook/GraphRequest$Callback;
    .end local v3    # "callbackCopy":Lcom/facebook/GraphRequest$OnProgressCallback;
    .end local v4    # "currentCopy":J
    .end local v6    # "maxProgressCopy":J
    :cond_0
    return-void

    .line 72
    .restart local v0    # "callback":Lcom/facebook/GraphRequest$Callback;
    .restart local v3    # "callbackCopy":Lcom/facebook/GraphRequest$OnProgressCallback;
    .restart local v4    # "currentCopy":J
    .restart local v6    # "maxProgressCopy":J
    :cond_1
    iget-object v8, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/RequestProgress$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/RequestProgress$1;-><init>(Lcom/facebook/RequestProgress;Lcom/facebook/GraphRequest$OnProgressCallback;JJ)V

    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
