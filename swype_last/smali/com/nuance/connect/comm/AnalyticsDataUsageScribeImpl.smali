.class Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;


# static fields
.field private static final CONNECT_COMMAND_REQUEST:Ljava/lang/String; = "C002"

.field private static final CONNECT_COMMAND_RESPONSE:Ljava/lang/String; = "C003"

.field private static final CONNECT_DATAPOINT_DATA:Ljava/lang/String; = "C001"

.field private static final CONNECT_DATAPOINT_DATA_CELLULAR_RX:Ljava/lang/String; = "CELLULAR_RX"

.field private static final CONNECT_DATAPOINT_DATA_CELLULAR_TX:Ljava/lang/String; = "CELLULAR_TX"


# instance fields
.field private lastRxBytes:J

.field private lastTxBytes:J

.field private trackNetworkUsageLength:I

.field private trackNetworkUsageStart:J


# direct methods
.method constructor <init>(Lcom/nuance/connect/comm/MessageSendingBus;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageLength:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageStart:J

    return-void
.end method

.method private commandToURL(Lcom/nuance/connect/comm/Command;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/nuance/connect/comm/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flush()V
    .registers 1

    return-void
.end method

.method public mark()V
    .registers 1

    return-void
.end method

.method public setTrackingInterval(I)V
    .registers 2

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public writeRequest(Lcom/nuance/connect/comm/Command;J)V
    .registers 4

    return-void
.end method

.method public writeResponse(Lcom/nuance/connect/comm/Command;J)V
    .registers 4

    return-void
.end method
