.class Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ACChinesePredictionImpl"
.end annotation


# instance fields
.field private chinesePrediction:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;->chinesePrediction:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    return-void
.end method


# virtual methods
.method public getAttributes()[I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;->chinesePrediction:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getAttributes()[I

    move-result-object v0

    return-object v0
.end method

.method public getFullSpell()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;->chinesePrediction:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getFullSpell()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;->chinesePrediction:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPredictionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;->chinesePrediction:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPredictionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpell()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;->chinesePrediction:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getSpell()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ACChinesePrediction["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;->getPredictionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;->getPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionImpl;->getSpell()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
