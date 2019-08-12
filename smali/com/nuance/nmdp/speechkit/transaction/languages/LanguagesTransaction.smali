.class public Lcom/nuance/nmdp/speechkit/transaction/languages/LanguagesTransaction;
.super Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;
.source "LanguagesTransaction.java"


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V
    .locals 7
    .param p3, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p4, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p5, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;",
            "Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    .local p2, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    invoke-virtual {p4}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getLanguageCmd()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 19
    return-void
.end method
