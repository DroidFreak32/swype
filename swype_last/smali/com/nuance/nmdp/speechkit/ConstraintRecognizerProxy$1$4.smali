.class Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$4;
.super Ljava/lang/Object;
.source "ConstraintRecognizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->onResults(Lcom/nuance/nmdp/speechkit/Recognition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;

.field final synthetic val$result:Lcom/nuance/nmdp/speechkit/Recognition;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;Lcom/nuance/nmdp/speechkit/Recognition;)V
    .registers 3

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$4;->this$1:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$4;->val$result:Lcom/nuance/nmdp/speechkit/Recognition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$4;->this$1:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 103
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$4;->this$1:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$4;->this$1:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy$1$4;->val$result:Lcom/nuance/nmdp/speechkit/Recognition;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/Recognizer$Listener;->onResults(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/Recognition;)V

    .line 104
    :cond_1b
    return-void
.end method
