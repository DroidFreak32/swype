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

.field private final nuanceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "DragonDictation"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "languageName"    # Ljava/lang/String;
    .param p3, "isExploredByTouch"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lcom/nuance/speech/Dictation;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-direct {v1, p1, p2}, Lcom/nuance/speech/dragon/SpeechKitWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    .line 49
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->createListener()Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation;->mListener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    .line 50
    new-instance v1, Lcom/nuance/id/NuanceId;

    invoke-direct {v1, p1}, Lcom/nuance/id/NuanceId;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation;->nuanceId:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation;->bufferForAccessibility:Ljava/lang/StringBuilder;

    .line 53
    iput-boolean p3, p0, Lcom/nuance/speech/dragon/DragonDictation;->isExploredByTouch:Z

    .line 55
    const-string v0, "NMSP 5.1 client SDK - build 018"

    .line 57
    .local v0, "nmsp_version":Ljava/lang/String;
    sget-object v1, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "nmsp version: "

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/speech/dragon/DragonDictation;)V
    .locals 2
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 25
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->playSoundForAccessiblity(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/dragon/SpeechKitWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/speech/dragon/DragonDictation;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->bufferForAccessibility:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/DictationEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mDictationListener:Lcom/nuance/speech/DictationEventListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/SpeechResultTextBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/SpeechResultTextBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/nuance/speech/dragon/DragonDictation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->isExploredByTouch:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/Dictation$DictationState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$DictationState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/Dictation$RecordingState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mRecordingState:Lcom/nuance/speech/Dictation$RecordingState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/speech/dragon/DragonDictation;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/Recognizer;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/Dictation$RecordingState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mRecordingState:Lcom/nuance/speech/Dictation$RecordingState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/speech/dragon/DragonDictation;)Lcom/nuance/speech/DictationEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mDictationListener:Lcom/nuance/speech/DictationEventListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/speech/dragon/DragonDictation;Ljava/lang/Float;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonDictation;
    .param p1, "x1"    # Ljava/lang/Float;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nuance/speech/dragon/DragonDictation;->convertAudioLevel(Ljava/lang/Float;)I

    move-result v0

    return v0
.end method

.method private cancelDictationInprogress()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "cancelDictationInprogress..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->cancel()V

    .line 190
    :cond_0
    return-void
.end method

.method private convertAudioLevel(Ljava/lang/Float;)I
    .locals 4
    .param p1, "audioLevel"    # Ljava/lang/Float;

    .prologue
    .line 382
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
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/nuance/speech/dragon/DragonDictation$1;

    invoke-direct {v0, p0}, Lcom/nuance/speech/dragon/DragonDictation$1;-><init>(Lcom/nuance/speech/dragon/DragonDictation;)V

    return-object v0
.end method

.method private getRecognizerTypeForCurrentInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/nuance/speech/dragon/DragonDictation;->isWebSearchField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "websearch"

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "dictation"

    goto :goto_0
.end method

.method private getTextContext()Lcom/nuance/nmdp/speechkit/TextContext;
    .locals 6

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "context":Lcom/nuance/nmdp/speechkit/TextContext;
    iget-object v3, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v3}, Lcom/nuance/speech/SpeechResultTextBuffer;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v2

    .line 82
    .local v2, "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    new-instance v1, Lcom/nuance/nmdp/speechkit/TextContext;

    .end local v1    # "context":Lcom/nuance/nmdp/speechkit/TextContext;
    iget-object v3, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v3}, Lcom/nuance/speech/SpeechResultTextBuffer;->getTextBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v4}, Lcom/nuance/speech/SpeechResultTextBuffer;->getCursorBegin()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v5}, Lcom/nuance/speech/SpeechResultTextBuffer;->getCursorEnd()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/TextContext;-><init>(Ljava/lang/String;II)V

    .line 86
    .restart local v1    # "context":Lcom/nuance/nmdp/speechkit/TextContext;
    if-eqz v2, :cond_1

    .line 87
    const-string v3, "input_type"

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->getInputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "app_package_name"

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "field_id"

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->getFieldId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;I)V

    .line 91
    iget-object v3, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v3}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 93
    .local v0, "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    if-eqz v0, :cond_0

    .line 94
    const-string v3, "script_version"

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "build_type"

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getBuildType()Lcom/nuance/swype/input/BuildInfo$BuildType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/BuildInfo$BuildType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v3, "build_date"

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getBuildDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    const-string v3, "nuance_id"

    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonDictation;->nuanceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/nuance/nmdp/speechkit/TextContext;->addCustomLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v0    # "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    .end local v2    # "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    :cond_1
    return-object v1
