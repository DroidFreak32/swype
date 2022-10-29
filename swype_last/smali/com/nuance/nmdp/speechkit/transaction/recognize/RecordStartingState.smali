.class final Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;
.super Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;
.source "RecordStartingState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V
    .registers 2
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    .line 11
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->error(I)V

    .line 38
    return-void
.end method

.method public final enter()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->createNmasResource()V

    .line 17
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->getCommandName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->createPdxCommand(Ljava/lang/String;I)V

    .line 18
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->sendParams()V

    .line 19
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->sendAudioParam()Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

    move-result-object v6

    .line 20
    .local v6, "param":Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0, v6}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->createRecorder(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;)V

    .line 21
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->startRecording()V

    .line 22
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->endPdxCommand()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2d} :catch_2e

    .line 28
    .end local v6    # "param":Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;
    :goto_2d
    return-void

    .line 23
    :catch_2e
    move-exception v7

    .line 25
    .local v7, "tr":Ljava/lang/Throwable;
    const-string/jumbo v0, "Error starting RecordStartingState"

    invoke-static {p0, v0, v7}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/ErrorState;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ErrorState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    goto :goto_2d
.end method

.method public final recordingError()V
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->error(I)V

    .line 55
    return-void
.end method

.method public final recordingStarted()V
    .registers 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 45
    return-void
.end method

.method public final recordingStopped()V
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->error(I)V

    .line 50
    return-void
.end method

.method public final stop()V
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordStartingState;->error(I)V

    .line 33
    return-void
.end method
