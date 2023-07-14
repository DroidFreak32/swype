.class Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChinesePredictionLoggingTransaction"
.end annotation


# static fields
.field private static final PRIORITY:I = 0xa


# instance fields
.field protected final connectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

.field protected fromRowId:I

.field private responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

.field final synthetic this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Lcom/nuance/connect/comm/PersistantConnectionConfig;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-direct {p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    new-instance v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;-><init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    iput-object p2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->connectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-direct {p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->requestLogging()V

    return-void
.end method

.method static synthetic access$2502(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object p1
.end method

.method private requestLogging()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ChinesePredictionLoggingTransaction  - requestLogging()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$2300(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$2800(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->getPredictions(Ljava/lang/String;)Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;

    move-result-object v0

    iget v1, v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;->lastRowId:I

    iput v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->fromRowId:I

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;->loggingRequest:Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/nuance/connect/comm/Command;

    invoke-direct {v1}, Lcom/nuance/connect/comm/Command;-><init>()V

    const-string/jumbo v2, "CHINESEPREDICTION"

    iput-object v2, v1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string/jumbo v2, "logging"

    iput-object v2, v1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    iput v4, v1, Lcom/nuance/connect/comm/Command;->version:I

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->connectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-virtual {v2}, Lcom/nuance/connect/comm/PersistantConnectionConfig;->getURL()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    iput-boolean v3, v1, Lcom/nuance/connect/comm/Command;->handleIOExceptionInConnector:Z

    iput-boolean v4, v1, Lcom/nuance/connect/comm/Command;->hasBody:Z

    iput-boolean v3, v1, Lcom/nuance/connect/comm/Command;->requireSession:Z

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    iput-object v2, v1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    sget-object v2, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    iput-object v2, v1, Lcom/nuance/connect/comm/Command;->requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    iput-boolean v4, v1, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    sget-object v2, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    iput-object v2, v1, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v2, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    iput-object v2, v1, Lcom/nuance/connect/comm/Command;->dataResponse:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    iput v3, v1, Lcom/nuance/connect/comm/Command;->retryCount:I

    iget-object v0, v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;->loggingRequest:Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    invoke-virtual {v0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/nuance/connect/comm/Command;->bufferData:[B

    iput-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ChinesePredictionLoggingTransaction - cancel()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    :cond_0
    return-void
.end method

.method protected cleanupFailedTransaction()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "cleaning up failed transaction..."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ChinesePredictionLoggingTransaction - createDownloadFile()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ChinesePredictionLoggingTransaction-DISTINCT"

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object v0
.end method

.method public getPersistantConfig()Lcom/nuance/connect/comm/PersistantConnectionConfig;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->connectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public onEndProcessing()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method

.method public onTransactionOfflineQueued()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTransactionRejected(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ChinesePredictionLoggingTransaction - onTransactionRejected reason="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction;->onTransactionRejected(I)V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->cleanupFailedTransaction()V

    return-void
.end method

.method public requiresPersistantConnection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rollback()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ChinesePredictionLoggingTransaction - rollback()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->cleanupFailedTransaction()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method
