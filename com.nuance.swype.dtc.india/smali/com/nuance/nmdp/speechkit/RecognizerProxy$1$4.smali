.class Lcom/nuance/nmdp/speechkit/RecognizerProxy$1$4;
.super Ljava/lang/Object;
.source "RecognizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/RecognizerProxy$1;->onResults(Lcom/nuance/nmdp/speechkit/Recognition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/RecognizerProxy$1;

.field final synthetic val$result:Lcom/nuance/nmdp/speechkit/Recognition;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/RecognizerProxy$1;Lcom/nuance/nmdp/speechkit/Recognition;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxy$1$4;->this$1:Lcom/nuance/nmdp/speechkit/RecognizerProxy$1;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxy$1$4;->val$result:Lcom/nuance/nmdp/speechkit/Recognition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxy$1$4;->this$1:Lcom/nuance/nmdp/speechkit/RecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/RecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/RecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxy$1$4;->this$1:Lcom/nuance/nmdp/speechkit/RecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/RecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/RecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxy$1$4;->this$1:Lcom/nuance/nmdp/speechkit/RecognizerProxy$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/RecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxy;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxy$1$4;->val$result:Lcom/nuance/nmdp/speechkit/Recognition;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/Recognizer$Listener;->onResults(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/Recognition;)V

    .line 91
    :cond_0
    return-void
.end method
