.class public Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;
.super Lcom/nuance/swypeconnect/ac/ACService;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;,
        Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;,
        Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionRequestImpl;
    }
.end annotation


# instance fields
.field private final listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private manager:Lcom/nuance/swypeconnect/ac/ACManager;

.field private predictionCallback:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;

.field private predictionService:Lcom/nuance/connect/api/ChinesePredictionService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;-><init>(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionCallback:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    return-object v0
.end method


# virtual methods
.method public cancelPrediction(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ChinesePredictionService;->cancelPrediction(Ljava/lang/String;)V

    return-void
.end method

.method dependenciesMet()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/nuance/swypeconnect/ac/ACManager;->getCoreVersion(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Attempting to use Chinese Prediction Service without a Chinese core enabled."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0
.end method

.method public endSession()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->CCPS:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService;->endSession()V

    return-void
.end method

.method public getIdleTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService;->getIdleTimeout()I

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "CHINESE_CLOUD_PREDICTION"

    return-object v0
.end method

.method public getPredictionResults()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService;->getPredictionResults()I

    move-result v0

    return v0
.end method

.method protected init(Lcom/nuance/connect/api/ChinesePredictionService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 1

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionCallback:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;

    invoke-interface {p1, v0}, Lcom/nuance/connect/api/ChinesePredictionService;->registerCallback(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;)V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    return-void
.end method

.method public logResultSelection(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(I)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ChinesePredictionService;->logResultSelection(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x80

    const-string/jumbo v2, "Prediction Request on invalid prediction service"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public logResultSelection(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(I)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/api/ChinesePredictionService;->logResultSelection(Ljava/lang/String;Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x80

    const-string/jumbo v2, "Prediction Request on invalid prediction service"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public logResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(I)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/api/ChinesePredictionService;->logResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x80

    const-string/jumbo v2, "Prediction Request on invalid prediction service"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public logResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(I)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/api/ChinesePredictionService;->logResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x80

    const-string/jumbo v2, "Prediction Request on invalid prediction service"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestPrediction([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->requestPrediction([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestPrediction([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(I)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/api/ChinesePredictionService;->requestPrediction([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x80

    const-string/jumbo v2, "Prediction Request when session is not started"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method requiresDocument(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIdleTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    if-lez p1, :cond_0

    const/16 v0, 0x3c

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "Idle Timeout cannot be less then zero or more then ACChinesePredictionService.MAX_IDLE_TIMEOUT"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ChinesePredictionService;->setIdleTimeout(I)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public setPredictionResults(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "Prediction Results cannot be less then zero or more then ACChinesePredictionService.MAX_PREDICTION_RESULTS"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ChinesePredictionService;->setPredictionResults(I)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->unregisterCallbacks()V

    return-void
.end method

.method start()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    return-void
.end method

.method public startSession(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    if-gtz p1, :cond_0

    if-gez p2, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "Both languageId and charactersetId must be proper values"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->predictionService:Lcom/nuance/connect/api/ChinesePredictionService;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/api/ChinesePredictionService;->startSession(II)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getReasonCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
