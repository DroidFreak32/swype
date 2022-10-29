.class Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1$4;
.super Ljava/lang/Object;
.source "NluRecognizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1;->onResults(Lcom/nuance/nmdp/speechkit/GenericRecognition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1;

.field final synthetic val$result:Lcom/nuance/nmdp/speechkit/GenericRecognition;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1;Lcom/nuance/nmdp/speechkit/GenericRecognition;)V
    .registers 3

    .prologue
    .line 99
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1$4;->this$1:Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1$4;->val$result:Lcom/nuance/nmdp/speechkit/GenericRecognition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1$4;->this$1:Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;)Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 104
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1$4;->this$1:Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;)Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1$4;->this$1:Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1$4;->val$result:Lcom/nuance/nmdp/speechkit/GenericRecognition;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;->onResults(Lcom/nuance/nmdp/speechkit/NluRecognizer;Lcom/nuance/nmdp/speechkit/GenericRecognition;)V

    .line 105
    :cond_1b
    return-void
.end method
