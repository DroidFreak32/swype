.class Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/ReportingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendDataTransaction"
.end annotation


# instance fields
.field private commandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/nuance/connect/comm/Command;",
            ">;"
        }
    .end annotation
.end field

.field private individualCount:I

.field private lastAggregateTime:J

.field private lastIndividualTime:J

.field private final responseCallback:Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/ReportingManager;

.field private final trackingResponseCallback:Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;

.field private transmittedCount:I


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/ReportingManager;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-direct {p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->individualCount:I

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->transmittedCount:I

    iput-wide v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->lastAggregateTime:J

    iput-wide v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->lastIndividualTime:J

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->commandQueue:Ljava/util/Queue;

    new-instance v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;-><init>(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->trackingResponseCallback:Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;

    new-instance v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;-><init>(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->responseCallback:Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;

    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    invoke-static {p1}, Lcom/nuance/connect/service/manager/ReportingManager;->access$700(Lcom/nuance/connect/service/manager/ReportingManager;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->commandQueue:Ljava/util/Queue;

    const-string/jumbo v1, "tracking"

    sget-object v2, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->trackingResponseCallback:Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;

    invoke-virtual {p1, v1, v2, v3}, Lcom/nuance/connect/service/manager/ReportingManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Lcom/nuance/connect/comm/ResponseCallback;)Lcom/nuance/connect/comm/Command;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->lastAggregateTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->individualCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->lastIndividualTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;Lcom/nuance/connect/comm/Command;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->handleFailure(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->commandQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->sendReports()V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->transmittedCount:I

    return v0
.end method

.method static synthetic access$912(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;I)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->transmittedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->transmittedCount:I

    return v0
.end method

.method private handleFailure(Lcom/nuance/connect/comm/Command;)V
    .locals 4

    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ReportingManager.handleFailure"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_REPORTING_TRANSMISSION_FAILURE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "aggregate"

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$1100(Lcom/nuance/connect/service/manager/ReportingManager;)Lcom/nuance/connect/sqlite/ReportingDataSource;

    move-result-object v0

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->lastAggregateTime:J

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearAggregate(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const-string/jumbo v0, "individual"

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$1100(Lcom/nuance/connect/service/manager/ReportingManager;)Lcom/nuance/connect/sqlite/ReportingDataSource;

    move-result-object v0

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->lastIndividualTime:J

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearIndividual(J)V

    goto :goto_0
.end method

.method private sendReports()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$1100(Lcom/nuance/connect/service/manager/ReportingManager;)Lcom/nuance/connect/sqlite/ReportingDataSource;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "dataSource is not available"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$1500(Lcom/nuance/connect/service/manager/ReportingManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$100(Lcom/nuance/connect/service/manager/ReportingManager;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$400(Lcom/nuance/connect/service/manager/ReportingManager;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$400(Lcom/nuance/connect/service/manager/ReportingManager;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/ReportingManager;->access$400(Lcom/nuance/connect/service/manager/ReportingManager;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->lastAggregateTime:J

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$1100(Lcom/nuance/connect/service/manager/ReportingManager;)Lcom/nuance/connect/sqlite/ReportingDataSource;

    move-result-object v0

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->lastAggregateTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getAggregatePoints([Ljava/lang/String;J)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string/jumbo v3, "has aggregate data points to send"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "61"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    const-string/jumbo v3, "aggregate"

    sget-object v4, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->responseCallback:Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/nuance/connect/service/manager/ReportingManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;Lcom/nuance/connect/comm/ResponseCallback;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iput-boolean v6, v0, Lcom/nuance/connect/comm/Command;->handleIOExceptionInConnector:Z

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->commandQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$1100(Lcom/nuance/connect/service/manager/ReportingManager;)Lcom/nuance/connect/sqlite/ReportingDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getLastIndividualPoint()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->lastIndividualTime:J

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$1100(Lcom/nuance/connect/service/manager/ReportingManager;)Lcom/nuance/connect/sqlite/ReportingDataSource;

    move-result-object v0

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->lastIndividualTime:J

    invoke-static {}, Lcom/nuance/connect/service/security/RequestKey;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    iget-object v5, v5, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/connect/service/ConnectClient;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getIndividualPointsFile([Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "has individual data points to send"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    const-string/jumbo v2, "individual"

    sget-object v3, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->responseCallback:Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;

    invoke-virtual {v0, v2, v3, v4}, Lcom/nuance/connect/service/manager/ReportingManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Lcom/nuance/connect/comm/ResponseCallback;)Lcom/nuance/connect/comm/Command;

    move-result-object v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    iput-boolean v6, v2, Lcom/nuance/connect/comm/Command;->handleIOExceptionInConnector:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->individualCount:I

    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "individualCount: "

    iget v3, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->individualCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, " file location: "

    iget-object v2, v2, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public onEndProcessing()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/ReportingManager;->finishTransaction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$1500(Lcom/nuance/connect/service/manager/ReportingManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$100(Lcom/nuance/connect/service/manager/ReportingManager;)V

    return-void
.end method

.method public rollback()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public wifiOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
