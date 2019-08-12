.class abstract Lcom/nuance/nmdp/speechkit/CommandBase;
.super Ljava/lang/Object;
.source "CommandBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private _currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

.field private final _name:Ljava/lang/String;

.field private final _params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;"
        }
    .end annotation
.end field

.field private _resultParser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private _started:Z

.field private final _tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

.field private final _transactionListener:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "transactionRunner"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandBase;, "Lcom/nuance/nmdp/speechkit/CommandBase<TResultType;>;"
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    .line 24
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_name:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_params:Ljava/util/List;

    .line 26
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/CommandBase;->createTransactionListener()Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_transactionListener:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_started:Z

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/CommandBase;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CommandBase;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/CommandBase;Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CommandBase;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/CommandBase;)Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CommandBase;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_resultParser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    return-object v0
.end method

.method private createTransactionListener()Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandBase;, "Lcom/nuance/nmdp/speechkit/CommandBase<TResultType;>;"
    new-instance v0, Lcom/nuance/nmdp/speechkit/CommandBase$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/CommandBase$1;-><init>(Lcom/nuance/nmdp/speechkit/CommandBase;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandBase;, "Lcom/nuance/nmdp/speechkit/CommandBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .line 109
    :cond_0
    return-void
.end method

.method protected abstract createResultParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<TResultType;>;"
        }
    .end annotation
.end method

.method protected abstract createTransaction(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<TResultType;>;",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransaction;"
        }
    .end annotation
.end method

.method protected abstract onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
.end method

.method protected abstract onResults(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation
.end method

.method public start()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandBase;, "Lcom/nuance/nmdp/speechkit/CommandBase<TResultType;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 78
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_started:Z

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/CommandBase;->createResultParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_resultParser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    .line 88
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_params:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_resultParser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_transactionListener:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/CommandBase;->createTransaction(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .line 89
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-nez v0, :cond_1

    .line 90
    const-string v0, "Unable to create command transaction"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    invoke-direct {v0, v7, v6, v6}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/CommandBase;->onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_started:Z

    .line 94
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->start()V

    goto :goto_0

    .line 97
    :cond_2
    const-string v0, "Unable to create command transaction. Transaction runner is invalid."

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    invoke-direct {v0, v7, v6, v6}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/CommandBase;->onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    goto :goto_0
.end method
