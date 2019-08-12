.class public abstract Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;
.source "RecognizeTransaction.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;


# instance fields
.field private final _detectDelay:I

.field private final _detectionType:I

.field private final _endOfSpeechDuration:I

.field private final _energyListener:Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

.field private final _errorPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

.field protected final _partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field private final _promptListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

.field private _recorderHelper:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

.field private final _recorderListener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

.field private final _recorderParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmsp/client/sdk/components/general/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private final _resultParser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;"
        }
    .end annotation
.end field

.field private final _resultPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

.field private final _startOfSpeechTimeout:I

.field private final _startPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

.field private final _stopPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Ljava/util/List;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V
    .locals 4
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "detectionType"    # I
    .param p4, "endOfSpeechDuration"    # I
    .param p5, "startOfSpeechTimeout"    # I
    .param p6, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p7, "language"    # Ljava/lang/String;
    .param p8, "startPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p9, "stopPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p10, "resultPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p11, "errorPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p14, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .param p15, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;",
            "III",
            "Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmsp/client/sdk/components/general/Parameter;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p12, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    .local p13, "recorderParams":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmsp/client/sdk/components/general/Parameter;>;"
    move-object/from16 v0, p15

    invoke-direct {p0, p1, p2, p7, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 55
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_recorderParams:Ljava/util/List;

    .line 56
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_resultParser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    .line 57
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_energyListener:Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

    .line 58
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->createRecorderListener()Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_recorderListener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    .line 59
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->createPromptListener()Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_promptListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_recorderHelper:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    .line 61
    iput p3, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_detectionType:I

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_detectDelay:I

    .line 65
    if-nez p8, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_startPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    .line 66
    if-nez p9, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_stopPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    .line 67
    if-nez p10, :cond_2

    const/4 v1, 0x0

    :goto_2
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_resultPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    .line 68
    if-nez p11, :cond_3

    const/4 v1, 0x0

    :goto_3
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_errorPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    .line 69
    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/IdleState;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IdleState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    .line 70
    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 71
    iput p4, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_endOfSpeechDuration:I

    .line 72
    iput p5, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_startOfSpeechTimeout:I

    .line 73
    return-void

    .line 65
    :cond_0
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->context()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_promptListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    invoke-direct {v1, p8, v2, p0, v3}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;)V

    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->context()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_promptListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    invoke-direct {v1, p9, v2, p0, v3}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;)V

    goto :goto_1

    .line 67
    :cond_2
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->context()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_promptListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    invoke-direct {v1, p10, v2, p0, v3}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;)V

    goto :goto_2

    .line 68
    :cond_3
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->context()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_promptListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    invoke-direct {v1, p11, v2, p0, v3}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_energyListener:Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->currentState()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;

    move-result-object v0

    return-object v0
.end method

.method private createPromptListener()Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    return-object v0
.end method

.method private createRecorderListener()Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    return-object v0
.end method

.method private currentState()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    check-cast v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;

    return-object v0
.end method


# virtual methods
.method public createRecorder(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;)V
    .locals 12
    .param p1, "param"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

    .prologue
    .line 137
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_mgr:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_detectionType:I

    iget v3, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_detectDelay:I

    iget v4, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_endOfSpeechDuration:I

    iget v5, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_startOfSpeechTimeout:I

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_recorderParams:Ljava/util/List;

    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v8}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->context()Ljava/lang/Object;

    move-result-object v10

    iget-object v11, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_recorderListener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v0 .. v11}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;IIIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/util/List;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_recorderHelper:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    .line 138
    return-void
.end method

.method protected abstract getAudioParamName()Ljava/lang/String;
.end method

.method protected abstract getCommandName()Ljava/lang/String;
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
    .line 77
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_resultParser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    return-object v0
.end method

.method playErrorPrompt()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_errorPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_errorPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->start()V

    .line 133
    :cond_0
    return-void
.end method

.method playResultPrompt()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_resultPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_resultPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->start()V

    .line 125
    :cond_0
    return-void
.end method

.method playStartPrompt()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_startPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_startPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->start()V

    .line 100
    const/4 v0, 0x1

    goto :goto_0
.end method

.method playStopPrompt()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_stopPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_stopPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->start()V

    .line 117
    :cond_0
    return-void
.end method

.method public sendAudioParam()Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->getAudioParamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->sendAudioParam(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

    move-result-object v0

    return-object v0
.end method

.method protected abstract sendParams()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation
.end method

.method public startCapturing()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_recorderHelper:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->startCapturing()V

    .line 153
    return-void
.end method

.method public startRecording()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_recorderHelper:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->startRecorder()V

    .line 148
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->currentState()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;->stop()V

    .line 91
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_recorderHelper:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_recorderHelper:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->stopRecorder()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_recorderHelper:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    .line 162
    :cond_0
    return-void
.end method

.method stopStartPrompt()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_startPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->_startPromptHelper:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->stop()V

    .line 109
    :cond_0
    return-void
.end method

.method protected abstract supportsRecording()Z
.end method
