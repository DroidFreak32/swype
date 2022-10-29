.class final Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;
.super Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;
.source "PromptingState.java"


# instance fields
.field private final RECORDED_BUFFER_DELAYED_TIME:I


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V
    .registers 3
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ActiveStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    .line 12
    const/16 v0, 0xc8

    iput v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;->RECORDED_BUFFER_DELAYED_TIME:I

    .line 10
    return-void
.end method

.method private promptDone()V
    .registers 3

    .prologue
    .line 19
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState$1;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;)V

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;->error(I)V

    .line 60
    return-void
.end method

.method public final enter()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->playStartPrompt()Z

    move-result v0

    if-nez v0, :cond_b

    .line 43
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;->promptDone()V

    .line 45
    :cond_b
    return-void
.end method

.method public final promptError()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;->promptDone()V

    .line 32
    return-void
.end method

.method public final promptStopped()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;->promptDone()V

    .line 37
    return-void
.end method

.method public final recordingError()V
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;->error(I)V

    .line 55
    return-void
.end method

.method public final recordingStopped()V
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;->error(I)V

    .line 50
    return-void
.end method
