.class Lcom/nuance/nmdp/speechkit/SpeechKitInternal$7;
.super Ljava/lang/Object;
.source "SpeechKitInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->cancelCurrent()V
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
    .line 965
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$7;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$7;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # getter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_transactionRunner:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$000(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->cancelCurrent()V

    .line 969
    return-void
.end method
