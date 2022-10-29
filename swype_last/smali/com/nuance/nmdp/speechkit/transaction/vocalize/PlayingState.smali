.class final Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;
.super Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransactionStateBase;
.source "PlayingState.java"


# instance fields
.field private _audioFinished:Z

.field private _commandFinished:Z


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V
    .registers 3
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V

    .line 16
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_commandFinished:Z

    .line 17
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_audioFinished:Z

    .line 18
    return-void
.end method


# virtual methods
.method public final audioError()V
    .registers 3

    .prologue
    .line 47
    const/4 v0, 0x4

    const-string/jumbo v1, "audioError"

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->error(ILjava/lang/String;)V

    .line 48
    return-void
.end method

.method public final audioStarted()V
    .registers 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->getListener()Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;->audioStarted(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 53
    return-void
.end method

.method public final audioStopped()V
    .registers 4

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_audioFinished:Z

    .line 58
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_commandFinished:Z

    if-eqz v0, :cond_13

    .line 60
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/vocalize/FinishedState;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/FinishedState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 62
    :cond_13
    return-void
.end method

.method public final cancel()V
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->error(I)V

    .line 43
    return-void
.end method

.method public final commandEvent(S)V
    .registers 3
    .param p1, "event"    # S

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->error(I)V

    .line 72
    return-void
.end method

.method public final createCommandFailed()V
    .registers 3

    .prologue
    .line 66
    const/4 v0, 0x4

    const-string/jumbo v1, "createCommandFailed"

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->error(ILjava/lang/String;)V

    .line 67
    return-void
.end method

.method public final enter()V
    .registers 6

    .prologue
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->createNmasResource()V

    .line 24
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->getCommandName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7530

    invoke-virtual {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->createPdxCommand(Ljava/lang/String;I)V

    .line 25
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->getAudioSink()Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->sendTTSParam(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;)V

    .line 26
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->endPdxCommand()V

    .line 27
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->startPlayer()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_34

    .line 33
    :goto_33
    return-void

    .line 28
    :catch_34
    move-exception v0

    .line 30
    .local v0, "tr":Ljava/lang/Throwable;
    const-string/jumbo v1, "Error starting PlayingState"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->error(I)V

    goto :goto_33
.end method

.method public final leave()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->stopPlayer()V

    .line 38
    return-void
.end method

.method public final queryError(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->error(ILjava/lang/String;)V

    .line 77
    return-void
.end method

.method public final queryResult(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
    .registers 5
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_commandFinished:Z

    .line 87
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_audioFinished:Z

    if-eqz v0, :cond_13

    .line 89
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/vocalize/FinishedState;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/FinishedState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 91
    :cond_13
    return-void
.end method

.method public final queryRetry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;->error(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
