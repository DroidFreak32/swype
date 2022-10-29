.class abstract Lcom/nuance/nmdp/speechkit/ResetUserProfileCmdImpl;
.super Lcom/nuance/nmdp/speechkit/CommandBase;
.source "ResetUserProfileCmdImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/CommandBase",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;)V
    .registers 4
    .param p1, "transactionRunner"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/nmdp/speechkit/CommandBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected createResultParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<",
            "Lcom/nuance/nmdp/speechkit/GenericResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/nuance/nmdp/speechkit/GenericResultImpl;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/GenericResultImpl;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/GenericResultImpl;->getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v0

    return-object v0
.end method

.method protected createTransaction(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .registers 7
    .param p1, "transactionRunner"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p2, "name"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
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
            "<",
            "Lcom/nuance/nmdp/speechkit/GenericResult;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransaction;"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    .local p4, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<Lcom/nuance/nmdp/speechkit/GenericResult;>;"
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createGenericTransaction(Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    move-result-object v0

    return-object v0
.end method
