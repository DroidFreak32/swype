.class final Lcom/nuance/nmdp/speechkit/transaction/generic/IdleState;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;
.source "IdleState.java"


# instance fields
.field private final _transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V

    .line 13
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    .line 14
    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public final start()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Starting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " transaction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 24
    return-void
.end method
