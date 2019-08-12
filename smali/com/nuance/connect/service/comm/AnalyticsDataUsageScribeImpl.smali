.class Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;


# static fields
.field private static final CONNECT_COMMAND_REQUEST:Ljava/lang/String; = "C002"

.field private static final CONNECT_COMMAND_RESPONSE:Ljava/lang/String; = "C003"

.field private static final CONNECT_DATAPOINT_DATA:Ljava/lang/String; = "C001"

.field private static final CONNECT_DATAPOINT_DATA_CELLULAR_RX:Ljava/lang/String; = "CELLULAR_RX"

.field private static final CONNECT_DATAPOINT_DATA_CELLULAR_TX:Ljava/lang/String; = "CELLULAR_TX"


# instance fields
.field private final dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

.field private lastRxBytes:J

.field private lastTxBytes:J

.field private trackNetworkUsageLength:I

.field private trackNetworkUsageStart:J


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageLength:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageStart:J

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-direct {v0, p1}, Lcom/nuance/connect/sqlite/ReportingDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {p0}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->start()V

    return-void
.end method

.method private commandToURL(Lcom/nuance/connect/service/comm/Command;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/nuance/connect/service/comm/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 14

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/connect/compat/TrafficStatsCompat;->getUidRxBytes(I)J

    move-result-wide v12

    iget-object v1, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    const-string v2, "C001"

    const-string v3, "CELLULAR_RX"

    iget-wide v4, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->lastRxBytes:J

    sub-long v4, v12, v4

    long-to-double v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual/range {v1 .. v10}, Lcom/nuance/connect/sqlite/ReportingDataSource;->createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V

    iput-wide v12, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->lastRxBytes:J

    invoke-static {v0}, Lcom/nuance/connect/compat/TrafficStatsCompat;->getUidTxBytes(I)J

    move-result-wide v12

    iget-object v1, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    const-string v2, "C001"

    const-string v3, "CELLULAR_TX"

    iget-wide v4, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->lastTxBytes:J

    sub-long v4, v12, v4

    long-to-double v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual/range {v1 .. v10}, Lcom/nuance/connect/sqlite/ReportingDataSource;->createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V

    iput-wide v12, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->lastTxBytes:J

    return-void
.end method

.method public mark()V
    .locals 4

    iget v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageStart:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageStart:J

    :cond_0
    iget v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageLength:I

    iget-wide v2, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageStart:J

    invoke-static {v0, v2, v3}, Lcom/nuance/connect/util/TimeConversion;->convertHoursToTimeStamp(IJ)J

    move-result-wide v0

    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->flush()V

    :cond_1
    return-void
.end method

.method public setTrackingInterval(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageLength:I

    return-void
.end method

.method public start()V
    .locals 4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/connect/compat/TrafficStatsCompat;->getUidRxBytes(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->lastRxBytes:J

    invoke-static {v0}, Lcom/nuance/connect/compat/TrafficStatsCompat;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->lastTxBytes:J

    return-void
.end method

.method public writeRequest(Lcom/nuance/connect/service/comm/Command;J)V
    .locals 12

    iget-object v1, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    const-string v2, "C002"

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->commandToURL(Lcom/nuance/connect/service/comm/Command;)Ljava/lang/String;

    move-result-object v3

    long-to-double v4, p2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual/range {v1 .. v10}, Lcom/nuance/connect/sqlite/ReportingDataSource;->createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V

    return-void
.end method

.method public writeResponse(Lcom/nuance/connect/service/comm/Command;J)V
    .locals 12

    iget-object v1, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    const-string v2, "C003"

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->commandToURL(Lcom/nuance/connect/service/comm/Command;)Ljava/lang/String;

    move-result-object v3

    long-to-double v4, p2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual/range {v1 .. v10}, Lcom/nuance/connect/sqlite/ReportingDataSource;->createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V

    return-void
.end method
