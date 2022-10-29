.class Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionRequestImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ACChinesePredictionRequestImpl"
.end annotation


# instance fields
.field private request:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;


# direct methods
.method constructor <init>(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionRequestImpl;->request:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;

    return-void
.end method


# virtual methods
.method public getCharacterSetId()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionRequestImpl;->request:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;->getCharacterSetId()I

    move-result v0

    return v0
.end method

.method public getLanguageId()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionRequestImpl;->request:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;->getLanguageId()I

    move-result v0

    return v0
.end method

.method public getPredictionData()[B
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionRequestImpl;->request:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;->getPredictionData()[B

    move-result-object v0

    return-object v0
.end method

.method public getPredictionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionRequestImpl;->request:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;

    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;->getPredictionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
