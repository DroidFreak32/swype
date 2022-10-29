.class Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;
.super Lcom/nuance/nmdp/speechkit/TextRecognizerImpl;
.source "TextRecognizerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->createRecognizer(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)Lcom/nuance/nmdp/speechkit/RecognizerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/util/List;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V
    .registers 15
    .param p2, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p7, "x5"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

    .prologue
    .line 57
    .local p6, "x4":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/TextRecognizerImpl;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/util/List;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 4
    .param p1, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$1;-><init>(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    # invokes: Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->access$100(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method protected onRecordingBegin()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    const-string/jumbo v1, "onRecordingRegin is called for TextRecognizer for nothing."

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected onRecordingDone()V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    const-string/jumbo v1, "onRecordingDone is called for TextRecognizer for nothing."

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected onResults(Lcom/nuance/nmdp/speechkit/GenericRecognition;)V
    .registers 4
    .param p1, "result"    # Lcom/nuance/nmdp/speechkit/GenericRecognition;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$2;

    invoke-direct {v1, p0, p1}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$2;-><init>(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;Lcom/nuance/nmdp/speechkit/GenericRecognition;)V

    # invokes: Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->access$200(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method protected bridge synthetic onResults(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lcom/nuance/nmdp/speechkit/GenericRecognition;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->onResults(Lcom/nuance/nmdp/speechkit/GenericRecognition;)V

    return-void
.end method
