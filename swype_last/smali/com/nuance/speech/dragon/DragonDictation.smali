.class public final Lcom/nuance/speech/dragon/DragonDictation;
.super Lcom/nuance/speech/Dictation;
.source "DragonDictation.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private bufferForAccessibility:Ljava/lang/StringBuilder;

.field private final isExploredByTouch:Z

.field private mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

.field private final mListener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

.field private final mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string/jumbo v0, "DragonDictation"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "languageName"    # Ljava/lang/String;
    .param p3, "isExploredByTouch"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lcom/nuance/speech/Dictation;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-direct {v1, p1, p2}, Lcom/nuance/speech/dragon/SpeechKitWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    .line 47
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->createListener()Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation;->mListener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation;->bufferForAccessibility:Ljava/lang/StringBuilder;

    .line 50
    iput-boolean p3, p0, Lcom/nuance/speech/dragon/DragonDictation;->isExploredByTouch:Z

    .line 52
    const-string/jumbo v0, "NMSP 5.1 client SDK - build 018"

    .line 54
    .local v0, "nmsp_version":Ljava/lang/String;
    sget-object v1, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "nmsp version: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/speech/dragon/DragonDictation;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->playStartRecordingSound()V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/dragon/SpeechKitWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/speech/dragon/DragonDictation;)Ljava/lang/StringBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->bufferForAccessibility:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/DictationEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mDictationListener:Lcom/nuance/speech/DictationEventListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/SpeechResultTextBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/SpeechResultTextBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/nuance/speech/dragon/DragonDictation;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->isExploredByTouch:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/Dictation$RecordingState;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mRecordingState:Lcom/nuance/speech/Dictation$RecordingState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/Recognizer;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/Dictation$RecordingState;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mRecordingState:Lcom/nuance/speech/Dictation$RecordingState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/DictationEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mDictationListener:Lcom/nuance/speech/DictationEventListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/speech/dragon/DragonDictation;Ljava/lang/Float;)I
    .registers 3
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Ljava/lang/Float;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->convertAudioLevel(Ljava/lang/Float;)I

    move-result v0

    return v0
.end method

.method private cancelDictationInprogress()V
    .registers 5

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_17

    .line 178
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "cancelDictationInprogress..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->cancel()V

    .line 181
    :cond_17
    return-void
.end method

.method private convertAudioLevel(Ljava/lang/Float;)I
    .registers 6
    .param p1, "audioLevel"    # Ljava/lang/Float;

    .prologue
    .line 373
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4047000000000000L    # 46.0

    sub-double/2addr v0, v2

    const-wide v2, 0x4016666666666666L    # 5.6

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private createListener()Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .registers 2

    .prologue
    .line 184
    new-instance v0, Lcom/nuance/speech/dragon/DragonDictation$1;

    invoke-direct {v0, p0}, Lcom/nuance/speech/dragon/DragonDictation$1;-><init>(Lcom/nuance/speech/dragon/DragonDictation;)V

    return-object v0
.end method

.method private getRecognizerTypeForCurrentInput()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/nuance/speech/dragon/DragonDictation;->isWebSearchField()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 67
    const-string/jumbo v0, "websearch"

    .line 69
    :goto_9
    return-object v0

    :cond_a
    const-string/jumbo v0, "dictation"

    goto :goto_9
.end method

.method private getTextContext()Lcom/nuance/nmdp/speechkit/TextContext;
    .registers 7

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "context":Lcom/nuance/nmdp/speechkit/TextContext;
    iget-object v3, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v3, :cond_74

    .line 77
    iget-object v3, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v3}, Lcom/nuance/speech/SpeechResultTextBuffer;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v2

    .line 79
    .local v2, "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    new-instance v1, Lcom/nuance/nmdp/speechkit/TextContext;

    .end local v1    # "context":Lcom/nuance/nmdp/speechkit/TextContext;
    iget-object v3, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v3}, Lcom/nuance/speech/SpeechResultTextBuffer;->getTextBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    .line 80
    invoke-virtual {v4}, Lcom/nuance/speech/SpeechResultTextBuffer;->getCursorBegin()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    .line 81
    invoke-virtual {v5}, Lcom/nuance/speech/SpeechResultTextBuffer;->getCursorEnd()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/TextContext;-><init>(Ljava/lang/String;II)V

    .line 83
    .restart local v1    # "context":Lcom/nuance/nmdp/speechkit/TextContext;
    if-eqz v2, :cond_74

    .line 84
    const-string/jumbo v3, "input_type"

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->getInputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v3, "app_package_name"

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v3, "field_id"

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->getFieldId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;I)V

    .line 88
    iget-object v3, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v3}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 90
    .local v0, "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    if-eqz v0, :cond_74

    .line 91
    const-string/jumbo v3, "script_version"

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v3, "build_type"

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getBuildType()Lcom/nuance/swype/input/BuildInfo$BuildType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/BuildInfo$BuildType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v3, "build_date"

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getBuildDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v0    # "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    .end local v2    # "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    :cond_74
    return-object v1
