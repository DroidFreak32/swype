.class public interface abstract Lcom/nuance/connect/proto/Prediction$PredictionResponseV1OrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/proto/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PredictionResponseV1OrBuilder"
.end annotation


# virtual methods
.method public abstract getCoreTime()I
.end method

.method public abstract getPredictionResult(I)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
.end method

.method public abstract getPredictionResultCount()I
.end method

.method public abstract getPredictionResultList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionResultV1;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimeSpent()I
.end method

.method public abstract getTransactionID()Ljava/lang/String;
.end method

.method public abstract getTransactionIDBytes()Lcom/a/a/c;
.end method

.method public abstract hasCoreTime()Z
.end method

.method public abstract hasTimeSpent()Z
.end method

.method public abstract hasTransactionID()Z
.end method
