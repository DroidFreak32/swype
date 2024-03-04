.class Lcom/nuance/nmdp/speechkit/VocalizerProxy$1;
.super Ljava/lang/Object;
.source "VocalizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/VocalizerProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$voice:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$1;->val$voice:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$1;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->access$100(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getRunner()Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$1;->val$voice:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$1;->val$language:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->access$200(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;)V

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->access$002(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    .line 22
    return-void
.end method
