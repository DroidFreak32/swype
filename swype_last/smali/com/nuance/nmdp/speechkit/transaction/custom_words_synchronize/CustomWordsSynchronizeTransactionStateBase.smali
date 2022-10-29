.class public abstract Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;
.source "CustomWordsSynchronizeTransactionStateBase.java"


# instance fields
.field protected final _transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;)V
    .registers 2
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V

    .line 13
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    .line 14
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;->error(I)V

    .line 19
    return-void
.end method

.method public commandEvent(S)V
    .registers 3
    .param p1, "code"    # S

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;->error(I)V

    .line 29
    return-void
.end method

.method public createCommandFailed()V
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;->error(I)V

    .line 24
    return-void
.end method

.method protected final error(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ErrorState;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    const/4 v5, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ErrorState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 46
    return-void
.end method

.method protected final getListener()Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->getListener()Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;

    return-object v0
.end method

.method public queryError(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p2}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;->error(ILjava/lang/String;)V

    .line 34
    return-void
.end method

.method public queryRetry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;->error(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
