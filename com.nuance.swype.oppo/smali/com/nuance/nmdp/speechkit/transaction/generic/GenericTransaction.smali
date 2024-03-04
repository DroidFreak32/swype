.class public Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;
.source "GenericTransaction.java"


# instance fields
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

.field private final _parser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V
    .locals 1
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "name"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    .local p5, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    invoke-direct {p0, p1, p2, p6}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 28
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->_params:Ljava/util/List;

    .line 29
    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->_parser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    .line 30
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->_name:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/generic/IdleState;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/generic/IdleState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    .line 33
    return-void
.end method


# virtual methods
.method public addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .locals 2
    .param p1, "dict"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 39
    const-string v0, "dictation_language"

    const-string v1, "eng-USA"

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->_name:Ljava/lang/String;

    return-object v0
.end method

.method final getResultParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->_parser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    return-object v0
.end method

.method protected sendParams()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->_params:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 46
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->_params:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;

    .line 48
    .local v2, "param":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;->getName()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "name":Ljava/lang/String;
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;->getValue()Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;

    move-result-object v3

    .line 51
    .local v3, "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 77
    :goto_1
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Send custom param "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_1
    const-string v4, "INT is an unsupported param type"

    invoke-static {p0, v4}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :pswitch_2
    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->sendTextParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :pswitch_3
    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getDictValue()Ljava/util/Map;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createDictFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/Map;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->sendDictParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    goto :goto_1

    .line 65
    :pswitch_4
    const-string v4, "SEQ is an unsupported param type"

    invoke-static {p0, v4}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :pswitch_5
    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getDictValue()Ljava/util/Map;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createDictFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/Map;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->sendSeqStartParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    goto :goto_1

    .line 71
    :pswitch_6
    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getDictValue()Ljava/util/Map;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createDictFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/Map;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->sendSeqChunkParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    goto :goto_1

    .line 74
    :pswitch_7
    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getDictValue()Ljava/util/Map;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createDictFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/Map;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;->sendSeqEndParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    goto :goto_1

    .line 80
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "param":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;
    .end local v3    # "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    :cond_0
    return-void

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
