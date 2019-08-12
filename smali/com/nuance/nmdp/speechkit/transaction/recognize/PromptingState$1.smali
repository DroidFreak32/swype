.class Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState$1;
.super Ljava/lang/Object;
.source "PromptingState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;->promptDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;

    iget-object v2, v2, Lcom/nuance/nmdp/speechkit/transaction/recognize/PromptingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecordingState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    .line 25
    return-void
.end method
