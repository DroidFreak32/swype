.class Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPredictionCancel(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$000(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "ChinesePredictionCallback.onPredictionCancel() predictionId="

    invoke-interface {v0, v2, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3, p1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;->onPredictionCancel(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPredictionFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$000(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ChinesePredictionCallback.onPredictionFailure() predictionId="

    const-string/jumbo v3, " code="

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " description="

    move-object v2, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v1, v7, [Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    array-length v2, v0

    move v1, v7

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3, p1, p2, p3}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;->onPredictionFailure(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPredictionResult(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$000(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "ChinesePredictionCallback.onPredictionResult()"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;

    invoke-direct {v2, p1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;-><init>(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v3, v1, [Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    invoke-virtual {v0, v3}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    invoke-interface {v4, v2}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;->onPredictionResult(Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPredictionStatus(ILjava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$000(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "ChinesePredictionCallback.onPredictionStatus() code="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, " description="

    invoke-interface {v0, v2, v3, v4, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3, p1, p2}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;->onPredictionStatus(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
