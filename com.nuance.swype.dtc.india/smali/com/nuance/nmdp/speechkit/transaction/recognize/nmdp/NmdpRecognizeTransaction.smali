.class public Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;
.super Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;
.source "NmdpRecognizeTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction$1;
    }
.end annotation


# instance fields
.field private _grammar_list:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

.field private final _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V
    .locals 18
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "detectionType"    # I
    .param p5, "endOfSpeechDuration"    # I
    .param p6, "startOfSpeechTimeout"    # I
    .param p7, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p8, "language"    # Ljava/lang/String;
    .param p9, "grammarList"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    .param p10, "startPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p11, "stopPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p12, "resultPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p13, "errorPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p15, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .param p16, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;",
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
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p14, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<*>;"
    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v2 .. v17}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Ljava/util/List;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    .line 44
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;->_type:Ljava/lang/String;

    .line 45
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;->_grammar_list:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    .line 46
    return-void
.end method


# virtual methods
.method protected addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .locals 2
    .param p1, "dict"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 52
    const-string/jumbo v0, "dictation_language"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;->_language:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "dictation_type"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;->_type:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method protected getAudioParamName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "AUDIO_INFO"

    return-object v0
.end method

.method protected getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getAsrCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sendParams()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v0

    .line 71
    .local v0, "d":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string/jumbo v2, "start"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    .line 72
    const-string/jumbo v2, "end"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    .line 73
    const-string/jumbo v2, "text"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;->_grammar_list:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    if-eqz v2, :cond_0

    .line 76
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;->_grammar_list:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;-><init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 77
    .local v1, "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    const-string/jumbo v2, "grammar_list"

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getSeqValue()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createSeqFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/List;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    .line 80
    .end local v1    # "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    :cond_0
    const-string/jumbo v2, "binary_results"

    invoke-interface {v0, v2, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    .line 82
    sget-object v2, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction$1;->$SwitchMap$com$nuance$nmdp$speechkit$SpeechKit$PartialResultsMode:[I

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;->_partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    const-string/jumbo v2, "REQUEST_INFO"

    invoke-virtual {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;->sendDictParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 114
    return-void

    .line 87
    :pswitch_1
    const-string/jumbo v2, "intermediate_response_mode"

    const-string/jumbo v3, "UtteranceDetectionWithCompleteRecognition"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v2, "enable_intermediate_response"

    invoke-interface {v0, v2, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 91
    :pswitch_2
    const-string/jumbo v2, "intermediate_response_mode"

    const-string/jumbo v3, "UtteranceDetectionWithCompleteRecognition"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v2, "utterance_detection_silence_duration"

    const-string/jumbo v3, "VeryAggressive"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_3
    const-string/jumbo v2, "intermediate_response_mode"

    const-string/jumbo v3, "UtteranceDetectionWithCompleteRecognition"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v2, "utterance_detection_silence_duration"

    const-string/jumbo v3, "Aggressive"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_4
    const-string/jumbo v2, "intermediate_response_mode"

    const-string/jumbo v3, "UtteranceDetectionWithCompleteRecognition"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v2, "utterance_detection_silence_duration"

    const-string/jumbo v3, "Average"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_5
    const-string/jumbo v2, "intermediate_response_mode"

    const-string/jumbo v3, "UtteranceDetectionWithCompleteRecognition"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v2, "utterance_detection_silence_duration"

    const-string/jumbo v3, "Conservative"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_6
    const-string/jumbo v2, "intermediate_response_mode"

    const-string/jumbo v3, "NoUtteranceDetectionWithPartialRecognition"

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected supportsRecording()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
