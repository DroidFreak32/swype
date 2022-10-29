.class public final Lcom/nuance/nmdp/speechkit/transaction/connect/ConnectTransaction;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;
.source "ConnectTransaction.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V
    .registers 5
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 14
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/connect/IdleState;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/connect/IdleState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/connect/ConnectTransaction;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/connect/ConnectTransaction;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    .line 15
    return-void
.end method
