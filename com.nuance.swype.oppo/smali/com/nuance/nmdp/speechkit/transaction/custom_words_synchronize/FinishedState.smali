.class public final Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;
.super Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;
.source "FinishedState.java"


# instance fields
.field private final _result:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;
    .param p2, "result"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;)V

    .line 11
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;->_result:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;

    .line 12
    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 3

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->freeNmasResource()V

    .line 19
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;->_result:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;

    iget-boolean v0, v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;->Status:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;->_result:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;->NewChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->setNewChecksum(Ljava/lang/String;)V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;->getListener()Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;->_result:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;->result(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V

    .line 24
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;->getListener()Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;->transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 25
    return-void
.end method
