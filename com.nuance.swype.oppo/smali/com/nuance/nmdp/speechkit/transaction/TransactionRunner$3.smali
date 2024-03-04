.class Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$3;
.super Ljava/lang/Object;
.source "TransactionRunner.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createNluRecognizeTransaction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
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
    .line 342
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$3;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$3;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

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
    .line 351
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$3;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$3;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->access$100(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;)V

    .line 355
    :cond_0
    return-void
.end method

.method public recordingStarted(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .locals 1
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$3;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->recordingStarted(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 360
    return-void
.end method

.method public recordingStopped(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .locals 1
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$3;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->recordingStopped(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 365
    return-void
.end method

.method public results(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .locals 1
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$3;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->results(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 370
    return-void
.end method

.method public transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .locals 1
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$3;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-static {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->access$000(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 346
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$3;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;->transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 347
    return-void
.end method
