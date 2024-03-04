.class public abstract Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;
.super Ljava/lang/Object;
.source "TransactionBase.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/ITransaction;


# instance fields
.field private _cmd:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;

.field private final _cmdListener:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

.field protected final _config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

.field protected _currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

.field protected final _language:Ljava/lang/String;

.field private _listener:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

.field protected final _mgr:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

.field private final _resourceListener:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

.field protected _rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V
    .locals 1
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    .prologue
    .line 41
    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->defaultLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V
    .locals 2
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_listener:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    .line 47
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_mgr:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    .line 48
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    .line 49
    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->defaultLanguage()Ljava/lang/String;

    move-result-object p3

    .end local p3    # "language":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_language:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->createNmasResourceListener()Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_resourceListener:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    .line 51
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->createCommandListener()Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_cmdListener:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    .line 52
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    .line 53
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_cmd:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;

    .line 54
    return-void
.end method

.method private createCommandListener()Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;
    .locals 1

    .prologue
    .line 376
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V

    return-object v0
.end method

.method private createNmasResourceListener()Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V

    return-object v0
.end method


# virtual methods
.method public addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .locals 0
    .param p1, "dict"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    .prologue
    .line 124
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;->cancel()V

    .line 66
    return-void
.end method

.method public final createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;->createPDXDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v0

    return-object v0
.end method

