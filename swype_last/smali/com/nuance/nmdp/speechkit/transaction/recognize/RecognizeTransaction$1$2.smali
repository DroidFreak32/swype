.class Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$2;
.super Ljava/lang/Object;
.source "RecognizeTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;->stopped(Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;I)V
    .registers 3

    .prologue
    .line 196
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$2;->this$1:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;

    iput p2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 200
    iget v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$2;->val$reason:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    .line 201
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$2;->this$1:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    const-string/jumbo v1, "Recorder error"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$2;->this$1:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    # invokes: Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->currentState()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->access$100(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;->recordingError()V

    .line 206
    :goto_1a
    return-void

    .line 204
    :cond_1b
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$2;->this$1:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    # invokes: Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->currentState()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->access$100(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;->recordingStopped()V

    goto :goto_1a
.end method
