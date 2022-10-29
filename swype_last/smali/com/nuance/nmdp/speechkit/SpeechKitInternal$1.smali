.class Lcom/nuance/nmdp/speechkit/SpeechKitInternal$1;
.super Ljava/lang/Object;
.source "SpeechKitInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/SpeechKitInternal;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V
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
    .line 122
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$1;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$1;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    new-instance v1, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$1;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # getter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$100(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;)V

    # setter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_transactionRunner:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$002(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;)Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    .line 126
    return-void
.end method
