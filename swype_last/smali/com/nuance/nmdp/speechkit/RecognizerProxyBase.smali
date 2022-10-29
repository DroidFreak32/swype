.class abstract Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;
.super Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;
.source "RecognizerProxyBase.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/IRecognizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;",
        "Lcom/nuance/nmdp/speechkit/IRecognizer;"
    }
.end annotation


# instance fields
.field private _appSessionId:Ljava/lang/String;

.field private _initRunnable:Ljava/lang/Runnable;

.field private final _kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

.field private _level:F

.field private final _levelSync:Ljava/lang/Object;

.field private _partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field private _recognizer:Lcom/nuance/nmdp/speechkit/RecognizerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/nmdp/speechkit/RecognizerBase",
            "<TResultType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "kit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "detectionType"    # I
    .param p4, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "appSessionId"    # Ljava/lang/String;
    .param p7, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase<TResultType;>;"
    invoke-direct {p0, p7}, Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;-><init>(Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_level:F

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_levelSync:Ljava/lang/Object;

    .line 37
    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_appSessionId:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 39
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;

    invoke-direct {v0, p0, p2, p3, p5}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$1;-><init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_initRunnable:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Lcom/nuance/nmdp/speechkit/RecognizerBase;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_recognizer:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;Lcom/nuance/nmdp/speechkit/RecognizerBase;)Lcom/nuance/nmdp/speechkit/RecognizerBase;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/RecognizerBase;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_recognizer:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_appSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->createEnergyListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_levelSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;F)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;
    .param p1, "x1"    # F

    .prologue
    .line 9
    iput p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_level:F

    return p1
.end method

.method private createEnergyListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .registers 2

    .prologue
    .line 86
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase<TResultType;>;"
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$2;-><init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 146
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 148
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$6;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$6;-><init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method protected abstract createRecognizer(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)Lcom/nuance/nmdp/speechkit/RecognizerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;",
            "Ljava/lang/String;",
            "I",
            "Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/RecognizerBase",
            "<TResultType;>;"
        }
    .end annotation
.end method

.method public getAudioLevel()F
    .registers 3

    .prologue
    .line 160
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase<TResultType;>;"
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_levelSync:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_3
    iget v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_level:F

    monitor-exit v1

    return v0

    .line 163
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected final init()V
    .registers 2

    .prologue
    .line 58
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_initRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 60
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_initRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_initRunnable:Ljava/lang/Runnable;

    .line 63
    :cond_c
    return-void
.end method

.method public setEndOfSpeechDuration(I)V
    .registers 3
    .param p1, "duration"    # I

    .prologue
    .line 167
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 169
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$7;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$7;-><init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;I)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V
    .registers 4
    .param p1, "promptType"    # I
    .param p2, "p"    # Lcom/nuance/nmdp/speechkit/Prompt;

    .prologue
    .line 101
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 103
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$3;-><init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;ILcom/nuance/nmdp/speechkit/Prompt;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public setStartOfSpeechTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I

    .prologue
    .line 178
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 180
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$8;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$8;-><init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;I)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 115
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 120
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$4;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$4;-><init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public stopRecording()V
    .registers 2

    .prologue
    .line 132
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 134
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$5;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$5;-><init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method
