.class Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$2;
.super Ljava/lang/Object;
.source "ConstraintRecognizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->onRecordingBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/Recognizer$Listener;->onRecordingBegin(Lcom/nuance/nmdp/speechkit/Recognizer;)V

    .line 76
    :cond_0
    return-void
.end method
