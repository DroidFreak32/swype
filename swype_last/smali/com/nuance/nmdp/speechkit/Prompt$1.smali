.class Lcom/nuance/nmdp/speechkit/Prompt$1;
.super Ljava/lang/Object;
.source "Prompt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/Prompt;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/Prompt;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/Prompt;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/Prompt$1;->this$0:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/Prompt$1;->this$0:Lcom/nuance/nmdp/speechkit/Prompt;

    # getter for: Lcom/nuance/nmdp/speechkit/Prompt;->_speechKit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->access$000(Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 36
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/Prompt$1;->this$0:Lcom/nuance/nmdp/speechkit/Prompt;

    # getter for: Lcom/nuance/nmdp/speechkit/Prompt;->_speechKit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->access$000(Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/Prompt$1;->this$0:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->deletePrompt(Lcom/nuance/nmdp/speechkit/Prompt;)V

    .line 38
    :cond_13
    return-void
.end method
