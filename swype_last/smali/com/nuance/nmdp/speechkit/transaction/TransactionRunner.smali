.class public Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
.super Ljava/lang/Object;
.source "TransactionRunner.java"


# instance fields
.field private _appLogSession:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

.field private _config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

.field private _currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

.field private _isValid:Z

.field private final _managerListener:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

.field private _nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

.field private _playerCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

.field private _recorderCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

.field private final _senderListener:Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;

.field private _sessionId:Ljava/lang/String;

.field private final _sessionIdSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;)V
    .registers 4
    .param p1, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_appLogSession:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    .line 71
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    .line 72
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .line 73
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createManagerListener()Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_managerListener:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    .line 74
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createSenderListener()Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_senderListener:Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;

    .line 75
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_sessionId:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_sessionIdSync:Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->playerCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_playerCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    .line 79
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->recorderCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_recorderCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    .line 80
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createManager()Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    .line 81
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    if-nez v0, :cond_41

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    .line 84
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    .line 86
    :cond_41
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->restartManager()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_sessionIdSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_sessionId:Ljava/lang/String;

    return-object p1
.end method

.method private checkManager()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->playerCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    .line 143
    .local v0, "playerCodec":Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->recorderCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v1

    .line 144
    .local v1, "recorderCodec":Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_playerCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne v2, v0, :cond_15

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_recorderCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq v2, v1, :cond_35

    .line 146
    :cond_15
    const-string/jumbo v2, "Supported codecs changed, restarting NMSP manager"

    invoke-static {p0, v2}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .line 148
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_playerCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    .line 149
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_recorderCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    .line 150
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    invoke-interface {v2}, Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;->shutdown()V

    .line 151
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createManager()Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    .line 152
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    if-nez v2, :cond_35

    .line 154
    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    .line 155
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    .line 158
    :cond_35
    return-void
.end method

.method private createManager()Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .registers 14

    .prologue
    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->port()I

    move-result v2

    int-to-short v1, v2

    .line 92
    .local v1, "port":S
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->host()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "host":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->apn()Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "apn":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->ssl()Z

    move-result v11

    .line 95
    .local v11, "ssl":Z
    new-instance v10, Lcom/nuance/nmdp/speechkit/util/List;

    invoke-direct {v10}, Lcom/nuance/nmdp/speechkit/util/List;-><init>()V

    .line 96
    .local v10, "params":Lcom/nuance/nmdp/speechkit/util/List;
    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v3, "Android_Context"

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->context()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v10, v2}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 97
    if-eqz v9, :cond_44

    .line 101
    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v3, "SocketConnectionSetting"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v10, v2}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 103
    :cond_44
    if-eqz v11, :cond_5a

    .line 106
    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v3, "SSL_Socket_Enable"

    const-string/jumbo v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v10, v2}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 116
    :cond_5a
    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v3, "Calllog_Disable"

    const-string/jumbo v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v10, v2}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 118
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->applicationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->applicationKey()[B

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->uid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_recorderCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_playerCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v10}, Lcom/nuance/nmdp/speechkit/util/List;->toVector()Ljava/util/Vector;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_managerListener:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    invoke-static/range {v0 .. v8}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->createManager(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;)Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8d} :catch_8f

    move-result-object v2

    .line 129
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "port":S
    .end local v9    # "apn":Ljava/lang/String;
    .end local v10    # "params":Lcom/nuance/nmdp/speechkit/util/List;
    .end local v11    # "ssl":Z
    :goto_8e
    return-object v2

    .line 127
    :catch_8f
    move-exception v12

    .line 128
    .local v12, "tr":Ljava/lang/Throwable;
    const-string/jumbo v2, "Unable to create NMSP manager"

    invoke-static {p0, v2, v12}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    const/4 v2, 0x0

    goto :goto_8e
.end method

.method private createManagerListener()Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;
    .registers 2

    .prologue
    .line 638
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$10;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$10;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;)V

    return-object v0
.end method

.method private createSenderListener()Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;
    .registers 2

    .prologue
    .line 673
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$11;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$11;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;)V

    return-object v0
.end method

.method private restartManager()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 167
    const-string/jumbo v0, "Restarting NMSP manager"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->playerCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_playerCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    .line 169
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->recorderCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_recorderCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    .line 170
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .line 171
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;->shutdown()V

    .line 172
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createManager()Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    .line 173
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    if-nez v0, :cond_2d

    .line 175
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    .line 178
    :cond_2d
    return-void
