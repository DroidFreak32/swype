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
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iput-object p2, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 208
    invoke-static {}, Lcom/nuance/speech/dragon/DragonDictation;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio level Runnable..mRecordingState.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v2, v2, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v2}, Lcom/nuance/speech/dragon/DragonDictation;->access$500(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/speech/Dictation$RecordingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Lcom/nuance/speech/dragon/DragonDictation;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Audio level Runnable..mCurrentRecognizer is null.."

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v0, v0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v0}, Lcom/nuance/speech/dragon/DragonDictation;->access$600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v0, v0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v0}, Lcom/nuance/speech/dragon/DragonDictation;->access$700(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v0, v0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v0}, Lcom/nuance/speech/dragon/DragonDictation;->access$600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v0, v0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v0}, Lcom/nuance/speech/dragon/DragonDictation;->access$800(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/DictationEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/nuance/speech/dragon/DragonDictation;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRecordingBegin() audio level = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v2, v2, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v2}, Lcom/nuance/speech/dragon/DragonDictation;->access$600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/Recognizer;->getAudioLevel()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v0, v0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_AudioLevel:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    iget-object v2, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v2, v2, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    iget-object v3, p0, Lcom/nuance/speech/dragon/DragonDictation$1$1;->this$1:Lcom/nuance/speech/dragon/DragonDictation$1;

    iget-object v3, v3, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v3}, Lcom/nuance/speech/dragon/DragonDictation;->access$600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/Recognizer;->getAudioLevel()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/speech/dragon/DragonDictation;->access$900(Lcom/nuance/speech/dragon/DragonDictation;Ljava/lang/Float;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nuance/speech/dragon/DragonDictation;->access$1000(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 222
    :cond_0
    return-void

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
