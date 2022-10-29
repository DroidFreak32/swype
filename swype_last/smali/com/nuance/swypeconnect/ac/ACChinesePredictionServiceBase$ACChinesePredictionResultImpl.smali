.class Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ACChinesePredictionResultImpl"
.end annotation


# instance fields
.field acChinesePredictions:[Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;

.field private chinesePredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;


# direct methods
.method constructor <init>(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;->chinesePredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;

    invoke-interface {p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;->getPredictionCount()I

    move-result v1

    new-array v1, v1, [Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;->acChinesePredictions:[Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;

    invoke-interface {p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;->getPredictions()[Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_14
    if-ge v0, v3, :cond_26

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;->acChinesePredictions:[Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;

    new-instance v6, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;

    invoke-direct {v6, v4}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;-><init>(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)V

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_26
    return-void
.end method


# virtual methods
.method public getPredictionCount()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;->chinesePredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;->getPredictionCount()I

    move-result v0

    return v0
.end method

.method public getPredictionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;->chinesePredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;->getPredictionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPredictionRequest()Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;->getPredictionRequest()Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPredictionRequest()Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionRequest;
    .registers 3

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionRequestImpl;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;->chinesePredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;

    invoke-interface {v1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;->getPredictionRequest()Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionRequestImpl;-><init>(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;)V

    return-object v0
.end method

.method public bridge synthetic getPredictions()[Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;->getPredictions()[Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;

    move-result-object v0

    return-object v0
.end method

.method public getPredictions()[Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;->acChinesePredictions:[Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;

    return-object v0
.end method

.method public predictionTime()J
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;->chinesePredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;->predictionTime()J

    move-result-wide v0

    return-wide v0
.end method
