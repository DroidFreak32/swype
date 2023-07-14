.class public final Lcom/nuance/nmdp/speechkit/transaction/generic/FinishedState;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;
.source "FinishedState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->freeNmasResource()V

    .line 15
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->getListener()Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;->transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 16
    return-void
.end method
