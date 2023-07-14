.class public Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;
.super Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;
.source "WaitingWithoutRecordingState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    .line 15
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->error(I)V

    .line 35
    return-void
.end method

.method public enter()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->createNmasResource()V

    .line 21
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->getCommandName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->createPdxCommand(Ljava/lang/String;I)V

    .line 22
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->sendParams()V

    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->endPdxCommand()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v6

    .line 27
    .local v6, "tr":Ljava/lang/Throwable;
    const-string/jumbo v0, "Error starting WaitingWithoutRecordingState"

    invoke-static {p0, v0, v6}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/ErrorState;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ErrorState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    goto :goto_0
.end method

.method public bridge synthetic promptError()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;->promptError()V

    return-void
.end method

.method public bridge synthetic promptStopped()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;->promptStopped()V

    return-void
.end method

.method public queryResult(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
    .locals 4
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->getResultParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v0

    .line 45
    .local v0, "parser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;->parse(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->getListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-interface {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->results(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 49
    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;->expectMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    new-instance v2, Lcom/nuance/nmdp/speechkit/transaction/recognize/FinishedState;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-direct {v2, v3}, Lcom/nuance/nmdp/speechkit/transaction/recognize/FinishedState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->error(I)V

    goto :goto_0
.end method

.method public recordingError()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingWithoutRecordingState;->error(I)V

    .line 40
    return-void
.end method

.method public bridge synthetic recordingSignalEnergy(F)V
    .locals 0
    .param p1, "x0"    # F

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;->recordingSignalEnergy(F)V

    return-void
.end method

.method public bridge synthetic recordingStarted()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;->recordingStarted()V

    return-void
.end method

.method public bridge synthetic recordingStopped()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;->recordingStopped()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;->stop()V

    return-void
.end method
