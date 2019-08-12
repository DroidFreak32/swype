.class public Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/IdleState;
.super Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;
.source "IdleState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;)V

    .line 9
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 18
    const-string v0, "Starting custom words synchronize transaction"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/IdleState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 20
    return-void
.end method
