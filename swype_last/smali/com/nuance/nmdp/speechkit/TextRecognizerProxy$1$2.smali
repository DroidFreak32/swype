.class Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$2;
.super Ljava/lang/Object;
.source "TextRecognizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->onResults(Lcom/nuance/nmdp/speechkit/GenericRecognition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;

.field final synthetic val$result:Lcom/nuance/nmdp/speechkit/GenericRecognition;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;Lcom/nuance/nmdp/speechkit/GenericRecognition;)V
    .registers 3

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$2;->val$result:Lcom/nuance/nmdp/speechkit/GenericRecognition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;)Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 93
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;)Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$2;->val$result:Lcom/nuance/nmdp/speechkit/GenericRecognition;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;->onResults(Lcom/nuance/nmdp/speechkit/TextRecognizer;Lcom/nuance/nmdp/speechkit/GenericRecognition;)V

    .line 94
    :cond_1b
    return-void
.end method
