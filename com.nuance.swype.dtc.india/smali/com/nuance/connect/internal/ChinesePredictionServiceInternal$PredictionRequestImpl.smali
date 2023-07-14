.class Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionRequestImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PredictionRequestImpl"
.end annotation


# instance fields
.field private characterSetId:I

.field private languageId:I

.field private predictionData:[B

.field private predictionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionRequestImpl;->predictionId:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionRequestImpl;->languageId:I

    iput p3, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionRequestImpl;->characterSetId:I

    iput-object p4, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionRequestImpl;->predictionData:[B

    return-void
.end method


# virtual methods
.method public getCharacterSetId()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionRequestImpl;->characterSetId:I

    return v0
.end method

.method public getLanguageId()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionRequestImpl;->languageId:I

    return v0
.end method

.method public getPredictionData()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionRequestImpl;->predictionData:[B

    return-object v0
.end method

.method public getPredictionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionRequestImpl;->predictionId:Ljava/lang/String;

    return-object v0
.end method
