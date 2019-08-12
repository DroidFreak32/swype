.class abstract Lcom/nuance/nmdp/speechkit/TextRecognizerImpl;
.super Lcom/nuance/nmdp/speechkit/RecognizerBase;
.source "TextRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/RecognizerBase",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
        ">;"
    }
.end annotation


# instance fields
.field _optionalParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;"
        }
    .end annotation
.end field

.field private final _requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/util/List;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V
    .locals 8
    .param p1, "transactionRunner"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "appSessionId"    # Ljava/lang/String;
    .param p4, "requestParams"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p6, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "grammarParams":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    const/4 v2, 0x0

    .line 28
    sget-object v4, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, p2

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/RecognizerBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;IILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V

    .line 29
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerImpl;->_requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    .line 30
    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerImpl;->_optionalParams:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method protected createResultParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<",
            "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;-><init>()V

    return-object v0
.end method

.method protected createTransaction(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    .locals 8
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
            "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;"
        }
    .end annotation

    .prologue
    .line 49
    .local p13, "resultParser":Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;, "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser<Lcom/nuance/nmdp/speechkit/GenericRecognition;>;"
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerImpl;->_requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerImpl;->_optionalParams:Ljava/util/List;

    move-object v0, p1

    move-object v1, p6

    move-object v2, p7

    move-object/from16 v5, p13

    move-object/from16 v6, p8

    move-object/from16 v7, p14

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createTextRecognizeTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    move-result-object v0

    return-object v0
.end method