.method public createNmasResource()V
    .locals 5

    .prologue
    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 90
    .local v0, "params":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/nuance/nmsp/client/sdk/components/general/Parameter;>;"
    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string v2, "Android_Context"

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->context()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v1, v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_mgr:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_resourceListener:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->applicationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceFactory;->createNMASResource(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;Ljava/util/Vector;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    .line 93
    return-void
.end method

.method public createPdxCommand(Ljava/lang/String;I)V
    .locals 19
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;
        }
    .end annotation

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    if-eqz v2, :cond_1

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v9

    .line 147
    .local v9, "dict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->carrier()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "carrier":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->model()Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "model":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->os()Ljava/lang/String;

    move-result-object v16

    .line 150
    .local v16, "os":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->locale()Ljava/lang/String;

    move-result-object v13

    .line 151
    .local v13, "locale":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->networkType()Ljava/lang/String;

    move-result-object v14

    .line 152
    .local v14, "networkType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->clientVersion()Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "client":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->nmdpVersion()Ljava/lang/String;

    move-result-object v15

    .line 155
    .local v15, "nmdpVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->applicationId()Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->subscriptionId()Ljava/lang/String;

    move-result-object v17

    .line 158
    .local v17, "subscriptionId":Ljava/lang/String;
    const-string v2, "ui_language"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_language:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "phone_submodel"

    invoke-interface {v9, v2, v8}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "phone_OS"

    move-object/from16 v0, v16

    invoke-interface {v9, v2, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "locale"

    invoke-interface {v9, v2, v13}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "nmdp_version"

    invoke-interface {v9, v2, v15}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "nmaid"

    invoke-interface {v9, v2, v12}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v2, "network_type"

    invoke-interface {v9, v2, v14}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-eqz v17, :cond_0

    .line 167
    const-string v2, "subscriber_id"

    move-object/from16 v0, v17

    invoke-interface {v9, v2, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    const/16 v2, 0x64

    new-array v0, v2, [B

    move-object/from16 v18, v0

    .line 172
    .local v18, "transactionId":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->message([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 177
    :goto_0
    const-string v2, "app_transaction_id"

    move-object/from16 v0, v18

    invoke-interface {v9, v2, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addByteString(Ljava/lang/String;[B)V

    .line 179
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_cmdListener:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_language:Ljava/lang/String;

    move/from16 v0, p2

    int-to-long v10, v0

    move-object/from16 v4, p1

    invoke-interface/range {v2 .. v11}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;->createCommand(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;J)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_cmd:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;

    .line 191
    .end local v5    # "client":Ljava/lang/String;
    .end local v7    # "carrier":Ljava/lang/String;
    .end local v8    # "model":Ljava/lang/String;
    .end local v9    # "dict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .end local v12    # "appId":Ljava/lang/String;
    .end local v13    # "locale":Ljava/lang/String;
    .end local v14    # "networkType":Ljava/lang/String;
    .end local v15    # "nmdpVersion":Ljava/lang/String;
    .end local v16    # "os":Ljava/lang/String;
    .end local v17    # "subscriptionId":Ljava/lang/String;
    .end local v18    # "transactionId":[B
    :cond_1
    return-void

    .restart local v5    # "client":Ljava/lang/String;
    .restart local v7    # "carrier":Ljava/lang/String;
    .restart local v8    # "model":Ljava/lang/String;
    .restart local v9    # "dict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .restart local v12    # "appId":Ljava/lang/String;
    .restart local v13    # "locale":Ljava/lang/String;
    .restart local v14    # "networkType":Ljava/lang/String;
    .restart local v15    # "nmdpVersion":Ljava/lang/String;
    .restart local v16    # "os":Ljava/lang/String;
    .restart local v17    # "subscriptionId":Ljava/lang/String;
    .restart local v18    # "transactionId":[B
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final createSequence()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;->createPDXSequence()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public endPdxCommand()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_cmd:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;

    invoke-interface {v1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;->end()V
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;
    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/TransactionException;

    const-string v2, "Error ending PDX command (TransactionAlreadyFinishedException)"

    invoke-direct {v1, v2, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 202
    .end local v0    # "e":Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;
    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/TransactionException;

    const-string v2, "Error ending PDX command (TransactionExpiredException)"

    invoke-direct {v1, v2, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public freeNmasResource()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;->freeResource(I)V
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    .line 115
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getListener()Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_listener:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    return-object v0
.end method

.method public sendAudioParam(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    invoke-interface {v1, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;->createPDXAudioParam(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

    move-result-object v0

    .line 215
    .local v0, "p":Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;
    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->sendParam(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;)V

    .line 216
    return-object v0
.end method

.method public sendDictParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dictionary"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    invoke-interface {v1, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;->createPDXDictParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;

    move-result-object v0

    .line 238
    .local v0, "p":Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->sendParam(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;)V

    .line 239
    return-void
.end method

.method public sendParam(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;)V
    .locals 3
    .param p1, "param"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_cmd:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;

    invoke-interface {v1, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;->sendParam(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;)V
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    .line 302
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;
    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/TransactionException;

    const-string v2, "Error sending parameter (TransactionAlreadyFinishedException)"

    invoke-direct {v1, v2, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 300
    .end local v0    # "e":Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;
    :catch_1
    move-exception v0

    .line 301
    .local v0, "e":Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;
    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/TransactionException;

    const-string v2, "Error sending parameter (TransactionExpiredException)"

    invoke-direct {v1, v2, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendSeqChunkParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dictionary"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    invoke-interface {v1, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;->createPDXSeqChunkParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;

    move-result-object v0

    .line 260
    .local v0, "p":Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->sendParam(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;)V

    .line 261
    return-void
.end method

.method public sendSeqEndParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dictionary"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    invoke-interface {v1, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;->createPDXSeqEndParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;

    move-result-object v0

    .line 271
    .local v0, "p":Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->sendParam(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;)V

    .line 272
    return-void
.end method

.method public sendSeqStartParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dictionary"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    invoke-interface {v1, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;->createPDXSeqStartParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;

    move-result-object v0

    .line 249
    .local v0, "p":Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->sendParam(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;)V

    .line 250
    return-void
.end method

.method public sendTTSParam(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "audioSink"    # Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v0

    .line 283
    .local v0, "dict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string v2, "tts_input"

    invoke-interface {v0, v2, p2}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "tts_type"

    invoke-interface {v0, v2, p1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    const-string v3, "TEXT_TO_READ"

    invoke-interface {v2, v3, v0, p3}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;->createPDXTTSParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;

    move-result-object v1

    .line 287
    .local v1, "p":Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    invoke-virtual {p0, v1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->sendParam(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;)V

    .line 288
    return-void
.end method

.method public sendTextParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_rsc:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;

    invoke-interface {v1, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;->createPDXTextParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;

    move-result-object v0

    .line 227
    .local v0, "p":Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->sendParam(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;)V

    .line 228
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;->start()V

    .line 60
    return-void
.end method

.method public switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V
    .locals 1
    .param p1, "newState"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;->leave()V

    .line 80
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    .line 81
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;->enter()V

    .line 82
    return-void
.end method