.end method

.method private transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .registers 3
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-ne p1, v0, :cond_7

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .line 634
    :cond_7
    return-void
.end method


# virtual methods
.method public cancelCurrent()V
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v0, :cond_c

    .line 623
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .line 626
    :cond_c
    return-void
.end method

.method public createConnectTransaction(Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;Z)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .registers 7
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
    .param p2, "ping"    # Z

    .prologue
    const/4 v1, 0x0

    .line 579
    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    if-nez v2, :cond_6

    .line 608
    :cond_5
    :goto_5
    return-object v1

    .line 581
    :cond_6
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-nez v2, :cond_5

    .line 586
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->checkManager()V

    .line 588
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$9;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$9;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 605
    .local v0, "l":Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
    if-eqz p2, :cond_20

    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/ping/PingTransaction;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-direct {v1, v2, v3, v0}, Lcom/nuance/nmdp/speechkit/transaction/ping/PingTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 607
    .local v1, "t":Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    :goto_1d
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    goto :goto_5

    .line 606
    .end local v1    # "t":Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    :cond_20
    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/connect/ConnectTransaction;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-direct {v1, v2, v3, v0}, Lcom/nuance/nmdp/speechkit/transaction/connect/ConnectTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .restart local v1    # "t":Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    goto :goto_1d
.end method

.method public createConstraintRecognizeTransaction(Ljava/lang/String;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    .registers 35
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detectionType"    # I
    .param p3, "endOfSpeechDuration"    # I
    .param p4, "startOfSpeechTimeout"    # I
    .param p5, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "grammarList"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    .param p8, "startPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p9, "stopPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p10, "resultPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p11, "errorPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p13, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .param p14, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;"
        }
    .end annotation

    .prologue
    .line 275
    .local p12, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    if-nez v4, :cond_8

    const/4 v3, 0x0

    .line 316
    :goto_7
    return-object v3

    .line 277
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v4, :cond_15

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 282
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->checkManager()V

    .line 284
    new-instance v3, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    new-instance v19, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p14

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$2;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    invoke-direct/range {v3 .. v19}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    .line 315
    .local v3, "t":Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    goto :goto_7
.end method

.method public createCustomWordsSynchronizeTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;
    .registers 14
    .param p1, "dictationType"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;"
        }
    .end annotation

    .prologue
    .line 696
    .local p3, "customWordsAddSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "customWordsRemoveSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    if-nez v1, :cond_6

    .line 697
    const/4 v0, 0x0

    .line 736
    :goto_5
    return-object v0

    .line 699
    :cond_6
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v1, :cond_f

    .line 700
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 703
    :cond_f
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->checkManager()V

    .line 705
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    new-instance v7, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$12;

    invoke-direct {v7, p0, p5}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$12;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 735
    .local v0, "t":Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    goto :goto_5
.end method

.method public createGenericTransaction(Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransaction;"
        }
    .end annotation

    .prologue
    .line 433
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    .local p3, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 459
    :goto_5
    return-object v0

    .line 435
    :cond_6
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v1, :cond_f

    .line 437
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 440
    :cond_f
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->checkManager()V

    .line 442
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    new-instance v6, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$5;

    invoke-direct {v6, p0, p4}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$5;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 458
    .local v0, "t":Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    goto :goto_5
.end method

