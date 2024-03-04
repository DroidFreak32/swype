.class abstract Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;
.super Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransactionStateBase;
.source "ActiveStateBase.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final commandEvent(S)V
    .locals 1
    .param p1, "event"    # S

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;->error(I)V

    .line 18
    return-void
.end method

.method public final createCommandFailed()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;->error(I)V

    .line 23
    return-void
.end method

.method public final queryError(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;->error(ILjava/lang/String;)V

    .line 28
    return-void
.end method

.method public final queryRetry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;->error(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
