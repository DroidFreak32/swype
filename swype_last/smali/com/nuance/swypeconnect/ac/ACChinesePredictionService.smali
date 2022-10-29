.class public interface abstract Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;,
        Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionRequest;,
        Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;,
        Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;
    }
.end annotation


# static fields
.field public static final MAX_IDLE_TIMEOUT:I = 0x3c

.field public static final MAX_PREDICTION_RESULTS:I = 0xa

.field public static final REASON_FAILED_HTTP:I = 0x0

.field public static final REASON_NETWORK_TIMEOUT:I = 0x4

.field public static final REASON_USER_CANCELED:I = 0x3


# virtual methods
.method public abstract cancelPrediction(Ljava/lang/String;)V
.end method

.method public abstract endSession()V
.end method

.method public abstract getIdleTimeout()I
.end method

.method public abstract getPredictionResults()I
.end method

.method public abstract logResultSelection(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract logResultSelection(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract logResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract logResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;)V
.end method

.method public abstract requestPrediction([B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract requestPrediction([BLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract setIdleTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract setPredictionResults(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract startSession(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;)V
.end method

.method public abstract unregisterCallbacks()V
.end method
