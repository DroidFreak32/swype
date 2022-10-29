.class public interface abstract Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACChinesePredictionResult"
.end annotation


# virtual methods
.method public abstract getPredictionCount()I
.end method

.method public abstract getPredictionId()Ljava/lang/String;
.end method

.method public abstract getPredictionRequest()Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionRequest;
.end method

.method public abstract getPredictions()[Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;
.end method

.method public abstract predictionTime()J
.end method
