.class final Lcom/nuance/nmdp/speechkit/transaction/vocalize/FinishedState;
.super Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransactionStateBase;
.source "FinishedState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V

    .line 7
    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->freeNmasResource()V

    .line 12
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->getListener()Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;->transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 13
    return-void
.end method