.end method

.method public static isCJK(Ljava/lang/String;)Z
    .registers 2
    .param p0, "languageName"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-static {p0}, Lcom/nuance/speech/dragon/DragonDictation;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "Korean"

    .line 368
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "Japanese"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isChinese(Ljava/lang/String;)Z
    .registers 2
    .param p0, "languageName"    # Ljava/lang/String;

    .prologue
    .line 362
    const-string/jumbo v0, "Chinese_CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "Chinese_TW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "Chinese_HK"

    .line 363
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private isDictationInProgress()Z
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/DragonDictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-eq v0, v1, :cond_14

    .line 103
    invoke-virtual {p0}, Lcom/nuance/speech/dragon/DragonDictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isLanguageSupportLeadingSpace(Ljava/lang/String;)Z
    .registers 2
    .param p0, "languageName"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {p0}, Lcom/nuance/speech/dragon/DragonDictation;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private playEndOfRecordingSound()V
    .registers 3

    .prologue
    .line 343
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->playSoundForAccessiblity(II)V

    .line 344
    return-void
.end method

.method private playSoundForAccessiblity(II)V
    .registers 6
    .param p1, "soundId"    # I
    .param p2, "times"    # I

    .prologue
    .line 347
    iget-object v2, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v2}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 348
    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 349
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 350
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v1

    .line 351
    .local v1, "instance":Lcom/nuance/swype/input/accessibility/SoundResources;
    if-eqz v1, :cond_1f

    .line 352
    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/accessibility/SoundResources;->play(II)V

    .line 355
    .end local v1    # "instance":Lcom/nuance/swype/input/accessibility/SoundResources;
    :cond_1f
    return-void
.end method

.method private playStartRecordingSound()V
    .registers 3

    .prologue
    .line 339
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->playSoundForAccessiblity(II)V

    .line 340
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 5

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->isDictationInProgress()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 152
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "cancel"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Canceled:Lcom/nuance/speech/Dictation$DictationState;

    invoke-virtual {p0, v0}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    .line 154
    sget-object v0, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    invoke-virtual {p0, v0}, Lcom/nuance/speech/dragon/DragonDictation;->setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V

    .line 155
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->cancelDictationInprogress()V

    .line 157
    :cond_21
    return-void
.end method

.method public final canelCustomWordSync()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->cancelCustomWordSync()V

    .line 382
    return-void
.end method

.method public final declared-synchronized getCustomWordsSync(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;
    .registers 3
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .prologue
    .line 389
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0, p1}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCustomWordsSyncWrapper(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->release()V

    .line 63
    return-void
.end method

.method public final startRecording()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "startRecording..."

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->getTextContext()Lcom/nuance/nmdp/speechkit/TextContext;

    move-result-object v3

    .line 115
    .local v3, "textContext":Lcom/nuance/nmdp/speechkit/TextContext;
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    if-eqz v0, :cond_54

    if-eqz v3, :cond_54

    .line 116
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->isDictationInProgress()Z

    move-result v0

    if-nez v0, :cond_44

    .line 117
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    .line 118
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->getRecognizerTypeForCurrentInput()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Lcom/nuance/speech/dragon/DragonDictation;->isEndOfSpeechDetectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v2, 0x3

    :goto_2b
    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonDictation;->mListener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->createTextContextRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 127
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/Recognizer;->setStartOfSpeechTimeout(I)V

    .line 133
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->start()V

    .line 136
    :cond_44
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "startRecording...done"

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v6, v7

    .line 142
    :goto_51
    return v6

    :cond_52
    move v2, v6

    .line 120
    goto :goto_2b

    .line 141
    :cond_54
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "startRecording...failed"

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_51
.end method

.method public final stopRecording()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    sget-object v3, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "stopRecording...mCurrentRecognizer is null.."

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-nez v0, :cond_3b

    move v0, v1

    :goto_13
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_2e

    .line 168
    sget-object v0, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    invoke-virtual {p0, v0}, Lcom/nuance/speech/dragon/DragonDictation;->setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V

    .line 169
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->stopRecording()V

    .line 172
    :cond_2e
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "stopRecording...done"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 173
    return-void

    :cond_3b
    move v0, v2

    .line 164
    goto :goto_13
.end method
