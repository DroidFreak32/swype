.class Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;
.super Ljava/lang/Object;
.source "RecognizerProxyBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

.field final synthetic val$detectionType:I

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase.1;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->val$type:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->val$detectionType:I

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 42
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase.1;"
    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->access$100(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getRunner()Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->val$type:Ljava/lang/String;

    iget v3, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->val$detectionType:I

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    invoke-static {v4}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->access$200(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->val$language:Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->access$300(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    invoke-static {v7}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->access$400(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->createRecognizer(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)Lcom/nuance/nmdp/speechkit/RecognizerBase;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->access$002(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;Lcom/nuance/nmdp/speechkit/RecognizerBase;)Lcom/nuance/nmdp/speechkit/RecognizerBase;

    .line 49
    return-void
.end method
