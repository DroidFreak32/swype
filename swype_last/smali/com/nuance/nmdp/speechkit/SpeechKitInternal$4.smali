.class Lcom/nuance/nmdp/speechkit/SpeechKitInternal$4;
.super Ljava/lang/Object;
.source "SpeechKitInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V
    .registers 2

    .prologue
    .line 322
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$4;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 325
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$4;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # getter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_transactionRunner:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$000(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    move-result-object v1

    new-instance v2, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$4$1;

    invoke-direct {v2, p0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$4$1;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal$4;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createConnectTransaction(Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;Z)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    move-result-object v0

    .line 335
    .local v0, "t":Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    if-eqz v0, :cond_15

    .line 337
    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->start()V

    .line 339
    :cond_15
    return-void
.end method
