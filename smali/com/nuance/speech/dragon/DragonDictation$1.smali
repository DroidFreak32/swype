.class Lcom/nuance/speech/dragon/DragonDictation$1;
.super Ljava/lang/Object;
.source "DragonDictation.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Recognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/speech/dragon/DragonDictation;->createListener()Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/speech/dragon/DragonDictation;


# direct methods
.method constructor <init>(Lcom/nuance/speech/dragon/DragonDictation;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 4
    .param p1, "recognizer"    # Lcom/nuance/nmdp/speechkit/Recognizer;
    .param p2, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-static {}, Lcom/nuance/speech/dragon/DragonDictation;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError() error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 256
    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 277
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V

    .line 278
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Failed:Lcom/nuance/speech/Dictation$DictationState;

    invoke-static {v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->access$2000(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V

    .line 279
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v0}, Lcom/nuance/speech/dragon/DragonDictation;->access$1100(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/dragon/SpeechKitWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Connection_Failed:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-static {v0, v1, v3}, Lcom/nuance/speech/dragon/DragonDictation;->access$2100(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v0, v3}, Lcom/nuance/speech/dragon/DragonDictation;->access$602(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 291
    :goto_1
    return-void

    .line 258
    :sswitch_0
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Canceled:Lcom/nuance/speech/Dictation$DictationState;

    invoke-static {v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->access$1600(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V

    .line 259
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V

    .line 260
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Canceled:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-static {v0, v1, v3}, Lcom/nuance/speech/dragon/DragonDictation;->access$1700(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v0, v3}, Lcom/nuance/speech/dragon/DragonDictation;->access$602(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;

    goto :goto_1

    .line 266
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V

    .line 267
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Failed:Lcom/nuance/speech/Dictation$DictationState;

    invoke-static {v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->access$1800(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V

    .line 268
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Connection_Failed:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-static {v0, v1, v3}, Lcom/nuance/speech/dragon/DragonDictation;->access$1900(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v0, v3}, Lcom/nuance/speech/dragon/DragonDictation;->access$602(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;

    goto :goto_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Failed:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-static {v0, v1, v3}, Lcom/nuance/speech/dragon/DragonDictation;->access$2200(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 193
    check-cast p1, Lcom/nuance/nmdp/speechkit/Recognizer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation$1;->onError(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    return-void
.end method

.method public onRecordingBegin(Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .locals 4
    .param p1, "recognizer"    # Lcom/nuance/nmdp/speechkit/Recognizer;

    .prologue
    .line 195
    invoke-static {}, Lcom/nuance/speech/dragon/DragonDictation;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "onRecordingBegin()"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v1}, Lcom/nuance/speech/dragon/DragonDictation;->access$100(Lcom/nuance/speech/dragon/DragonDictation;)V

    .line 197
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v1}, Lcom/nuance/speech/dragon/DragonDictation;->access$200(Lcom/nuance/speech/dragon/DragonDictation;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 198
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v2, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    invoke-virtual {v1, v2}, Lcom/nuance/speech/dragon/DragonDictation;->setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V

    .line 199
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v2, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Stopped:Lcom/nuance/speech/Dictation$DictationState;

    invoke-static {v1, v2}, Lcom/nuance/speech/dragon/DragonDictation;->access$300(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V

    .line 201
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v2, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Started:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/nuance/speech/dragon/DragonDictation;->access$400(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 206
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/nuance/speech/dragon/DragonDictation$1$1;

    invoke-direct {v1, p0, v0}, Lcom/nuance/speech/dragon/DragonDictation$1$1;-><init>(Lcom/nuance/speech/dragon/DragonDictation$1;Landroid/os/Handler;)V

    .line 225
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 226
    return-void
.end method

.method public bridge synthetic onRecordingBegin(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 193
    check-cast p1, Lcom/nuance/nmdp/speechkit/Recognizer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation$1;->onRecordingBegin(Lcom/nuance/nmdp/speechkit/Recognizer;)V

    return-void
.end method

.method public onRecordingDone(Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .locals 3
    .param p1, "recognizer"    # Lcom/nuance/nmdp/speechkit/Recognizer;

    .prologue
    const/4 v2, 0x0

    .line 229
    invoke-static {}, Lcom/nuance/speech/dragon/DragonDictation;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "onRecordingDone()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V

    .line 239
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/DragonDictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Canceled:Lcom/nuance/speech/Dictation$DictationState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/DragonDictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Failed:Lcom/nuance/speech/Dictation$DictationState;

    if-eq v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v0}, Lcom/nuance/speech/dragon/DragonDictation;->access$1100(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/dragon/SpeechKitWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    if-ne v0, v1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Stopped:Lcom/nuance/speech/Dictation$DictationState;

    invoke-static {v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->access$1200(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V

    .line 243
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Stopped:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-static {v0, v1, v2}, Lcom/nuance/speech/dragon/DragonDictation;->access$1300(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    invoke-static {v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->access$1400(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V

    .line 247
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Started:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-static {v0, v1, v2}, Lcom/nuance/speech/dragon/DragonDictation;->access$1500(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onRecordingDone(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 193
    check-cast p1, Lcom/nuance/nmdp/speechkit/Recognizer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation$1;->onRecordingDone(Lcom/nuance/nmdp/speechkit/Recognizer;)V

    return-void
.end method

.method public onResults(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/Recognition;)V
    .locals 10
    .param p1, "recognizer"    # Lcom/nuance/nmdp/speechkit/Recognizer;
    .param p2, "results"    # Lcom/nuance/nmdp/speechkit/Recognition;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 295
    move-object v0, p2

    check-cast v0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;

    .line 296
    .local v0, "binResult":Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->isFinalResponse()Z

    move-result v2

    .line 298
    .local v2, "isFinalResponse":Z
    invoke-static {}, Lcom/nuance/speech/dragon/DragonDictation;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    const-string v7, "onResults... isFinalResponse = "

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    iget-object v6, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v6}, Lcom/nuance/speech/dragon/DragonDictation;->access$2300(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/DictationEventListener;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v6}, Lcom/nuance/speech/dragon/DragonDictation;->access$2400(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/SpeechResultTextBuffer;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 301
    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-virtual {v6}, Lcom/nuance/speech/dragon/DragonDictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v6

    sget-object v7, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v6, v7, :cond_4

    move v1, v4

    .line 302
    .local v1, "isFinal":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 303
    iget-object v6, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v7, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Stopped:Lcom/nuance/speech/Dictation$DictationState;

    invoke-static {v6, v7}, Lcom/nuance/speech/dragon/DragonDictation;->access$2500(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V

    .line 304
    iget-object v6, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v7, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    invoke-virtual {v6, v7}, Lcom/nuance/speech/dragon/DragonDictation;->setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V

    .line 307
    :cond_0
    iget-object v6, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v6}, Lcom/nuance/speech/dragon/DragonDictation;->access$1100(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/dragon/SpeechKitWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v6

    sget-object v7, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    if-ne v6, v7, :cond_5

    .line 310
    .local v4, "streaming":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 311
    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v5}, Lcom/nuance/speech/dragon/DragonDictation;->access$2600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/SpeechResultTextBuffer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->results()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-virtual {v7}, Lcom/nuance/speech/dragon/DragonDictation;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/speech/dragon/DragonDictation;->isLanguageSupportLeadingSpace(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/nuance/speech/SpeechResultTextBuffer;->updateResult(Ljava/lang/Object;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 313
    .local v3, "result":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v5}, Lcom/nuance/speech/dragon/DragonDictation;->access$2700(Lcom/nuance/speech/dragon/DragonDictation;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 314
    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v5}, Lcom/nuance/speech/dragon/DragonDictation;->access$200(Lcom/nuance/speech/dragon/DragonDictation;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 317
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v5}, Lcom/nuance/speech/dragon/DragonDictation;->access$2700(Lcom/nuance/speech/dragon/DragonDictation;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 318
    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v6, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_UpdateResult:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    new-instance v7, Lcom/nuance/speech/Dictation$SpeechResult;

    iget-object v8, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-direct {v7, v8, v3, v4, v1}, Lcom/nuance/speech/Dictation$SpeechResult;-><init>(Lcom/nuance/speech/Dictation;Ljava/lang/CharSequence;ZZ)V

    invoke-static {v5, v6, v7}, Lcom/nuance/speech/dragon/DragonDictation;->access$2800(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 324
    .end local v3    # "result":Ljava/lang/CharSequence;
    :cond_2
    if-eqz v1, :cond_3

    .line 326
    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v5, v9}, Lcom/nuance/speech/dragon/DragonDictation;->access$602(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 328
    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v5}, Lcom/nuance/speech/dragon/DragonDictation;->access$2700(Lcom/nuance/speech/dragon/DragonDictation;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v5}, Lcom/nuance/speech/dragon/DragonDictation;->access$200(Lcom/nuance/speech/dragon/DragonDictation;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 329
    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v6, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_UpdateResult:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    new-instance v7, Lcom/nuance/speech/Dictation$SpeechResult;

    iget-object v8, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    iget-object v9, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v9}, Lcom/nuance/speech/dragon/DragonDictation;->access$200(Lcom/nuance/speech/dragon/DragonDictation;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {v7, v8, v9, v4, v1}, Lcom/nuance/speech/Dictation$SpeechResult;-><init>(Lcom/nuance/speech/Dictation;Ljava/lang/CharSequence;ZZ)V

    invoke-static {v5, v6, v7}, Lcom/nuance/speech/dragon/DragonDictation;->access$2900(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 343
    .end local v1    # "isFinal":Z
    .end local v4    # "streaming":Z
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v1, v5

    .line 301
    goto/16 :goto_0

    .restart local v1    # "isFinal":Z
    :cond_5
    move v4, v5

    .line 307
    goto :goto_1

    .line 336
    .end local v1    # "isFinal":Z
    :cond_6
    invoke-static {}, Lcom/nuance/speech/dragon/DragonDictation;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v5

    const-string v6, "onResults... mDictationListener and mSpeechResultTextBuffer are null..."

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 337
    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v6, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    invoke-virtual {v5, v6}, Lcom/nuance/speech/dragon/DragonDictation;->setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V

    .line 338
    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v6, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Failed:Lcom/nuance/speech/Dictation$DictationState;

    invoke-static {v5, v6}, Lcom/nuance/speech/dragon/DragonDictation;->access$3000(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V

    .line 339
    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    sget-object v6, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Failed:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-static {v5, v6, v9}, Lcom/nuance/speech/dragon/DragonDictation;->access$3100(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 341
    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation$1;->this$0:Lcom/nuance/speech/dragon/DragonDictation;

    invoke-static {v5, v9}, Lcom/nuance/speech/dragon/DragonDictation;->access$602(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;

    goto :goto_2
.end method

.method public bridge synthetic onResults(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 193
    check-cast p1, Lcom/nuance/nmdp/speechkit/Recognizer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/nuance/nmdp/speechkit/Recognition;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation$1;->onResults(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/Recognition;)V

    return-void
.end method
