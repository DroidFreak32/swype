.class final Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingState;
.super Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;
.source "WaitingState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingState;->error(I)V

    .line 22
    return-void
.end method

.method public final enter()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public final queryResult(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
    .locals 4
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->getResultParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v0

    .line 32
    .local v0, "parser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;->parse(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingState;->getListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-interface {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->results(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 36
    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;->expectMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    new-instance v2, Lcom/nuance/nmdp/speechkit/transaction/recognize/FinishedState;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-direct {v2, v3}, Lcom/nuance/nmdp/speechkit/transaction/recognize/FinishedState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingState;->error(I)V

    goto :goto_0
.end method

.method public final recordingError()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/WaitingState;->error(I)V

    .line 27
    return-void
.end method
