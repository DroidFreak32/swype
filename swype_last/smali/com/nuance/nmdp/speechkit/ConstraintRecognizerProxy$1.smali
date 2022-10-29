.class Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;
.super Lcom/nuance/nmdp/speechkit/ConstraintRecognizerImpl;
.source "ConstraintRecognizerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->createRecognizer(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)Lcom/nuance/nmdp/speechkit/RecognizerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V
    .registers 19
    .param p2, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # I
    .param p5, "x3"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p6, "x4"    # I
    .param p7, "x5"    # Ljava/lang/String;
    .param p8, "x6"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    .param p9, "x7"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerImpl;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 4
    .param p1, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$1;-><init>(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    # invokes: Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->access$100(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method protected onRecordingBegin()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$2;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$2;-><init>(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;)V

    # invokes: Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->access$200(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method protected onRecordingDone()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$3;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$3;-><init>(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;)V

    # invokes: Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->access$300(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method protected onResults(Lcom/nuance/nmdp/speechkit/Recognition;)V
    .registers 4
    .param p1, "result"    # Lcom/nuance/nmdp/speechkit/Recognition;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$4;

    invoke-direct {v1, p0, p1}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$4;-><init>(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;Lcom/nuance/nmdp/speechkit/Recognition;)V

    # invokes: Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->access$400(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method protected bridge synthetic onResults(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lcom/nuance/nmdp/speechkit/Recognition;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->onResults(Lcom/nuance/nmdp/speechkit/Recognition;)V

    return-void
.end method
