.class public interface abstract Lcom/nuance/connect/api/ChinesePredictionService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;,
        Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;,
        Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;,
        Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;
    }
.end annotation


# static fields
.field public static final MAX_IDLE_TIMEOUT:I = 0x3c

.field public static final MAX_PREDICTION_RESULTS:I = 0xa


# virtual methods
.method public abstract cancelPrediction(Ljava/lang/String;)V
.end method

.method public abstract endSession()V
.end method

.method public abstract getIdleTimeout()I
.end method

.method public abstract getPredictionResults()I
.end method

.method public abstract isSessionActive()Z
.end method

.method public abstract logResultSelection(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract logResultSelection(Ljava/lang/String;Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract logResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract logResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;)V
.end method

.method public abstract requestPrediction([B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract requestPrediction([BLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract setIdleTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract setPredictionResults(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract startSession(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;)V
.end method

.method public abstract unregisterCallbacks()V
.end method
