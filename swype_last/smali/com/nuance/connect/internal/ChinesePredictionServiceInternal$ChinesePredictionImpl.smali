.class Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChinesePredictionImpl"
.end annotation


# instance fields
.field private attributes:[I

.field private fullSpell:Ljava/lang/String;

.field private phrase:Ljava/lang/String;

.field private predictionId:Ljava/lang/String;

.field private spell:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;->predictionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;->phrase:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;->spell:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;->fullSpell:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;->attributes:[I

    return-void
.end method


# virtual methods
.method public getAttributes()[I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;->attributes:[I

    return-object v0
.end method

.method public getFullSpell()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;->fullSpell:Ljava/lang/String;

    return-object v0
.end method

.method public getPhrase()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;->phrase:Ljava/lang/String;

    return-object v0
.end method

.method public getPredictionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;->predictionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpell()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;->spell:Ljava/lang/String;

    return-object v0
.end method
