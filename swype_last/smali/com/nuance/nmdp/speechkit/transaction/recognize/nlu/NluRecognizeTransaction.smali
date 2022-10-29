.class public Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;
.super Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;
.source "NluRecognizeTransaction.java"


# instance fields
.field private _appSessionId:Ljava/lang/String;

.field private _requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

.field private final _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V
    .registers 33
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "detectionType"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "appSessionId"    # Ljava/lang/String;
    .param p7, "requestParams"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p8, "startPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p9, "stopPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p10, "resultPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p11, "errorPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p13, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .param p14, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;",
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
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p12, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    invoke-direct/range {v2 .. v17}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Ljava/util/List;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    .line 44
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;->_type:Ljava/lang/String;

    .line 45
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;->_requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    .line 46
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;->_appSessionId:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method protected addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .registers 4
    .param p1, "dict"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 53
    const-string/jumbo v0, "dictation_language"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;->_language:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "dictation_type"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;->_type:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;->_appSessionId:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 56
    const-string/jumbo v0, "application_session_id"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;->_appSessionId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1f
    return-void
.end method

.method protected getAudioParamName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const-string/jumbo v0, "AUDIO_INFO"

    return-object v0
.end method

.method protected getCommandName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getAsrCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sendParams()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v0

    .line 75
    .local v0, "d":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string/jumbo v2, "start"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    .line 76
    const-string/jumbo v2, "end"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    .line 77
    const-string/jumbo v2, "text"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;->_requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;-><init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 81
    .local v1, "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    const-string/jumbo v2, "appserver_data"

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getDictValue()Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createDictFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/Map;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addDictionary(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "REQUEST_INFO: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v2, "REQUEST_INFO"

    invoke-virtual {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nlu/NluRecognizeTransaction;->sendDictParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 86
    return-void
.end method

.method protected supportsRecording()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method
