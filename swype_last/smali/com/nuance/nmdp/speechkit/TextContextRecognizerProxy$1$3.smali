.class Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$3;
.super Ljava/lang/Object;
.source "TextContextRecognizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->onRecordingDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$3;->this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$3;->this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 76
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$3;->this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$3;->this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/Recognizer$Listener;->onRecordingDone(Lcom/nuance/nmdp/speechkit/Recognizer;)V

    .line 78
    :cond_19
    return-void
.end method
