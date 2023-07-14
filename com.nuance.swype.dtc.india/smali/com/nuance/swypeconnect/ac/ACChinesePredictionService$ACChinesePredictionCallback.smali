.class public interface abstract Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACChinesePredictionCallback"
.end annotation


# virtual methods
.method public abstract onPredictionCancel(Ljava/lang/String;)V
.end method

.method public abstract onPredictionFailure(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onPredictionResult(Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;)V
.end method

.method public abstract onPredictionStatus(ILjava/lang/String;)V
.end method
