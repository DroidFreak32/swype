.class Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$1;
.super Ljava/lang/Object;
.source "ChineseCloudPrediction.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 38
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 41
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_96

    .line 67
    :goto_9
    return v3

    .line 43
    :pswitch_a
    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "begin request Chinese Prediction."

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mRequestCldInputData:[B
    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$100(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)[B

    move-result-object v2

    # invokes: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->requestChinesePrediction([B)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$200(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;[B)Ljava/lang/String;

    :cond_23
    :goto_23
    move v3, v4

    .line 67
    goto :goto_9

    .line 47
    :pswitch_25
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    iput-wide v10, v1, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->startRequestPredictionTime:J

    .line 48
    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "cloud timeout..hide prediction view"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 49
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    const/4 v2, 0x0

    const/16 v3, 0x64

    # invokes: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->postChinesePredictionResult(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V
    invoke-static {v1, v4, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$300(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V

    goto :goto_23

    .line 52
    :pswitch_40
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->getChinesePredictionListener()Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$ChinesePredictionListener;

    move-result-object v0

    .line 53
    .local v0, "chinesePredictionListener":Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$ChinesePredictionListener;
    if-eqz v0, :cond_23

    .line 54
    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "begin to show cloud result."

    aput-object v5, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 55
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_93

    move v2, v3

    :goto_5b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    invoke-interface {v0, v2, v1}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$ChinesePredictionListener;->showPredictionResult(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;)V

    .line 56
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    iget-wide v6, v1, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->startRequestPredictionTime:J

    cmp-long v1, v6, v10

    if-lez v1, :cond_23

    .line 57
    # getter for: Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "Timing from request Prediction to show cloud result:"

    aput-object v5, v2, v4

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    iget-wide v8, v5, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->startRequestPredictionTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v5, " ms"

    aput-object v5, v2, v3

    .line 57
    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    iput-wide v10, v1, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->startRequestPredictionTime:J

    goto :goto_23

    :cond_93
    move v2, v4

    .line 55
    goto :goto_5b

    .line 41
    nop

    :pswitch_data_96
    .packed-switch 0x66
        :pswitch_40
        :pswitch_a
        :pswitch_25
    .end packed-switch
.end method
