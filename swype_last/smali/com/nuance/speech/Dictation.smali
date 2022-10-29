.class public abstract Lcom/nuance/speech/Dictation;
.super Ljava/lang/Object;
.source "Dictation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/speech/Dictation$SpeechResult;,
        Lcom/nuance/speech/Dictation$DictationState;,
        Lcom/nuance/speech/Dictation$RecordingState;
    }
.end annotation


# instance fields
.field protected mCurrentLanguageName:Ljava/lang/String;

.field public mDictationListener:Lcom/nuance/speech/DictationEventListener;

.field protected mDictationState:Lcom/nuance/speech/Dictation$DictationState;

.field private mEndofSpeechDetection:Z

.field public mRecordingState:Lcom/nuance/speech/Dictation$RecordingState;

.field public mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    iput-object v0, p0, Lcom/nuance/speech/Dictation;->mRecordingState:Lcom/nuance/speech/Dictation$RecordingState;

    .line 40
    sget-object v0, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Stopped:Lcom/nuance/speech/Dictation$DictationState;

    iput-object v0, p0, Lcom/nuance/speech/Dictation;->mDictationState:Lcom/nuance/speech/Dictation$DictationState;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/speech/Dictation;->mEndofSpeechDetection:Z

    .line 85
    iput-object p1, p0, Lcom/nuance/speech/Dictation;->mCurrentLanguageName:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract canelCustomWordSync()V
.end method

.method public dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 4
    .param p1, "event"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "eventData"    # Ljava/lang/Object;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mDictationListener:Lcom/nuance/speech/DictationEventListener;

    if-eqz v0, :cond_9

    .line 150
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mDictationListener:Lcom/nuance/speech/DictationEventListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/speech/DictationEventListener;->handleDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 152
    :cond_9
    return-void
.end method

.method public getCurrentLanguageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mCurrentLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getCustomWordsSync(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;
.end method

.method public getDictationState()Lcom/nuance/speech/Dictation$DictationState;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mDictationState:Lcom/nuance/speech/Dictation$DictationState;

    return-object v0
.end method

.method protected getInputType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechResultTextBuffer;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 131
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechResultTextBuffer;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputType()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_16
    return-object v0

    :cond_17
    const-string/jumbo v0, ""

    goto :goto_16
.end method

.method public getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mRecordingState:Lcom/nuance/speech/Dictation$RecordingState;

    return-object v0
.end method

.method public abstract getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
.end method

.method public isEndOfSpeechDetectionEnabled()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/nuance/speech/Dictation;->mEndofSpeechDetection:Z

    return v0
.end method

.method public isWebSearchField()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "isUrlAsSearch":Z
    iget-object v3, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v3}, Lcom/nuance/speech/SpeechResultTextBuffer;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 140
    iget-object v3, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v3}, Lcom/nuance/speech/SpeechResultTextBuffer;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    .line 141
    invoke-virtual {v3}, Lcom/nuance/speech/SpeechResultTextBuffer;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldUseSearchRecognizerTypeForUrl()Z

    move-result v3

    if-eqz v3, :cond_41

    move v0, v1

    .line 144
    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/nuance/speech/Dictation;->getInputType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "web search"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    if-eqz v0, :cond_40

    :cond_3f
    move v2, v1

    :cond_40
    return v2

    :cond_41
    move v0, v2

    .line 141
    goto :goto_30
.end method

.method public abstract release()V
.end method

.method public setDictationEventListener(Lcom/nuance/speech/DictationEventListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/nuance/speech/DictationEventListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nuance/speech/Dictation;->mDictationListener:Lcom/nuance/speech/DictationEventListener;

    .line 127
    return-void
.end method

.method public setDictationResultTextBuffer(Lcom/nuance/speech/SpeechResultTextBuffer;)V
    .registers 2
    .param p1, "speechTextBuffer"    # Lcom/nuance/speech/SpeechResultTextBuffer;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    .line 111
    return-void
.end method

.method public setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V
    .registers 2
    .param p1, "state"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/nuance/speech/Dictation;->mDictationState:Lcom/nuance/speech/Dictation$DictationState;

    .line 103
    return-void
.end method

.method public setEndofSpeechDetection(Z)V
    .registers 2
    .param p1, "set"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/nuance/speech/Dictation;->mEndofSpeechDetection:Z

    .line 115
    return-void
.end method

.method public setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V
    .registers 2
    .param p1, "state"    # Lcom/nuance/speech/Dictation$RecordingState;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nuance/speech/Dictation;->mRecordingState:Lcom/nuance/speech/Dictation$RecordingState;

    .line 99
    return-void
.end method

.method public abstract startRecording()Z
.end method

.method public abstract stopRecording()V
.end method
