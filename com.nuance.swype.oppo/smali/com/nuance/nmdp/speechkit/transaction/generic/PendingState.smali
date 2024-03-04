.class final Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;
.source "PendingState.java"


# instance fields
.field private final _transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V

    .line 15
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    .line 16
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->error(I)V

    .line 35
    return-void
.end method

.method public final commandEvent(S)V
    .locals 1
    .param p1, "code"    # S

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->error(I)V

    .line 40
    return-void
.end method

.method public final createCommandFailed()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->error(I)V

    .line 45
    return-void
.end method

.method public final enter()V
    .locals 4

    .prologue
    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->createNmasResource()V

    .line 22
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7530

    invoke-virtual {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->createPdxCommand(Ljava/lang/String;I)V

    .line 23
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->sendParams()V

    .line 24
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->endPdxCommand()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 27
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "Error starting PendingState"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->error(I)V

    goto :goto_0
.end method

.method protected final error(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/generic/ErrorState;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/nuance/nmdp/speechkit/transaction/generic/ErrorState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 73
    return-void
.end method

.method public final queryError(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->error(ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public final queryResult(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
    .locals 4
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->getResultParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v0

    .line 55
    .local v0, "parser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;->parse(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;->expectMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    new-instance v2, Lcom/nuance/nmdp/speechkit/transaction/generic/FinishedState;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    invoke-direct {v2, v3}, Lcom/nuance/nmdp/speechkit/transaction/generic/FinishedState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->error(I)V

    goto :goto_0
.end method

.method public final queryRetry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/nuance/nmdp/speechkit/transaction/generic/PendingState;->error(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
