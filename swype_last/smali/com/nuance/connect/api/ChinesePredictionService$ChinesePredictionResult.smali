.class public interface abstract Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/ChinesePredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChinesePredictionResult"
.end annotation


# virtual methods
.method public abstract getPredictionCount()I
.end method

.method public abstract getPredictionId()Ljava/lang/String;
.end method

.method public abstract getPredictionRequest()Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;
.end method

.method public abstract getPredictions()[Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;
.end method

.method public abstract predictionTime()J
.end method
