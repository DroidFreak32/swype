.class Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$1;
.super Ljava/lang/Object;
.source "TextContextRecognizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

.field final synthetic val$error:Lcom/nuance/nmdp/speechkit/SpeechError;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 3

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$1;->val$error:Lcom/nuance/nmdp/speechkit/SpeechError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 52
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$1;->val$error:Lcom/nuance/nmdp/speechkit/SpeechError;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/Recognizer$Listener;->onError(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 54
    :cond_1b
    return-void
.end method
