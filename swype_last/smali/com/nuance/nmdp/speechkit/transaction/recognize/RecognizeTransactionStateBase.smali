.class abstract Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransactionStateBase;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;
.source "RecognizeTransactionStateBase.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;


# instance fields
.field protected final _transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V
    .registers 2
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V

    .line 12
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .line 13
    return-void
.end method


# virtual methods
.method protected final error(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/ErrorState;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    const/4 v5, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ErrorState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 59
    return-void
.end method

.method protected final getListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->getListener()Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    return-object v0
.end method

.method public promptError()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public promptStopped()V
    .registers 1

    .prologue
    .line 43
    return-void
.end method

.method public recordingError()V
    .registers 1

    .prologue
    .line 18
    return-void
.end method

.method public recordingSignalEnergy(F)V
    .registers 2
    .param p1, "energy"    # F

    .prologue
    .line 33
    return-void
.end method

.method public recordingStarted()V
    .registers 1

    .prologue
    .line 23
    return-void
.end method

.method public recordingStopped()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method
