.class public Ltwitter4j/management/APIStatistics;
.super Ljava/lang/Object;
.source "APIStatistics.java"

# interfaces
.implements Ltwitter4j/management/APIStatisticsMBean;


# instance fields
.field private final API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

.field private final HISTORY_SIZE:I

.field private final METHOD_STATS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/management/InvocationStatisticsCalculator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "historySize"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ltwitter4j/management/InvocationStatisticsCalculator;

    const-string v1, "API"

    invoke-direct {v0, v1, p1}, Ltwitter4j/management/InvocationStatisticsCalculator;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    .line 38
    iput p1, p0, Ltwitter4j/management/APIStatistics;->HISTORY_SIZE:I

    .line 39
    return-void
.end method

.method private declared-synchronized getMethodStatistics(Ljava/lang/String;)Ltwitter4j/management/InvocationStatisticsCalculator;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/management/InvocationStatisticsCalculator;

    .line 55
    .local v0, "methodStats":Ltwitter4j/management/InvocationStatisticsCalculator;
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ltwitter4j/management/InvocationStatisticsCalculator;

    .end local v0    # "methodStats":Ltwitter4j/management/InvocationStatisticsCalculator;
    iget v1, p0, Ltwitter4j/management/APIStatistics;->HISTORY_SIZE:I

    invoke-direct {v0, p1, v1}, Ltwitter4j/management/InvocationStatisticsCalculator;-><init>(Ljava/lang/String;I)V

    .line 57
    .restart local v0    # "methodStats":Ltwitter4j/management/InvocationStatisticsCalculator;
    iget-object v1, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-object v0

    .line 53
    .end local v0    # "methodStats":Ltwitter4j/management/InvocationStatisticsCalculator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getAverageTime()J
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getAverageTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallCount()J
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getCallCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getErrorCount()J
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getErrorCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getInvocationStatistics()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Ltwitter4j/management/InvocationStatistics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMethodLevelSummariesAsString()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v2, "summariesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 101
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/management/InvocationStatisticsCalculator;

    .line 102
    .local v1, "methodStats":Ltwitter4j/management/InvocationStatisticsCalculator;
    invoke-virtual {v1}, Ltwitter4j/management/InvocationStatisticsCalculator;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ltwitter4j/management/InvocationStatisticsCalculator;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "methodStats":Ltwitter4j/management/InvocationStatisticsCalculator;
    .end local v2    # "summariesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 105
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "summariesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized getMethodLevelSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalTime()J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getTotalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized methodCalled(Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "success"    # Z

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ltwitter4j/management/APIStatistics;->getMethodStatistics(Ljava/lang/String;)Ltwitter4j/management/InvocationStatisticsCalculator;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ltwitter4j/management/InvocationStatisticsCalculator;->increment(JZ)V

    .line 49
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0, p2, p3, p4}, Ltwitter4j/management/InvocationStatisticsCalculator;->increment(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->reset()V

    .line 69
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
