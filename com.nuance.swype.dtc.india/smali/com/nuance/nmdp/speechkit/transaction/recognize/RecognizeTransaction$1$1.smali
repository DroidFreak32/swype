.class Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$1;
.super Ljava/lang/Object;
.source "RecognizeTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;->started(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$1;->this$1:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$1;->this$1:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->access$100(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;->recordingStarted()V

    .line 189
    return-void
.end method
