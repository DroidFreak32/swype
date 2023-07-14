.class final Lcom/nuance/nmdp/speechkit/transaction/recognize/ErrorState;
.super Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;
.source "ErrorState.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;


# instance fields
.field private final _transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;
    .param p2, "errorCode"    # I
    .param p3, "errorString"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;
    .param p5, "reportImmediately"    # Z

    .prologue
    .line 11
    invoke-direct/range {p0 .. p5}, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 12
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/ErrorState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .line 13
    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/ErrorState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->stopRecording()V

    .line 20
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/ErrorState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->stopStartPrompt()V

    .line 22
    invoke-super {p0}, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->enter()V

    .line 24
    iget v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/ErrorState;->_code:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/ErrorState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->playErrorPrompt()V

    .line 26
    :cond_0
    return-void
.end method

.method public final promptError()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public final promptStopped()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public final recordingError()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public final recordingSignalEnergy(F)V
    .locals 0
    .param p1, "energy"    # F

    .prologue
    .line 34
    return-void
.end method

.method public final recordingStarted()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public final recordingStopped()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public final stop()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
