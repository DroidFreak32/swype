.class public interface abstract Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/ChinesePredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChinesePredictionCallback"
.end annotation


# virtual methods
.method public abstract onPredictionCancel(Ljava/lang/String;)V
.end method

.method public abstract onPredictionFailure(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onPredictionResult(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;)V
.end method

.method public abstract onPredictionStatus(ILjava/lang/String;)V
.end method
