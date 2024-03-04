.class public final Lcom/nuance/nmdp/speechkit/transaction/connect/IdleState;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;
.source "IdleState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/connect/ConnectTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/connect/ConnectTransaction;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V

    .line 11
    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public final start()V
    .locals 3

    .prologue
    .line 19
    const-string v0, "Starting connect transaction"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/connect/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/connect/FinishedState;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/connect/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/connect/FinishedState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 21
    return-void
.end method
