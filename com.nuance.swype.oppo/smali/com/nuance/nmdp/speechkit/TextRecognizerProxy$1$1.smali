.class Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$1;
.super Ljava/lang/Object;
.source "TextRecognizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;

.field final synthetic val$error:Lcom/nuance/nmdp/speechkit/SpeechError;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$1;->val$error:Lcom/nuance/nmdp/speechkit/SpeechError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;)Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;)Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1$1;->val$error:Lcom/nuance/nmdp/speechkit/SpeechError;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;->onError(Lcom/nuance/nmdp/speechkit/TextRecognizer;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 68
    :cond_0
    return-void
.end method
