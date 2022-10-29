.class Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;
.super Ljava/lang/Object;


# instance fields
.field final attribute:[I

.field final fullSpell:Ljava/lang/String;

.field final phrase:Ljava/lang/String;

.field final predictionId:Ljava/lang/String;

.field final resultType:I

.field final spell:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->predictionId:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->resultType:I

    iput-object p3, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->phrase:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->spell:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->fullSpell:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->attribute:[I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChinesePredictionDataResultRow id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->predictionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " resultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->resultType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " phrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->phrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " spell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->spell:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " fullSpell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->fullSpell:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " attribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->attribute:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
