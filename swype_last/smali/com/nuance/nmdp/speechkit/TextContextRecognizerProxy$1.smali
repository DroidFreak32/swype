.class Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;
.super Lcom/nuance/nmdp/speechkit/TextContextRecognizerImpl;
.source "TextContextRecognizerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->createRecognizer(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)Lcom/nuance/nmdp/speechkit/RecognizerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V
    .registers 17
    .param p2, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # I
    .param p5, "x3"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # Lcom/nuance/nmdp/speechkit/TextContext;
    .param p8, "x6"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerImpl;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V

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
    .line 99
    new-instance v0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v0

    return-object v0
.end method

.method protected onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 4
    .param p1, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$1;-><init>(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    # invokes: Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->access$100(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method protected onRecordingBegin()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$2;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$2;-><init>(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;)V

    # invokes: Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->access$200(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method protected onRecordingDone()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$3;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$3;-><init>(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;)V

    # invokes: Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->access$300(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method protected onResults(Lcom/nuance/nmdp/speechkit/Recognition;)V
    .registers 4
    .param p1, "result"    # Lcom/nuance/nmdp/speechkit/Recognition;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$4;

    invoke-direct {v1, p0, p1}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$4;-><init>(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;Lcom/nuance/nmdp/speechkit/Recognition;)V

    # invokes: Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->access$400(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method protected bridge synthetic onResults(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lcom/nuance/nmdp/speechkit/Recognition;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->onResults(Lcom/nuance/nmdp/speechkit/Recognition;)V

    return-void
.end method
