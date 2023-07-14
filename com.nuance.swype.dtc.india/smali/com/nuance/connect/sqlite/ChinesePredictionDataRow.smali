.class Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;
.super Ljava/lang/Object;


# instance fields
.field final applicationName:Ljava/lang/String;

.field final ccpsVersion:Ljava/lang/String;

.field final cloudTime:J

.field final countryCode:Ljava/lang/String;

.field final predictionId:Ljava/lang/String;

.field final resultType:I

.field final totalTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->predictionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->ccpsVersion:Ljava/lang/String;

    iput-wide p3, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->totalTime:J

    iput-wide p5, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->cloudTime:J

    iput p7, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->resultType:I

    iput-object p8, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->applicationName:Ljava/lang/String;

    iput-object p9, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->countryCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChinesePredictionDataRow id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->predictionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->ccpsVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " totalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->totalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " cloudTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->cloudTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " resultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->resultType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " applicationName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->applicationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
