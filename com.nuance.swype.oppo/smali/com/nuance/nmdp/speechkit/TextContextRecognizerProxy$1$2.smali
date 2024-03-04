.class Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$2;
.super Ljava/lang/Object;
.source "TextContextRecognizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->onRecordingBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/Recognizer$Listener;->onRecordingBegin(Lcom/nuance/nmdp/speechkit/Recognizer;)V

    .line 66
    :cond_0
    return-void
.end method
