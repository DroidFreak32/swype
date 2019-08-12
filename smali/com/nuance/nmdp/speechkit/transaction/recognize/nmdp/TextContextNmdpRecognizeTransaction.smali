.class public Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;
.super Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;
.source "TextContextNmdpRecognizeTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction$1;
    }
.end annotation


# instance fields
.field private final _textContext:Lcom/nuance/nmdp/speechkit/TextContext;


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V
    .locals 19
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "detectionType"    # I
    .param p5, "endOfSpeechDuration"    # I
    .param p6, "startOfSpeechTimeout"    # I
    .param p7, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p8, "language"    # Ljava/lang/String;
    .param p9, "textContext"    # Lcom/nuance/nmdp/speechkit/TextContext;
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
            "Lcom/nuance/nmdp/speechkit/TextContext;",
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
    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    invoke-direct/range {v2 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V

    .line 43
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->_textContext:Lcom/nuance/nmdp/speechkit/TextContext;

    .line 44
    return-void
.end method

.method private getCustomWordsChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->context()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerConfig;->getCurrentChecksum(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .locals 3
    .param p1, "dict"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/NmdpRecognizeTransaction;->addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 56
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->_textContext:Lcom/nuance/nmdp/speechkit/TextContext;

    iget-object v2, v2, Lcom/nuance/nmdp/speechkit/TextContext;->mCustomStringLog:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 57
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->_textContext:Lcom/nuance/nmdp/speechkit/TextContext;

    iget-object v2, v2, Lcom/nuance/nmdp/speechkit/TextContext;->mCustomStringLog:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->_textContext:Lcom/nuance/nmdp/speechkit/TextContext;

    iget-object v2, v2, Lcom/nuance/nmdp/speechkit/TextContext;->mCustomIntegerLog:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 62
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->_textContext:Lcom/nuance/nmdp/speechkit/TextContext;

    iget-object v2, v2, Lcom/nuance/nmdp/speechkit/TextContext;->mCustomIntegerLog:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 65
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected sendParams()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/transaction/TransactionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 74
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v0

    .line 75
    .local v0, "d":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string v3, "start"

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->_textContext:Lcom/nuance/nmdp/speechkit/TextContext;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/TextContext;->getStartCursor()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    .line 76
    const-string v3, "end"

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->_textContext:Lcom/nuance/nmdp/speechkit/TextContext;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/TextContext;->getEndCursor()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    .line 77
    const-string v3, "text"

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->_textContext:Lcom/nuance/nmdp/speechkit/TextContext;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/TextContext;->getTextUTF8()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v3, "binary_results"

    invoke-interface {v0, v3, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    .line 80
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->_textContext:Lcom/nuance/nmdp/speechkit/TextContext;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/TextContext;->needCustomWordRecogniztion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->createSequence()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v1

    .line 82
    .local v1, "grammarList":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v2

    .line 83
    .local v2, "grammarListDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string v3, "type"

    const-string v4, "custom_words"

    invoke-interface {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "id"

    const-string v4, "xt9_udb_entries"

    invoke-interface {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "checksum"

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->getCustomWordsChecksum()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-interface {v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addDictionary(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 88
    const-string v3, "grammar_list"

    invoke-interface {v0, v3, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    .line 93
    .end local v1    # "grammarList":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .end local v2    # "grammarListDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    :cond_0
    sget-object v3, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction$1;->$SwitchMap$com$nuance$nmdp$speechkit$SpeechKit$PartialResultsMode:[I

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->_partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 123
    :goto_0
    :pswitch_0
    const-string v3, "REQUEST_INFO"

    invoke-virtual {p0, v3, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/nmdp/TextContextNmdpRecognizeTransaction;->sendDictParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 129
    return-void

    .line 97
    :pswitch_1
    const-string v3, "intermediate_response_mode"

    const-string v4, "UtteranceDetectionWithCompleteRecognition"

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v3, "enable_intermediate_response"

    invoke-interface {v0, v3, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v3, "intermediate_response_mode"

    const-string v4, "UtteranceDetectionWithCompleteRecognition"

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v3, "utterance_detection_silence_duration"

    const-string v4, "VeryAggressive"

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "enable_intermediate_response"

    invoke-interface {v0, v3, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 106
    :pswitch_3
    const-string v3, "intermediate_response_mode"

    const-string v4, "UtteranceDetectionWithCompleteRecognition"

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "utterance_detection_silence_duration"

    const-string v4, "Aggressive"

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v3, "enable_intermediate_response"

    invoke-interface {v0, v3, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 111
    :pswitch_4
    const-string v3, "intermediate_response_mode"

    const-string v4, "UtteranceDetectionWithCompleteRecognition"

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v3, "utterance_detection_silence_duration"

    const-string v4, "Average"

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "enable_intermediate_response"

    invoke-interface {v0, v3, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 116
    :pswitch_5
    const-string v3, "intermediate_response_mode"

    const-string v4, "UtteranceDetectionWithCompleteRecognition"

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v3, "utterance_detection_silence_duration"

    const-string v4, "Conservative"

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v3, "enable_intermediate_response"

    invoke-interface {v0, v3, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 121
    :pswitch_6
    const-string v3, "intermediate_response_mode"

    const-string v4, "NoUtteranceDetectionWithPartialRecognition"

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v3, "enable_intermediate_response"

    invoke-interface {v0, v3, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 93
    nop

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
