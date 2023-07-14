.class public abstract Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;
.source "ErrorStateBase.java"


# instance fields
.field public final _code:I

.field private final _immediate:Z

.field private final _string:Ljava/lang/String;

.field private final _suggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;
    .param p2, "errorCode"    # I
    .param p3, "errorString"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;
    .param p5, "reportImmediately"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V

    .line 28
    iput p2, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_code:I

    .line 29
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_string:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_suggestion:Ljava/lang/String;

    .line 31
    iput-boolean p5, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_immediate:Z

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_string:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_suggestion:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Transaction error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_string:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Transaction error text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_suggestion:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_suggestion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Transaction suggestion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_suggestion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->freeNmasResource()V

    .line 47
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->getListener()Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    move-result-object v0

    .line 48
    .local v0, "l":Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_immediate:Z

    if-eqz v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_code:I

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_string:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_suggestion:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;->error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;->transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 63
    :goto_0
    return-void

    .line 54
    :cond_2
    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase$1;

    invoke-direct {v1, p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase$1;-><init>(Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
