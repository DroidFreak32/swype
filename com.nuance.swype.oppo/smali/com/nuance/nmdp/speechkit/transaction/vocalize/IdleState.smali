.class final Lcom/nuance/nmdp/speechkit/transaction/vocalize/IdleState;
.super Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransactionStateBase;
.source "IdleState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public final start()V
    .locals 3

    .prologue
    .line 13
    const-string v0, "Starting vocalize transaction"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/PlayingState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 15
    return-void
.end method
