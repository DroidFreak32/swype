.class public final Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;
.super Ljava/lang/Object;
.source "TracingPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/helper/power/TracingPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TracingWakeLock"
.end annotation


# instance fields
.field private id:I

.field private volatile startTime:Ljava/lang/Long;

.field private tag:Ljava/lang/String;

.field private synthetic this$0:Lcom/fsck/k9/helper/power/TracingPowerManager;

.field private volatile timeout:Ljava/lang/Long;

.field public final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/helper/power/TracingPowerManager;Ljava/lang/String;)V
    .locals 3
    .param p2, "ntag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 57
    iput-object p1, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->this$0:Lcom/fsck/k9/helper/power/TracingPowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    .line 55
    iput-object v0, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->timeout:Ljava/lang/Long;

    .line 58
    iput-object p2, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/fsck/k9/helper/power/TracingPowerManager;->pm:Landroid/os/PowerManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 60
    sget-object v0, Lcom/fsck/k9/helper/power/TracingPowerManager;->wakeLockId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->id:I

    .line 61
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating TracingWakeLock for tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public final acquire$1349ef()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xea60

    .line 68
    iget-object v1, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 71
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Acquired TracingWakeLock for tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for 60000 ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->this$0:Lcom/fsck/k9/helper/power/TracingPowerManager;

    invoke-static {}, Lcom/fsck/k9/helper/power/TracingPowerManager;->access$000$5e9c5b64()Ljava/util/Timer;

    .line 78
    iget-object v0, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    .line 82
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->timeout:Ljava/lang/Long;

    .line 83
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final release()V
    .locals 8

    .prologue
    .line 111
    iget-object v1, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 114
    .local v0, "endTime":Ljava/lang/Long;
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Releasing TracingWakeLock for tag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms, timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->timeout:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "endTime":Ljava/lang/Long;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->this$0:Lcom/fsck/k9/helper/power/TracingPowerManager;

    invoke-static {}, Lcom/fsck/k9/helper/power/TracingPowerManager;->access$000$5e9c5b64()Ljava/util/Timer;

    .line 128
    iget-object v2, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 131
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    .line 133
    return-void

    .line 122
    :cond_1
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Releasing TracingWakeLock for tag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->timeout:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
