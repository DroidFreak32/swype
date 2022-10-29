.class public abstract Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;
.super Ljava/lang/Object;
.source "TransactionStateBase.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;


# instance fields
.field public final _transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V
    .registers 2
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    .line 12
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method

.method public commandCreated(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 34
    return-void
.end method

.method public commandEvent(S)V
    .registers 2
    .param p1, "code"    # S

    .prologue
    .line 42
    return-void
.end method

.method public createCommandFailed()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public final error(I)V
    .registers 3
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, v0, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;->error(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public final error(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;->error(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public error(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method

.method public leave()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method

.method public queryError(ILjava/lang/String;)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 46
    return-void
.end method

.method public queryResult(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
    .registers 2
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    .line 50
    return-void
.end method

.method public queryRetry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 16
    return-void
.end method
