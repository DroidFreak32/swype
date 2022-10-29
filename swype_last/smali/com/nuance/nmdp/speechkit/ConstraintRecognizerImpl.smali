.class abstract Lcom/nuance/nmdp/speechkit/ConstraintRecognizerImpl;
.super Lcom/nuance/nmdp/speechkit/RecognizerBase;
.source "ConstraintRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/RecognizerBase",
        "<",
        "Lcom/nuance/nmdp/speechkit/Recognition;",
        ">;"
    }
.end annotation


# instance fields
.field private final _grammar_list:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

.field private final _type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V
    .registers 17
    .param p1, "transactionRunner"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "detectionType"    # I
    .param p4, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p5, "endOfSpeechDuration"    # I
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "grammarList"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    .param p8, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

    .prologue
    .line 27
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p5

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/RecognizerBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;IILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V

    .line 28
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerImpl;->_type:Ljava/lang/String;

    .line 29
    iput-object p7, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerImpl;->_grammar_list:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    .line 30
    return-void
.end method


# virtual methods
.method protected createResultParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<",
            "Lcom/nuance/nmdp/speechkit/Recognition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v0

    return-object v0
.end method

.method protected createTransaction(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    .registers 30
    .param p1, "transactionRunner"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p2, "detectionType"    # I
    .param p3, "endOfSpeechDuration"    # I
    .param p4, "startOfSpeechTimeout"    # I
    .param p5, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "appSessionId"    # Ljava/lang/String;
    .param p8, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .param p9, "startPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p10, "stopPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p11, "resultPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p12, "errorPrompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p14, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
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
            "<",
            "Lcom/nuance/nmdp/speechkit/Recognition;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;"
        }
    .end annotation

    .prologue
    .line 48
    .local p13, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<Lcom/nuance/nmdp/speechkit/Recognition;>;"
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerImpl;->_type:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerImpl;->_grammar_list:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p8

    move-object/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createConstraintRecognizeTransaction(Ljava/lang/String;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    move-result-object v0

    return-object v0
.end method
