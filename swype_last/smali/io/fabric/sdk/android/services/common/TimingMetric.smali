.class public final Lio/fabric/sdk/android/services/common/TimingMetric;
.super Ljava/lang/Object;
.source "TimingMetric.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final disabled:Z

.field private duration:J

.field private final eventName:Ljava/lang/String;

.field private start:J

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->eventName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->tag:Ljava/lang/String;

    .line 23
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->disabled:Z

    .line 24
    return-void

    .line 23
    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public final declared-synchronized startMeasuring()V
    .registers 3

    .prologue
    .line 30
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->disabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_7

    .line 33
    :goto_5
    monitor-exit p0

    return-void

    .line 31
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->start:J

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->duration:J
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_5

    .line 30
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopMeasuring()V
    .registers 5

    .prologue
    .line 39
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->disabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_41

    if-eqz v0, :cond_7

    .line 43
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 40
    :cond_7
    :try_start_7
    iget-wide v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->duration:J

    .line 1053
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->eventName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_41

    goto :goto_5

    .line 39
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method
