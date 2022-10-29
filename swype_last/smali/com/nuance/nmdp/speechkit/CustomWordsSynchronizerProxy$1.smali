.class Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$1;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

.field final synthetic val$dictationType:Ljava/lang/String;

.field final synthetic val$language:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$1;->val$dictationType:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$1;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->access$100(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getRunner()Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$1;->val$dictationType:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$1;->val$language:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    # invokes: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->createCustomWordsSynchronizerListener()Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->access$200(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;)V

    # setter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_synchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->access$002(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    .line 29
    return-void
.end method
