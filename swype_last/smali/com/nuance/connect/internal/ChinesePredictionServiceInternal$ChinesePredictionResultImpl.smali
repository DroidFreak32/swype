.class Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChinesePredictionResultImpl"
.end annotation


# instance fields
.field private predictionId:Ljava/lang/String;

.field private predictionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;",
            ">;"
        }
    .end annotation
.end field

.field private predictionTimeMicro:Ljava/lang/Long;

.field private request:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->predictionList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->predictionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->request:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;

    return-void
.end method


# virtual methods
.method public addPrediction(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->predictionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPredictionCount()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->predictionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPredictionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->predictionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPredictionRequest()Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->request:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;

    return-object v0
.end method

.method public getPredictions()[Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->predictionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->predictionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    return-object v0
.end method

.method public predictionTime()J
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->predictionTimeMicro:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setPredictionTime(J)V
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->predictionTimeMicro:Ljava/lang/Long;

    return-void
.end method
