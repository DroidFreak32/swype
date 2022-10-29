.class Lcom/nuance/speech/dragon/DragonDictation$1$1;
.super Ljava/lang/Object;
.source "DragonDictation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/speech/dragon/DragonDictation$1;->onRecordingBegin(Lcom/nuance/nmdp/speechkit/Recognizer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/nuance/speech/dragon/DragonDictation$1;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$1"    # Lcom/nuance/speech/dragon/DragonDictation$1;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iput-object p2, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    # getter for: Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/speech/dragon/DragonDictation;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Audio level Runnable..mRecordingState.."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v5, v5, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    # getter for: Lcom/nuance/speech/dragon/DragonDictation;->mRecordingState:Lcom/nuance/speech/Dictation$RecordingState;
    invoke-static {v5}, Lcom/nuance/speech/dragon/DragonDictation;->access$500(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/speech/Dictation$RecordingState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 200
    # getter for: Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/speech/dragon/DragonDictation;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Audio level Runnable..mCurrentRecognizer is null.."

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v0, v0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    # getter for: Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;
    invoke-static {v0}, Lcom/nuance/speech/dragon/DragonDictation;->access$600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    if-nez v0, :cond_c3

    move v0, v1

    :goto_42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v0, v0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    # getter for: Lcom/nuance/speech/dragon/DragonDictation;->mRecordingState:Lcom/nuance/speech/Dictation$RecordingState;
    invoke-static {v0}, Lcom/nuance/speech/dragon/DragonDictation;->access$700(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v3, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v3, :cond_c2

    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v0, v0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    .line 202
    # getter for: Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;
    invoke-static {v0}, Lcom/nuance/speech/dragon/DragonDictation;->access$600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    if-eqz v0, :cond_c2

    .line 204
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v0, v0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    # getter for: Lcom/nuance/speech/dragon/DragonDictation;->mDictationListener:Lcom/nuance/speech/DictationEventListener;
    invoke-static {v0}, Lcom/nuance/speech/dragon/DragonDictation;->access$800(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/DictationEventListener;

    move-result-object v0

    if-eqz v0, :cond_c2

    .line 206
    # getter for: Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/speech/dragon/DragonDictation;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onRecordingBegin() audio level = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v4, v4, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    .line 207
    # getter for: Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;
    invoke-static {v4}, Lcom/nuance/speech/dragon/DragonDictation;->access$600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/Recognizer;->getAudioLevel()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 206
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v0, v0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_AudioLevel:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    iget-object v2, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v2, v2, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    iget-object v3, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v3, v3, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    .line 210
    # getter for: Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;
    invoke-static {v3}, Lcom/nuance/speech/dragon/DragonDictation;->access$600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/Recognizer;->getAudioLevel()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    # invokes: Lcom/nuance/speech/dragon/DragonDictation;->convertAudioLevel(Ljava/lang/Float;)I
    invoke-static {v2, v3}, Lcom/nuance/speech/dragon/DragonDictation;->access$900(Lcom/nuance/speech/dragon/DragonDictation;Ljava/lang/Float;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 208
    # invokes: Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/nuance/speech/dragon/DragonDictation;->access$1000(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 213
    :cond_c2
    return-void

    :cond_c3
    move v0, v2

    .line 200
    goto/16 :goto_42
.end method
