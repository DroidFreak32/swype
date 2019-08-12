.class Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2$2;
.super Ljava/lang/Object;
.source "RecognizeTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;->stopped(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2$2;->this$1:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2$2;->this$1:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;->this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->access$100(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionState;->promptStopped()V

    .line 246
    return-void
.end method
