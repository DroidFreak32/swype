.class final Lcom/nuance/connect/proto/Prediction$PredictionResultV1$1;
.super Lcom/a/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b",
        "<",
        "Lcom/nuance/connect/proto/Prediction$PredictionResultV1;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final parsePartialFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    new-instance v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;-><init>(Lcom/a/a/d;Lcom/a/a/f;Lcom/nuance/connect/proto/Prediction$1;)V

    return-object v0
.end method

.method public final bridge synthetic parsePartialFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$1;->parsePartialFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    return-object v0
.end method
