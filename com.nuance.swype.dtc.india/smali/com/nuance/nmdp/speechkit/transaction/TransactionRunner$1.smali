.class Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$1;
.super Ljava/lang/Object;
.source "TransactionRunner.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createNmdpRecognizeTransaction(Ljava/lang/String;IIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

.field final synthetic val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$1;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .param p2, "errorCode"    # I
    .param p3, "errorText"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$1;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->access$100(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;)V

    .line 238
    :cond_0
    return-void
.end method

.method public recordingStarted(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .locals 1
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$1;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->recordingStarted(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 243
    return-void
.end method

.method public recordingStopped(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .locals 1
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$1;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->recordingStopped(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 248
    return-void
.end method

.method public results(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .locals 1
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$1;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->results(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 253
    return-void
.end method

.method public transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .locals 1
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-static {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->access$000(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 229
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$1;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 230
    return-void
.end method
