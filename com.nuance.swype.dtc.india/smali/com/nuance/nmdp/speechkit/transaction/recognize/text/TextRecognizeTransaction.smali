.class public Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;
.super Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;
.source "TextRecognizeTransaction.java"


# instance fields
.field private _appSessionId:Ljava/lang/String;

.field private final _optionalParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;"
        }
    .end annotation
.end field

.field private _requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V
    .locals 18
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "appSessionId"    # Ljava/lang/String;
    .param p5, "requestParams"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p8, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .param p9, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;",
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
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p6, "grammarParams":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    .local p7, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v9, p3

    move-object/from16 v14, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    invoke-direct/range {v2 .. v17}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Ljava/util/List;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    .line 42
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;->_optionalParams:Ljava/util/List;

    .line 43
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;->_requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    .line 44
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;->_appSessionId:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .locals 2
    .param p1, "dict"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 51
    const-string/jumbo v0, "dictation_language"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;->_language:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;->_appSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v0, "application_session_id"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;->_appSessionId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method protected getAudioParamName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "AUDIO_INFO"

    return-object v0
.end method

.method protected getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getAppserverCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sendParams()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v0

    .line 73
    .local v0, "d":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;->_requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;-><init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 75
    .local v1, "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    const-string/jumbo v2, "appserver_data"

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getDictValue()Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createDictFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/Map;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addDictionary(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "REQUEST_INFO: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v2, "REQUEST_INFO"

    invoke-virtual {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/text/TextRecognizeTransaction;->sendDictParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 80
    return-void
.end method

.method protected supportsRecording()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
