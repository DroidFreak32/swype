.class Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;
.super Ljava/lang/Object;
.source "ChineseCloudPrediction.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPredictionCancel(Ljava/lang/String;)V
    .registers 6
    .param p1, "predictionId"    # Ljava/lang/String;

    .prologue
    .line 136
    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "ChinesePrediction "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "ChinesePrediction onPredictionCancel id = "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$400(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$400(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 139
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$402(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    :cond_33
    return-void
.end method

.method public onPredictionFailure(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "predictionId"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 145
    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "ChinesePrediction "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "ChinesePrediction onPredictionFailure id = "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, " code = "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, " msg= "

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object p3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$400(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$400(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 148
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    # setter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$402(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    const/16 v1, 0x64

    # invokes: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->postChinesePredictionResult(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V
    invoke-static {v0, v4, v5, v1}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$300(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V

    .line 152
    :cond_50
    return-void
.end method

.method public onPredictionResult(Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;)V
    .registers 8
    .param p1, "result"    # Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 156
    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "ChinesePrediction "

    aput-object v2, v1, v5

    const-string/jumbo v2, "ChinesePrediction onPredictionResult id = "

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;->getPredictionId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$400(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$400(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;->getPredictionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->postChinesePredictionResult(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V
    invoke-static {v0, v4, p1, v4}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$300(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V

    .line 160
    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "cloud results when success."

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$500(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    :cond_53
    return-void
.end method

.method public onPredictionStatus(ILjava/lang/String;)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 169
    return-void
.end method
