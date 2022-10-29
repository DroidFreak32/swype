.class abstract Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransactionStateBase;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;
.source "VocalizeTransactionStateBase.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionState;


# instance fields
.field protected final _transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V
    .registers 2
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V

    .line 12
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    .line 13
    return-void
.end method


# virtual methods
.method public audioError()V
    .registers 1

    .prologue
    .line 18
    return-void
.end method

.method public audioStarted()V
    .registers 1

    .prologue
    .line 23
    return-void
.end method

.method public audioStopped()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method

.method protected final error(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/ErrorState;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    const/4 v5, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/ErrorState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 39
    return-void
.end method

.method protected final getListener()Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->getListener()Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;

    return-object v0
.end method
