.class public Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChinesePredictionResultDataReturn"
.end annotation


# instance fields
.field public final lastRowId:I

.field public final loggingRequest:Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;


# direct methods
.method constructor <init>(ILcom/nuance/connect/proto/Prediction$LoggingRequestV1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;->lastRowId:I

    iput-object p2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;->loggingRequest:Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-void
.end method