.method public createLanguageTransaction(Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .registers 10
    .param p3, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransaction;"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    .local p2, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 528
    :goto_5
    return-object v0

    .line 504
    :cond_6
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v1, :cond_f

    .line 506
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 509
    :cond_f
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->checkManager()V

    .line 511
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/languages/LanguagesTransaction;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    new-instance v5, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$7;

    invoke-direct {v5, p0, p3}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$7;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/transaction/languages/LanguagesTransaction;-><init>(Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 527
    .local v0, "t":Lcom/nuance/nmdp/speechkit/transaction/languages/LanguagesTransaction;
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    goto :goto_5
.end method

.method public createLogRevisionTransaction(Ljava/util/List;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .registers 12
    .param p2, "appSessionId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransaction;"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    .local p3, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 494
    :goto_5
    return-object v0

    .line 470
    :cond_6
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v1, :cond_f

    .line 472
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 475
    :cond_f
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->checkManager()V

    .line 477
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/generic/logrevision/LogRevisionTransaction;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    new-instance v6, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$6;

    invoke-direct {v6, p0, p4}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$6;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/transaction/generic/logrevision/LogRevisionTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/util/List;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 493
    .local v0, "t":Lcom/nuance/nmdp/speechkit/transaction/generic/GenericTransaction;
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    goto :goto_5
.end method

.method public createNluRecognizeTransaction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    .registers 31
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detectionType"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "appSessionId"    # Ljava/lang/String;
    .param p5, "requestParams"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p6, "startPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p7, "stopPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p8, "resultPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p9, "errorPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p11, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .param p12, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;"
        }
    .end annotation

    .prologue
    .line 332
    .local p10, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    if-nez v4, :cond_8

    const/4 v3, 0x0

    .line 373
    :goto_7
    return-object v3

    .line 334
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v4, :cond_15

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 339
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->checkManager()V

    .line 341
    new-instance v3, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    new-instance v17, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p12

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$3;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    invoke-direct/range {v3 .. v17}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    .line 372
    .local v3, "t":Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    goto :goto_7
.end method

.method public createNmdpRecognizeTransaction(Ljava/lang/String;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    .registers 34
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detectionType"    # I
    .param p3, "endOfSpeechDuration"    # I
    .param p4, "startOfSpeechTimeout"    # I
    .param p5, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "startPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p8, "stopPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p9, "resultPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p10, "errorPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p12, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .param p13, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;"
        }
    .end annotation

    .prologue
    .line 215
    .local p11, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    if-nez v4, :cond_8

    const/4 v3, 0x0

    .line 256
    :goto_7
    return-object v3

    .line 217
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v4, :cond_15

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 222
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->checkManager()V

    .line 224
    new-instance v3, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    const/4 v12, 0x0

    new-instance v19, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p13

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$1;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    invoke-direct/range {v3 .. v19}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    .line 255
    .local v3, "t":Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    goto :goto_7
.end method

.method public createTextContextNmdpRecognizeTransaction(Ljava/lang/String;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    .registers 35
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detectionType"    # I
    .param p3, "endOfSpeechDuration"    # I
    .param p4, "startOfSpeechTimeout"    # I
    .param p5, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "textContext"    # Lcom/nuance/nmdp/speechkit/TextContext;
    .param p8, "startPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p9, "stopPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p10, "resultPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p11, "errorPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p13, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .param p14, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/TextContext;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;"
        }
    .end annotation

    .prologue
    .line 749
    .local p12, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    if-nez v4, :cond_8

    .line 750
    const/4 v3, 0x0

    .line 797
    :goto_7
    return-object v3

    .line 753
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v4, :cond_15

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 757
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->checkManager()V

    .line 759
    new-instance v3, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    new-instance v19, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p14

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$13;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    invoke-direct/range {v3 .. v19}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    .line 796
    .local v3, "t":Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    goto :goto_7
.end method

.method public createTextRecognizeTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    .registers 19
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "appSessionId"    # Ljava/lang/String;
    .param p3, "requestParams"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p6, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .param p7, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;"
        }
    .end annotation

    .prologue
    .line 384
    .local p4, "grammarParams":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    .local p5, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    if-nez v2, :cond_6

    const/4 v1, 0x0

    .line 425
    :goto_5
    return-object v1

    .line 386
    :cond_6
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v2, :cond_f

    .line 388
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 391
    :cond_f
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->checkManager()V

    .line 393
    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    new-instance v10, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$4;

    move-object/from16 v0, p7

    invoke-direct {v10, p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$4;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    .line 424
    .local v1, "t":Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    goto :goto_5
.end method

.method public createVocalizeTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "voice"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "markup"    # Z
    .param p5, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;

    .prologue
    .line 533
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 565
    :goto_5
    return-object v0

    .line 535
    :cond_6
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v1, :cond_f

    .line 537
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 540
    :cond_f
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->checkManager()V

    .line 542
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_playerCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    new-instance v8, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$8;

    invoke-direct {v8, p0, p5}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$8;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;)V

    .line 564
    .local v0, "t":Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    goto :goto_5
.end method

.method public dispose()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    .line 183
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    if-eqz v0, :cond_f

    .line 185
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 186
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .line 188
    :cond_f
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    if-eqz v0, :cond_1a

    .line 190
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;->shutdown()V

    .line 191
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_nmspManager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    .line 193
    :cond_1a
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    .line 194
    return-void
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 613
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_sessionIdSync:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_sessionId:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 616
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->_isValid:Z

    return v0
.end method
