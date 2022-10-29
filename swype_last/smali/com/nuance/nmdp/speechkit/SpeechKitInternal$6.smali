.class Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;
.super Ljava/lang/Object;
.source "SpeechKitInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->setDefaultRecognizerPrompts(Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

.field final synthetic val$error:Lcom/nuance/nmdp/speechkit/Prompt;

.field final synthetic val$recordingStart:Lcom/nuance/nmdp/speechkit/Prompt;

.field final synthetic val$recordingStop:Lcom/nuance/nmdp/speechkit/Prompt;

.field final synthetic val$result:Lcom/nuance/nmdp/speechkit/Prompt;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;)V
    .registers 6

    .prologue
    .line 916
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$recordingStart:Lcom/nuance/nmdp/speechkit/Prompt;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$recordingStop:Lcom/nuance/nmdp/speechkit/Prompt;

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$result:Lcom/nuance/nmdp/speechkit/Prompt;

    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$error:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 919
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # setter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultStartPrompt:Lcom/nuance/nmdp/speechkit/Prompt;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$902(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    .line 920
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # setter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultEndPrompt:Lcom/nuance/nmdp/speechkit/Prompt;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$1002(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    .line 921
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # setter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultResultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$1102(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    .line 922
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # setter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultErrorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$1202(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    .line 924
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$recordingStart:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_2c

    .line 925
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$recordingStart:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->getPrompt()Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_72

    .line 926
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$recordingStart:Lcom/nuance/nmdp/speechkit/Prompt;

    # setter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultStartPrompt:Lcom/nuance/nmdp/speechkit/Prompt;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$902(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    .line 931
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$recordingStop:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_43

    .line 932
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$recordingStop:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->getPrompt()Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_79

    .line 933
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$recordingStop:Lcom/nuance/nmdp/speechkit/Prompt;

    # setter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultEndPrompt:Lcom/nuance/nmdp/speechkit/Prompt;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$1002(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    .line 938
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$result:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_5a

    .line 939
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$result:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->getPrompt()Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_80

    .line 940
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$result:Lcom/nuance/nmdp/speechkit/Prompt;

    # setter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultResultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$1102(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    .line 945
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$error:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_71

    .line 946
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$error:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->getPrompt()Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_87

    .line 947
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;->val$error:Lcom/nuance/nmdp/speechkit/Prompt;

    # setter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultErrorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$1202(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    .line 951
    :cond_71
    :goto_71
    return-void

    .line 928
    :cond_72
    const-string/jumbo v0, "Recording start prompt is invalid"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2c

    .line 935
    :cond_79
    const-string/jumbo v0, "Recording stop prompt is invalid"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_43

    .line 942
    :cond_80
    const-string/jumbo v0, "Result prompt is invalid"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5a

    .line 949
    :cond_87
    const-string/jumbo v0, "Error prompt is invalid"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_71
.end method
