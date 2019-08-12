.class final Lcom/nuance/nmdp/speechkit/transaction/recognize/FinishedState;
.super Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransactionStateBase;
.source "FinishedState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    .line 7
    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->freeNmasResource()V

    .line 13
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/FinishedState;->getListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 14
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->playResultPrompt()V

    .line 15
    return-void
.end method
