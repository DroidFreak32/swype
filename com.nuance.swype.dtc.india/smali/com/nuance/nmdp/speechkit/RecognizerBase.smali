.class abstract Lcom/nuance/nmdp/speechkit/RecognizerBase;
.super Ljava/lang/Object;
.source "RecognizerBase.java"


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
.field private _appSessionId:Ljava/lang/String;

.field private _currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

.field private final _detectionType:I

.field private _endOfSpeechDuration:I

.field private final _energyListener:Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

.field private _errorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

.field private final _language:Ljava/lang/String;

.field private final _partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field private _resultParser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private _resultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

.field private _startOfSpeechTimeout:I

.field private _startPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

.field private _started:Z

.field private _stopPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

.field private final _tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

.field private final _transactionListener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;IILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V
    .locals 2
    .param p1, "transactionRunner"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p2, "detectionType"    # I
    .param p3, "endOfSpeechDuration"    # I
    .param p4, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "appSessionId"    # Ljava/lang/String;
    .param p7, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

    .prologue
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase;, "Lcom/nuance/nmdp/speechkit/RecognizerBase<TResultType;>;"
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_startOfSpeechTimeout:I

    .line 45
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    .line 46
    iput p2, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_detectionType:I

    .line 47
    iput p3, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_endOfSpeechDuration:I

    .line 48
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 49
    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_language:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_energyListener:Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

    .line 51
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->createTransactionListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_transactionListener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    .line 52
    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_started:Z

    .line 53
    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_appSessionId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/RecognizerBase;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerBase;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/RecognizerBase;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerBase;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/RecognizerBase;)Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerBase;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_resultParser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    return-object v0
.end method

.method private createTransactionListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase;, "Lcom/nuance/nmdp/speechkit/RecognizerBase<TResultType;>;"
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;-><init>(Lcom/nuance/nmdp/speechkit/RecognizerBase;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 225
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase;, "Lcom/nuance/nmdp/speechkit/RecognizerBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;->cancel()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    .line 229
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

.method protected abstract createTransaction(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;",
            "III",
            "Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<TResultType;>;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;"
        }
    .end annotation
.end method

.method protected abstract onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
.end method

.method protected abstract onRecordingBegin()V
.end method

.method protected abstract onRecordingDone()V
.end method

.method protected abstract onResults(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation
.end method

.method public setEndOfSpeechDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 232
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase;, "Lcom/nuance/nmdp/speechkit/RecognizerBase<TResultType;>;"
    iput p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_endOfSpeechDuration:I

    .line 233
    return-void
.end method

.method public setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 0
    .param p1, "promptType"    # I
    .param p2, "p"    # Lcom/nuance/nmdp/speechkit/Prompt;

    .prologue
    .line 152
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase;, "Lcom/nuance/nmdp/speechkit/RecognizerBase<TResultType;>;"
    packed-switch p1, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_startPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    goto :goto_0

    .line 158
    :pswitch_1
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_stopPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    goto :goto_0

    .line 161
    :pswitch_2
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_resultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    goto :goto_0

    .line 164
    :pswitch_3
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_errorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setStartOfSpeechTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 236
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase;, "Lcom/nuance/nmdp/speechkit/RecognizerBase<TResultType;>;"
    iput p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_startOfSpeechTimeout:I

    .line 237
    return-void
.end method

.method public start()V
    .locals 15

    .prologue
    .line 174
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase;, "Lcom/nuance/nmdp/speechkit/RecognizerBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_started:Z

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_startPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    if-nez v0, :cond_1

    const/4 v9, 0x0

    .line 183
    .local v9, "startPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_stopPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    if-nez v0, :cond_2

    const/4 v10, 0x0

    .line 184
    .local v10, "stopPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    :goto_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_resultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    if-nez v0, :cond_3

    const/4 v11, 0x0

    .line 185
    .local v11, "resultPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    :goto_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_errorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    if-nez v0, :cond_4

    const/4 v12, 0x0

    .line 187
    .local v12, "errorPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    :goto_4
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->createResultParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_resultParser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    .line 189
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_detectionType:I

    iget v3, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_endOfSpeechDuration:I

    iget v4, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_startOfSpeechTimeout:I

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_language:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_appSessionId:Ljava/lang/String;

    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_energyListener:Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

    iget-object v13, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_resultParser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    iget-object v14, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_transactionListener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v14}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->createTransaction(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    .line 202
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    if-nez v0, :cond_5

    .line 203
    const-string/jumbo v0, "Unable to create recognition transaction"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    goto :goto_0

    .line 182
    .end local v9    # "startPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .end local v10    # "stopPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .end local v11    # "resultPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .end local v12    # "errorPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_startPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->getPrompt()Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    move-result-object v9

    goto :goto_1

    .line 183
    .restart local v9    # "startPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_stopPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->getPrompt()Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    move-result-object v10

    goto :goto_2

    .line 184
    .restart local v10    # "stopPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    :cond_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_resultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->getPrompt()Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    move-result-object v11

    goto :goto_3

    .line 185
    .restart local v11    # "resultPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    :cond_4
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_errorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->getPrompt()Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    move-result-object v12

    goto :goto_4

    .line 206
    .restart local v12    # "errorPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_started:Z

    .line 207
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;->start()V

    goto :goto_0

    .line 211
    .end local v9    # "startPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .end local v10    # "stopPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .end local v11    # "resultPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .end local v12    # "errorPrompt":Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    :cond_6
    const-string/jumbo v0, "Unable to create recognition transaction. Transaction runner is invalid."

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    goto/16 :goto_0
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase;, "Lcom/nuance/nmdp/speechkit/RecognizerBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;->stop()V

    .line 221
    :cond_0
    return-void
.end method
