.class public final Lcom/nuance/nmdp/speechkit/transaction/ping/PingTransaction;
.super Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;
.source "PingTransaction.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V
    .locals 7
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    .prologue
    const/4 v4, 0x0

    .line 12
    const-string v3, "PING"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 13
    return-void
.end method
