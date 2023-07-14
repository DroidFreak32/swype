.class public Lcom/facebook/rebound/SteppingLooper;
.super Lcom/facebook/rebound/SpringLooper;
.source "SteppingLooper.java"


# instance fields
.field private mLastTime:J

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/rebound/SpringLooper;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/SteppingLooper;->mStarted:Z

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/rebound/SteppingLooper;->mLastTime:J

    .line 21
    return-void
.end method

.method public step(J)Z
    .locals 7
    .param p1, "interval"    # J

    .prologue
    .line 24
    iget-object v2, p0, Lcom/facebook/rebound/SteppingLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/facebook/rebound/SteppingLooper;->mStarted:Z

    if-nez v2, :cond_1

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    return v2

    .line 27
    :cond_1
    iget-wide v2, p0, Lcom/facebook/rebound/SteppingLooper;->mLastTime:J

    add-long v0, v2, p1

    .line 28
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/facebook/rebound/SteppingLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    long-to-double v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/facebook/rebound/BaseSpringSystem;->loop(D)V

    .line 29
    iput-wide v0, p0, Lcom/facebook/rebound/SteppingLooper;->mLastTime:J

    .line 30
    iget-object v2, p0, Lcom/facebook/rebound/SteppingLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v2}, Lcom/facebook/rebound/BaseSpringSystem;->getIsIdle()Z

    move-result v2

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rebound/SteppingLooper;->mStarted:Z

    .line 36
    return-void
.end method
