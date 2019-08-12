.class public Ltwitter4j/management/InvocationStatisticsCalculator;
.super Ljava/lang/Object;
.source "InvocationStatisticsCalculator.java"

# interfaces
.implements Ltwitter4j/management/InvocationStatistics;


# instance fields
.field private callCount:J

.field private errorCount:J

.field private index:I

.field private name:Ljava/lang/String;

.field private times:[J

.field private totalTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historySize"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->name:Ljava/lang/String;

    .line 39
    new-array v0, p2, [J

    iput-object v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    .line 40
    return-void
.end method


# virtual methods
.method public declared-synchronized getAverageTime()J
    .locals 6

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->callCount:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 76
    .local v1, "stopIndex":I
    if-nez v1, :cond_0

    .line 77
    const-wide/16 v4, 0x0

    .line 85
    :goto_0
    monitor-exit p0

    return-wide v4

    .line 80
    :cond_0
    const-wide/16 v2, 0x0

    .line 81
    .local v2, "totalTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 82
    :try_start_1
    iget-object v4, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_1
    int-to-long v4, v1

    div-long v4, v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "i":I
    .end local v1    # "stopIndex":I
    .end local v2    # "totalTime":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getCallCount()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->callCount:J

    return-wide v0
.end method

.method public getErrorCount()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->errorCount:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->totalTime:J

    return-wide v0
.end method

.method increment(JZ)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "success"    # Z

    .prologue
    const-wide/16 v0, 0x1

    .line 43
    iget-wide v2, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->callCount:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->callCount:J

    .line 44
    iget-wide v2, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->errorCount:J

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    add-long/2addr v0, v2

    iput-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->errorCount:J

    .line 45
    iget-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->totalTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->totalTime:J

    .line 47
    iget-object v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    iget v1, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->index:I

    aput-wide p1, v0, v1

    .line 49
    iget v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->index:I

    iget-object v1, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->index:I

    .line 51
    :cond_1
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 90
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->callCount:J

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->errorCount:J

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->totalTime:J

    .line 93
    iget-object v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "calls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getCallCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errors="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getErrorCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getTotalTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",avgTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getAverageTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
