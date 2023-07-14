.class public interface abstract Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACChinesePrediction"
.end annotation


# virtual methods
.method public abstract getAttributes()[I
.end method

.method public abstract getFullSpell()Ljava/lang/String;
.end method

.method public abstract getPhrase()Ljava/lang/String;
.end method

.method public abstract getPredictionId()Ljava/lang/String;
.end method

.method public abstract getSpell()Ljava/lang/String;
.end method
