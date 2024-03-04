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

.field protected mDictationListener:Lcom/nuance/speech/DictationEventListener;

.field protected mDictationState:Lcom/nuance/speech/Dictation$DictationState;

.field private mEndofSpeechDetection:Z

.field protected mRecordingState:Lcom/nuance/speech/Dictation$RecordingState;

.field protected mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
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

.method protected dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "eventData"    # Ljava/lang/Object;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mDictationListener:Lcom/nuance/speech/DictationEventListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mDictationListener:Lcom/nuance/speech/DictationEventListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/speech/DictationEventListener;->handleDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 157
    :cond_0
    return-void
.end method

.method public getCurrentLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mCurrentLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getCustomWordsSync(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;
.end method

.method public getDictationState()Lcom/nuance/speech/Dictation$DictationState;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mDictationState:Lcom/nuance/speech/Dictation$DictationState;

    return-object v0
.end method

.method protected getInputType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechResultTextBuffer;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechResultTextBuffer;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputType()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nuance/speech/Dictation;->mRecordingState:Lcom/nuance/speech/Dictation$RecordingState;

    return-object v0
.end method

.method public abstract getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
.end method

.method public isEndOfSpeechDetectionEnabled()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/nuance/speech/Dictation;->mEndofSpeechDetection:Z

    return v0
.end method

.method protected isWebSearchField()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, "isUrlAsSearch":Z
    iget-object v4, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v4}, Lcom/nuance/speech/SpeechResultTextBuffer;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 140
    iget-object v4, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v4}, Lcom/nuance/speech/SpeechResultTextBuffer;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    .line 141
    .local v0, "fieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 142
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldUseSearchRecognizerTypeForUrl()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 149
    .end local v0    # "fieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/speech/Dictation;->getInputType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "web search"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    return v3

    .restart local v0    # "fieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    :cond_3
    move v1, v3

    .line 142
    goto :goto_0

    .line 145
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v1

    goto :goto_0
.end method

.method public abstract release()V
.end method

.method public setDictationEventListener(Lcom/nuance/speech/DictationEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/speech/DictationEventListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nuance/speech/Dictation;->mDictationListener:Lcom/nuance/speech/DictationEventListener;

    .line 127
    return-void
.end method

.method public setDictationResultTextBuffer(Lcom/nuance/speech/SpeechResultTextBuffer;)V
    .locals 0
    .param p1, "speechTextBuffer"    # Lcom/nuance/speech/SpeechResultTextBuffer;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/nuance/speech/Dictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    .line 111
    return-void
.end method

.method protected setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V
    .locals 0
    .param p1, "state"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/nuance/speech/Dictation;->mDictationState:Lcom/nuance/speech/Dictation$DictationState;

    .line 103
    return-void
.end method

.method public setEndofSpeechDetection(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/nuance/speech/Dictation;->mEndofSpeechDetection:Z

    .line 115
    return-void
.end method

.method public setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V
    .locals 0
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
