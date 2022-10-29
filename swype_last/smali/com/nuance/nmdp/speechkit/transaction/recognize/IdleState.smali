.class final Lcom/nuance/nmdp/speechkit/transaction/recognize/IdleState;
.super Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransactionStateBase;
.source "IdleState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V
    .registers 2
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final enter()V
    .registers 1

    .prologue
    .line 21
    return-void
.end method

.method public final start()V
    .registers 4

    .prologue
    .line 13
    const-string/jumbo v0, "Starting recognize transaction"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->supportsRecording()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    :goto_17
    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 17
    return-void

    .line 14
    :cond_1b
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    goto :goto_17
.end method
