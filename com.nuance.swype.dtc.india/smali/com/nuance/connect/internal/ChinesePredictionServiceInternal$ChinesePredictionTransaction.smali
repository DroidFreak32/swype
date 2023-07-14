.class Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChinesePredictionTransaction"
.end annotation


# static fields
.field private static final PRIORITY:I = 0xa


# instance fields
.field private final applicationName:Ljava/lang/String;

.field protected final characterSetId:I

.field protected final connectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

.field protected coreData:[B

.field protected final deviceId:Ljava/lang/String;

.field protected final languageId:I

.field log:Lcom/nuance/connect/util/Logger$Log;

.field protected predictionCloudEndMicro:J

.field protected predictionCloudSpent:J

.field protected predictionCloudStartMicro:J

.field private predictionRequest:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;

.field protected final predictionRequestId:Ljava/lang/String;

.field private predictionRequestMaxCount:I

.field protected final predictionRequestProtoBuffer:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

.field private predictionResult:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;

.field protected predictionSpent:J

.field private predictionStringBuilder:Ljava/lang/StringBuilder;

.field protected predictionTimeEndMicro:J

.field protected predictionTimeStartMicro:J

.field private responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

.field final synthetic this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;IILjava/lang/String;[BLcom/nuance/connect/comm/PersistantConnectionConfig;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionTimeStartMicro:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionTimeEndMicro:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudStartMicro:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudEndMicro:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionSpent:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudSpent:J

    sget-object v2, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionStringBuilder:Ljava/lang/StringBuilder;

    new-instance v2, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;-><init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->languageId:I

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->deviceId:Ljava/lang/String;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->characterSetId:I

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->coreData:[B

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->connectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionTimeStartMicro:J

    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestMaxCount:I

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->applicationName:Ljava/lang/String;

    new-instance v2, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionRequestImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->languageId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->characterSetId:I

    move-object/from16 v0, p6

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionRequestImpl;-><init>(Ljava/lang/String;II[B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequest:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;->setDeviceID(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestMaxCount:I

    invoke-virtual {v2, v3}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;->setNumPredictionsRequired(I)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->coreData:[B

    invoke-static {v3}, Lcom/a/a/c;->a([B)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;->setPredictionData(Lcom/a/a/c;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;->setRequestTimestamp(J)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;->setTransactionID(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$2100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;->setXt9Version(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestProtoBuffer:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "PredictionTransaction id="

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const-string/jumbo v5, " - "

    const-string/jumbo v6, " deviceId="

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->deviceId:Ljava/lang/String;

    const-string/jumbo v8, " numPredictions="

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestProtoBuffer:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    invoke-virtual {v9}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getNumPredictionsRequired()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, " requestTimestamp="

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestProtoBuffer:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    invoke-virtual {v11}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getRequestTimestamp()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string/jumbo v12, " transactionId="

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestProtoBuffer:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    invoke-virtual {v13}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getTransactionID()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, " data="

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestProtoBuffer:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    invoke-virtual {v15}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getPredictionData()Lcom/a/a/c;

    move-result-object v15

    invoke-interface/range {v2 .. v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->requestPrediction()V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Lcom/nuance/connect/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Lcom/nuance/connect/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionResult:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;)Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionResult:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequest:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestMaxCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionStringBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->calculateEndTime()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object p1
.end method

.method static synthetic access$900(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Lcom/nuance/connect/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object v0
.end method

.method private calculateEndTime()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudEndMicro:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudEndMicro:J

    :cond_0
    iget-wide v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionTimeEndMicro:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionTimeEndMicro:J

    :cond_1
    iget-wide v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionTimeEndMicro:J

    iget-wide v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionTimeStartMicro:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionSpent:J

    iget-wide v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudEndMicro:J

    iget-wide v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudStartMicro:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudSpent:J

    return-void
.end method

.method private requestPrediction()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "PredictionTransaction id="

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const-string/jumbo v3, " - requestPrediction()"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/comm/Command;

    invoke-direct {v0}, Lcom/nuance/connect/comm/Command;-><init>()V

    const-string/jumbo v1, "CHINESEPREDICTION"

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string/jumbo v1, "PREDICTION"

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    iput v5, v0, Lcom/nuance/connect/comm/Command;->version:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->handleIOExceptionInConnector:Z

    iput-boolean v5, v0, Lcom/nuance/connect/comm/Command;->hasBody:Z

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    iput-boolean v5, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    sget-object v1, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v1, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->dataResponse:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    iput v4, v0, Lcom/nuance/connect/comm/Command;->retryCount:I

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestProtoBuffer:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    invoke-virtual {v1}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->bufferData:[B

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$2200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "PredictionTransaction id="

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const-string/jumbo v3, " - requestPrediction() failing because session is not active"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "PredictionTransaction id="

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const-string/jumbo v3, " - cancel()"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    :cond_0
    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "PredictionTransaction id="

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const-string/jumbo v3, " - createDownloadFile()"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CCP-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$2200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudStartMicro:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudStartMicro:J

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    goto :goto_0
.end method

.method public getPersistantConfig()Lcom/nuance/connect/comm/PersistantConnectionConfig;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->connectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public onEndProcessing()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method

.method public onTransactionOfflineQueued()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTransactionRejected(I)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "PredictionTransaction id="

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const-string/jumbo v3, " - onTransactionRejected reason="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction;->onTransactionRejected(I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const/16 v2, 0x8

    const-string/jumbo v3, "Unable to handle prediction request as connection is not currently active."

    iget-object v4, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->applicationName:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-static {v5}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/connect/internal/UserSettings;->getLocationCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$700(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requiresPersistantConnection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requiresSessionId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rollback()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "PredictionTransaction id="

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const-string/jumbo v3, " - rollback()"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const/4 v2, 0x5

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->applicationName:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-static {v5}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/connect/internal/UserSettings;->getLocationCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$700(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
