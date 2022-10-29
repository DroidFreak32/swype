.class public Lcom/nuance/nmdp/speechkit/transaction/generic/logrevision/LogRevisionTransaction;
.super Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;
.source "LogRevisionTransaction.java"


# instance fields
.field private final _appSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/util/List;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V
    .registers 14
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p4, "appSessionId"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    .local p5, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getLogRevisionCmd()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 25
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/logrevision/LogRevisionTransaction;->_appSessionId:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .registers 4
    .param p1, "dict"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 33
    const-string/jumbo v0, "application_session_id"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/logrevision/LogRevisionTransaction;->_appSessionId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
