.class public final Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;
.source "VocalizeTransaction.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;


# instance fields
.field private _playerHelper:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

.field private final _playerListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

.field private final _text:Ljava/lang/String;

.field private final _type:Ljava/lang/String;

.field private final _voice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;)V
    .locals 6
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "voice"    # Ljava/lang/String;
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "markup"    # Z
    .param p7, "audioCodec"    # Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;
    .param p8, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p5, p8}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 33
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_text:Ljava/lang/String;

    .line 34
    if-eqz p6, :cond_0

    const-string/jumbo v0, "ssml"

    :goto_0
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_type:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_voice:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->createPlayerListener()Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_playerListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    .line 37
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_mgr:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->context()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_playerListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    move-object v2, p0

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_playerHelper:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    .line 38
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/IdleState;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/IdleState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    .line 39
    return-void

    .line 34
    :cond_0
    const-string/jumbo v0, "text"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->currentState()Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionState;

    move-result-object v0

    return-object v0
.end method

.method private createPlayerListener()Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;-><init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V

    return-object v0
.end method

.method private currentState()Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionState;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    check-cast v0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionState;

    return-object v0
.end method


# virtual methods
.method protected final addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .locals 2
    .param p1, "dict"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_voice:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v0, "tts_voice"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_voice:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string/jumbo v0, "tts_language"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_language:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getAudioSink()Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_playerHelper:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->getPlayer()Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;

    move-result-object v0

    return-object v0
.end method

.method protected final getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getTtsCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_text:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public final startPlayer()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_playerHelper:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->startPlayer()V

    .line 71
    return-void
.end method

.method public final stopPlayer()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->_playerHelper:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->stopPlayer()V

    .line 76
    return-void
.end method
