.class final Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;
.super Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;
.source "RecordingState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V
    .registers 2
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->error(I)V

    .line 43
    return-void
.end method

.method public final enter()V
    .registers 4

    .prologue
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->startCapturing()V

    .line 19
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->getListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-interface {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->recordingStarted(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 25
    :goto_e
    return-void

    .line 20
    :catch_f
    move-exception v0

    .line 22
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "Error starting RecordingState"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->error(I)V

    goto :goto_e
.end method

.method public final leave()V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->stopRecording()V

    .line 31
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->getListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->recordingStopped(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 32
    return-void
.end method

.method public final queryResult(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
    .registers 5
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->getResultParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v0

    .line 59
    .local v0, "parser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;->parse(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 61
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->getListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-interface {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->results(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 63
    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;->expectMore()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 71
    :cond_1b
    :goto_1b
    return-void

    .line 69
    :cond_1c
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->error(I)V

    goto :goto_1b
.end method

.method public final recordingError()V
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->error(I)V

    .line 54
    return-void
.end method

.method public final recordingStopped()V
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->playStopPrompt()V

    .line 48
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingState;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 49
    return-void
.end method

.method public final stop()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->stopRecording()V

    .line 38
    return-void
.end method