.end method

.method public static isCJK(Ljava/lang/String;)Z
    .locals 1
    .param p0, "languageName"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-static {p0}, Lcom/nuance/speech/dragon/DragonDictation;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Korean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Japanese"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinese(Ljava/lang/String;)Z
    .locals 1
    .param p0, "languageName"    # Ljava/lang/String;

    .prologue
    .line 371
    const-string v0, "Chinese_CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Chinese_TW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Chinese_TW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDictationInProgress()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 107
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/nuance/speech/dragon/DragonDictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/DragonDictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 112
    :cond_1
    return v0
.end method

.method public static isLanguageSupportLeadingSpace(Ljava/lang/String;)Z
    .locals 1
    .param p0, "languageName"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-static {p0}, Lcom/nuance/speech/dragon/DragonDictation;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playEndOfRecordingSound()V
    .locals 2

    .prologue
    .line 352
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->playSoundForAccessiblity(II)V

    .line 353
    return-void
.end method

.method private playSoundForAccessiblity(II)V
    .locals 3
    .param p1, "soundId"    # I
    .param p2, "times"    # I

    .prologue
    .line 356
    iget-object v2, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v2}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 357
    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 358
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v1

    .line 360
    .local v1, "instance":Lcom/nuance/swype/input/accessibility/SoundResources;
    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/accessibility/SoundResources;->play(II)V

    .line 364
    .end local v1    # "instance":Lcom/nuance/swype/input/accessibility/SoundResources;
    :cond_0
    return-void
.end method

.method private playStartRecordingSound()V
    .locals 2

    .prologue
    .line 348
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/speech/dragon/DragonDictation;->playSoundForAccessiblity(II)V

    .line 349
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->isDictationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 162
    sget-object v0, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Canceled:Lcom/nuance/speech/Dictation$DictationState;

    invoke-virtual {p0, v0}, Lcom/nuance/speech/dragon/DragonDictation;->setDictationState(Lcom/nuance/speech/Dictation$DictationState;)V

    .line 163
    sget-object v0, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    invoke-virtual {p0, v0}, Lcom/nuance/speech/dragon/DragonDictation;->setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V

    .line 164
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->cancelDictationInprogress()V

    .line 166
    :cond_0
    return-void
.end method

.method public final canelCustomWordSync()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->cancelCustomWordSync()V

    .line 391
    return-void
.end method

.method public final declared-synchronized getCustomWordsSync(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;
    .locals 1
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0, p1}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCustomWordsSyncWrapper(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->release()V

    .line 66
    return-void
.end method

.method public final startRecording()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 120
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "startRecording..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 122
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->getTextContext()Lcom/nuance/nmdp/speechkit/TextContext;

    move-result-object v3

    .line 124
    .local v3, "textContext":Lcom/nuance/nmdp/speechkit/TextContext;
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->isDictationInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonDictation;->getRecognizerTypeForCurrentInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/DragonDictation;->isEndOfSpeechDetectionEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    :cond_0
    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonDictation;->mListener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->createTextContextRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 136
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/Recognizer;->setStartOfSpeechTimeout(I)V

    .line 142
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->start()V

    .line 145
    :cond_1
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "startRecording...done"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 147
    const/4 v2, 0x1

    .line 151
    :goto_0
    return v2

    .line 150
    :cond_2
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "startRecording...failed"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final stopRecording()V
    .locals 3

    .prologue
    .line 173
    sget-object v1, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "stopRecording...mCurrentRecognizer is null.."

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    invoke-virtual {p0, v0}, Lcom/nuance/speech/dragon/DragonDictation;->setRecordingState(Lcom/nuance/speech/Dictation$RecordingState;)V

    .line 178
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictation;->mCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->stopRecording()V

    .line 181
    :cond_0
    sget-object v0, Lcom/nuance/speech/dragon/DragonDictation;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "stopRecording...done"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 182
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
