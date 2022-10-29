.class public interface abstract Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACChinesePredictionRequest"
.end annotation


# virtual methods
.method public abstract getCharacterSetId()I
.end method

.method public abstract getLanguageId()I
.end method

.method public abstract getPredictionData()[B
.end method

.method public abstract getPredictionId()Ljava/lang/String;
.end method
