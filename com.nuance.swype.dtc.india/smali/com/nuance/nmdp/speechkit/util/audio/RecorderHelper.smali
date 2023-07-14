.class public final Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;
.super Ljava/lang/Object;
.source "RecorderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$3;
    }
.end annotation


# static fields
.field private static final _staticInput:Lcom/nuance/nmdp/speechkit/util/List;

.field private static _staticInputDisableRecorder:Z

.field private static _staticOutputFilename:Ljava/lang/String;


# instance fields
.field FRAMES_PER_SECOND:I

.field RECORDER_CAPTURE_TIMEOUT:I

.field private final _appContext:Ljava/lang/Object;

.field private final _context:Ljava/lang/Object;

.field private final _endpointerDelay:I

.field private final _inputDisableRecorder:Z

.field private final _inputEnum:Lcom/nuance/nmdp/speechkit/util/List$Iterator;

.field private final _listener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

.field private final _output:Lcom/nuance/nmdp/speechkit/util/List;

.field private final _outputFilename:Ljava/lang/String;

.field private final _param:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

.field private final _partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field private final _recordListener:Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;

.field private _recorder:Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;

.field private _started:Z

.field private final _stopSync:Ljava/lang/Object;

.field private _stopped:Z

.field private _stopping:Z

.field private _waitingForStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticOutputFilename:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/List;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/util/List;-><init>()V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInput:Lcom/nuance/nmdp/speechkit/util/List;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInputDisableRecorder:Z

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;IIIILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/util/List;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;)V
    .locals 10
    .param p1, "manager"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "detectionType"    # I
    .param p3, "endpointerDelay"    # I
    .param p4, "endOfSpeechDuration"    # I
    .param p5, "startOfSpeechTimeout"    # I
    .param p6, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p8, "param"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;
    .param p9, "context"    # Ljava/lang/Object;
    .param p10, "appContext"    # Ljava/lang/Object;
    .param p11, "listener"    # Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;",
            "IIII",
            "Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmsp/client/sdk/components/general/Parameter;",
            ">;",
            "Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p7, "customRecorderParams":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmsp/client/sdk/components/general/Parameter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v6, 0xea60

    iput v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->RECORDER_CAPTURE_TIMEOUT:I

    .line 26
    const/16 v6, 0x32

    iput v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->FRAMES_PER_SECOND:I

    .line 63
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->createRecordListener()Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_recordListener:Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;

    .line 64
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    .line 65
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_context:Ljava/lang/Object;

    .line 66
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_started:Z

    .line 67
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopping:Z

    .line 68
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_waitingForStop:Z

    .line 69
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopped:Z

    .line 70
    iput p3, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_endpointerDelay:I

    .line 71
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopSync:Ljava/lang/Object;

    .line 72
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_param:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

    .line 73
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_appContext:Ljava/lang/Object;

    .line 74
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 76
    sget-object v6, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInput:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v6}, Lcom/nuance/nmdp/speechkit/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputEnum:Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    .line 77
    sget-boolean v6, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInputDisableRecorder:Z

    iput-boolean v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputDisableRecorder:Z

    .line 79
    sget-object v6, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticOutputFilename:Ljava/lang/String;

    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_outputFilename:Ljava/lang/String;

    .line 80
    sget-object v6, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticOutputFilename:Ljava/lang/String;

    if-nez v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_output:Lcom/nuance/nmdp/speechkit/util/List;

    .line 82
    iget-boolean v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputDisableRecorder:Z

    if-nez v6, :cond_7

    .line 84
    new-instance v4, Lcom/nuance/nmdp/speechkit/util/List;

    invoke-direct {v4}, Lcom/nuance/nmdp/speechkit/util/List;-><init>()V

    .line 87
    .local v4, "parameters":Lcom/nuance/nmdp/speechkit/util/List;
    if-eqz p7, :cond_2

    .line 89
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    .line 91
    .local v3, "p":Lcom/nuance/nmsp/client/sdk/components/general/Parameter;
    invoke-virtual {v4, v3}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 76
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "p":Lcom/nuance/nmsp/client/sdk/components/general/Parameter;
    .end local v4    # "parameters":Lcom/nuance/nmdp/speechkit/util/List;
    :cond_0
    sget-object v6, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInput:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v6}, Lcom/nuance/nmdp/speechkit/util/List;->copy()Lcom/nuance/nmdp/speechkit/util/List;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/nmdp/speechkit/util/List;->iterator()Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    move-result-object v6

    goto :goto_0

    .line 80
    :cond_1
    new-instance v6, Lcom/nuance/nmdp/speechkit/util/List;

    invoke-direct {v6}, Lcom/nuance/nmdp/speechkit/util/List;-><init>()V

    goto :goto_1

    .line 95
    .restart local v4    # "parameters":Lcom/nuance/nmdp/speechkit/util/List;
    :cond_2
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputEnum:Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    if-nez v6, :cond_3

    .line 101
    packed-switch p2, :pswitch_data_0

    .line 128
    :cond_3
    :goto_3
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "USE_ENERGY_LEVEL"

    const-string/jumbo v8, "TRUE"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 129
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "Android_Context"

    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_appContext:Ljava/lang/Object;

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 131
    if-lez p3, :cond_4

    .line 134
    div-int/lit8 v1, p3, 0x14

    .line 137
    .local v1, "delayFrames":I
    add-int/lit8 v1, v1, 0xa

    .line 140
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "ep.VadBeginDelay"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 143
    .end local v1    # "delayFrames":I
    :cond_4
    if-lez p4, :cond_5

    .line 144
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "ep.VadHistoryLength"

    iget v8, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->FRAMES_PER_SECOND:I

    mul-int/2addr v8, p4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 145
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "ep.VadEndLength"

    iget v8, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->FRAMES_PER_SECOND:I

    mul-int/2addr v8, p4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 148
    :cond_5
    if-lez p5, :cond_6

    .line 149
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "Start_Of_Speech_Timeout"

    mul-int/lit16 v8, p5, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 155
    :cond_6
    :try_start_0
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_recordListener:Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/util/List;->toVector()Ljava/util/Vector;

    move-result-object v7

    sget-object v8, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->MICROPHONE:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;

    invoke-static {v6, p1, v7, v8}, Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioManager;->createRecorder(Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;)Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_recorder:Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v4    # "parameters":Lcom/nuance/nmdp/speechkit/util/List;
    :cond_7
    :goto_4
    return-void

    .line 103
    .restart local v4    # "parameters":Lcom/nuance/nmdp/speechkit/util/List;
    :pswitch_0
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "ep.enable"

    const-string/jumbo v8, "TRUE"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 106
    :pswitch_1
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "ep.enable"

    const-string/jumbo v8, "TRUE"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 109
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "ep.VadLongUtterance"

    const-string/jumbo v8, "TRUE"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 112
    :pswitch_2
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "ep.enable"

    const-string/jumbo v8, "TRUE"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 115
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "ep.VadLongUtterance"

    const-string/jumbo v8, "TRUE"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 117
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "ep.VadHistoryLength"

    const/16 v8, 0x190

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 118
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "ep.VadEndLength"

    const/16 v8, 0x190

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 119
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v7, "ep.VadEndThreshold"

    const/16 v8, 0x19

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 156
    :catch_0
    move-exception v5

    .line 158
    .local v5, "tr":Ljava/lang/Throwable;
    const-string/jumbo v6, "Error creating recorder"

    invoke-static {p0, v6, v5}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_recorder:Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;

    goto/16 :goto_4

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/List$Iterator;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputEnum:Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_output:Lcom/nuance/nmdp/speechkit/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->writeOutputFile()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopped:Z

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_waitingForStop:Z

    return v0
.end method

.method static synthetic access$502(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_waitingForStop:Z

    return p1
.end method

.method static synthetic access$600(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_recorder:Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_context:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    return-object v0
.end method

.method private createCustomAudioSink(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;)Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;
    .locals 1
    .param p1, "param"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

    .prologue
    .line 298
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;)V

    return-object v0
.end method

.method private createRecordListener()Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;
    .locals 1

    .prologue
    .line 351
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)V

    return-object v0
.end method

.method public static readFromFile(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "disableRecorder"    # Z

    .prologue
    const/4 v6, 0x0

    .line 474
    sget-object v7, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInput:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v7}, Lcom/nuance/nmdp/speechkit/util/List;->clear()V

    .line 475
    sput-boolean v6, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInputDisableRecorder:Z

    .line 476
    if-eqz p0, :cond_7

    .line 478
    invoke-static {p0}, Lcom/nuance/nmdp/speechkit/oem/OemFile;->openForRead(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 479
    .local v5, "stream":Ljava/io/InputStream;
    if-eqz v5, :cond_4

    .line 483
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 485
    .local v4, "l":I
    const/4 v3, 0x0

    .line 488
    .local v3, "count":I
    :cond_1
    const/4 v7, 0x5

    if-lt v3, v7, :cond_5

    .line 490
    const-string/jumbo v7, "RecorderHelper"

    const-string/jumbo v8, "Too many audio frame size bytes"

    invoke-static {v7, v8}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    sget-object v7, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInput:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v7}, Lcom/nuance/nmdp/speechkit/util/List;->clear()V

    .line 492
    const/4 v0, -0x1

    .line 512
    .local v0, "b":I
    :cond_2
    :goto_1
    if-ltz v0, :cond_3

    .line 515
    if-eqz v4, :cond_0

    .line 518
    new-array v1, v4, [B

    .line 519
    .local v1, "buffer":[B
    const/4 v2, -0x1

    .line 522
    .local v2, "bytesRead":I
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v1, v7, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 524
    :goto_2
    if-eq v2, v4, :cond_6

    .line 526
    const-string/jumbo v7, "RecorderHelper"

    const-string/jumbo v8, "Could not read requested number of bytes."

    invoke-static {v7, v8}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    sget-object v7, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInput:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v7}, Lcom/nuance/nmdp/speechkit/util/List;->clear()V

    .line 534
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 538
    .end local v0    # "b":I
    .end local v3    # "count":I
    .end local v4    # "l":I
    :cond_4
    :goto_3
    sget-object v7, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInput:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v7}, Lcom/nuance/nmdp/speechkit/util/List;->trim()V

    .line 539
    sget-object v7, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInput:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v7}, Lcom/nuance/nmdp/speechkit/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 541
    sput-boolean p1, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInputDisableRecorder:Z

    .line 542
    const/4 v6, 0x1

    .line 546
    .end local v5    # "stream":Ljava/io/InputStream;
    :goto_4
    return v6

    .line 497
    .restart local v3    # "count":I
    .restart local v4    # "l":I
    .restart local v5    # "stream":Ljava/io/InputStream;
    :cond_5
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 505
    .restart local v0    # "b":I
    add-int/lit8 v3, v3, 0x1

    .line 506
    if-ltz v0, :cond_2

    .line 509
    shl-int/lit8 v7, v4, 0x7

    and-int/lit8 v8, v0, 0x7f

    or-int v4, v7, v8

    .line 510
    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_1

    goto :goto_1

    .line 500
    .end local v0    # "b":I
    :catch_0
    move-exception v7

    const-string/jumbo v7, "RecorderHelper"

    const-string/jumbo v8, "Error reading from stream"

    invoke-static {v7, v8}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    sget-object v7, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInput:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v7}, Lcom/nuance/nmdp/speechkit/util/List;->clear()V

    .line 502
    const/4 v0, -0x1

    .line 503
    .restart local v0    # "b":I
    goto :goto_1

    .line 530
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    :cond_6
    sget-object v7, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInput:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v7, v1}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 545
    .end local v0    # "b":I
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v3    # "count":I
    .end local v4    # "l":I
    .end local v5    # "stream":Ljava/io/InputStream;
    :cond_7
    sget-object v7, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticInput:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v7}, Lcom/nuance/nmdp/speechkit/util/List;->trim()V

    goto :goto_4

    .restart local v0    # "b":I
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v3    # "count":I
    .restart local v4    # "l":I
    .restart local v5    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    goto :goto_2

    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    :catch_2
    move-exception v7

    goto :goto_3
.end method

.method private writeOutputFile()V
    .locals 10

    .prologue
    .line 554
    iget-object v9, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_output:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v9}, Lcom/nuance/nmdp/speechkit/util/List;->iterator()Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    move-result-object v2

    .line 555
    .local v2, "e":Lcom/nuance/nmdp/speechkit/util/List$Iterator;
    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->hasMore()Z

    move-result v9

    if-nez v9, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v9, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_outputFilename:Ljava/lang/String;

    invoke-static {v9}, Lcom/nuance/nmdp/speechkit/oem/OemFile;->openForWrite(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v8

    .line 559
    .local v8, "stream":Ljava/io/OutputStream;
    if-eqz v8, :cond_0

    .line 562
    :goto_1
    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->hasMore()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 564
    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v1, v9

    check-cast v1, [B

    .line 566
    .local v1, "buffer":[B
    const/4 v9, 0x5

    new-array v7, v9, [B

    .line 567
    .local v7, "sizeBytes":[B
    const/4 v5, 0x0

    .line 569
    .local v5, "numSizeBytes":I
    array-length v4, v1

    .line 570
    .local v4, "length":I
    const/4 v0, 0x0

    .local v0, "b":B
    move v6, v5

    .line 571
    .end local v5    # "numSizeBytes":I
    .local v6, "numSizeBytes":I
    :goto_2
    if-lez v4, :cond_2

    .line 573
    and-int/lit8 v9, v4, 0x7f

    int-to-byte v9, v9

    or-int/2addr v9, v0

    int-to-byte v0, v9

    .line 574
    shr-int/lit8 v4, v4, 0x7

    .line 576
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numSizeBytes":I
    .restart local v5    # "numSizeBytes":I
    rsub-int/lit8 v9, v6, 0x4

    aput-byte v0, v7, v9

    .line 577
    const/16 v0, -0x80

    move v6, v5

    .end local v5    # "numSizeBytes":I
    .restart local v6    # "numSizeBytes":I
    goto :goto_2

    .line 581
    :cond_2
    rsub-int/lit8 v9, v6, 0x5

    :try_start_0
    invoke-virtual {v8, v7, v9, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 582
    invoke-virtual {v8, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 583
    :catch_0
    move-exception v3

    .line 584
    .local v3, "ex":Ljava/io/IOException;
    const-string/jumbo v9, "Error writing audio to file"

    invoke-static {p0, v9, v3}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 589
    .end local v0    # "b":B
    .end local v1    # "buffer":[B
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v4    # "length":I
    .end local v6    # "numSizeBytes":I
    .end local v7    # "sizeBytes":[B
    :cond_3
    :try_start_1
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    :goto_3
    iget-object v9, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_output:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v9}, Lcom/nuance/nmdp/speechkit/util/List;->clear()V

    goto :goto_0

    :catch_1
    move-exception v9

    goto :goto_3
.end method

.method public static writeToFile(Ljava/lang/String;)V
    .locals 0
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 441
    sput-object p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_staticOutputFilename:Ljava/lang/String;

    .line 442
    return-void
.end method


# virtual methods
.method public final startCapturing()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 199
    const-string/jumbo v2, "Capturing audio from recorder"

    invoke-static {p0, v2}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->RECORDER_CAPTURE_TIMEOUT:I

    .line 202
    .local v1, "timeout":I
    sget-object v2, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$3;->$SwitchMap$com$nuance$nmdp$speechkit$SpeechKit$PartialResultsMode:[I

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_partialResultsMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 217
    :goto_0
    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputDisableRecorder:Z

    if-eqz v2, :cond_3

    .line 219
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputEnum:Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    if-eqz v2, :cond_1

    .line 221
    :goto_1
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputEnum:Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputEnum:Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 225
    .local v0, "bytes":[B
    :try_start_0
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_param:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

    const/4 v6, 0x0

    array-length v7, v0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputEnum:Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->hasMore()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    invoke-interface {v5, v0, v6, v7, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;->addAudioBuf([BIIZ)V
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 230
    .end local v0    # "bytes":[B
    :cond_0
    iput-boolean v3, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopping:Z

    .line 231
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_context:Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;->stopped(Ljava/lang/Object;I)V

    .line 240
    :cond_1
    :goto_3
    return-void

    .line 210
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0    # "bytes":[B
    :cond_2
    move v2, v4

    .line 225
    goto :goto_2

    .line 233
    .end local v0    # "bytes":[B
    :cond_3
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputEnum:Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_output:Lcom/nuance/nmdp/speechkit/util/List;

    if-eqz v2, :cond_5

    .line 235
    :cond_4
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_recorder:Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_param:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

    invoke-direct {p0, v3}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->createCustomAudioSink(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;)Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    move-result-object v3

    iget v4, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_endpointerDelay:I

    add-int/2addr v4, v1

    invoke-interface {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;->startCapturing(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V

    goto :goto_3

    .line 238
    :cond_5
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_recorder:Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_param:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

    iget v4, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_endpointerDelay:I

    add-int/2addr v4, v1

    invoke-interface {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;->startCapturing(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V

    goto :goto_3

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final startRecorder()V
    .locals 4

    .prologue
    .line 169
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_started:Z

    if-nez v1, :cond_2

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_started:Z

    .line 173
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputDisableRecorder:Z

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_context:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;->started(Ljava/lang/Object;)V

    .line 195
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_recorder:Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;

    if-eqz v1, :cond_1

    .line 182
    :try_start_0
    const-string/jumbo v1, "Starting recorder"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_recorder:Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;

    invoke-interface {v1}, Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, "tr":Ljava/lang/Throwable;
    const-string/jumbo v1, "Error starting recorder"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_context:Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;->stopped(Ljava/lang/Object;I)V

    goto :goto_0

    .line 192
    :cond_2
    const-string/jumbo v1, "Recorder already started"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final stopRecorder()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 243
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_started:Z

    if-eqz v1, :cond_0

    .line 245
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopping:Z

    if-nez v1, :cond_0

    .line 247
    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopping:Z

    .line 249
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_inputDisableRecorder:Z

    if-eqz v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_recorder:Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;

    if-eqz v1, :cond_3

    .line 255
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopSync:Ljava/lang/Object;

    monitor-enter v2

    .line 259
    :try_start_0
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopped:Z

    if-nez v1, :cond_2

    .line 261
    const-string/jumbo v1, "Stopping recorder"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_recorder:Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;

    invoke-interface {v1}, Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;->stopRecording()V

    .line 269
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_waitingForStop:Z

    .line 270
    :goto_1
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopped:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 273
    :try_start_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 275
    :catch_0
    move-exception v1

    goto :goto_1

    .line 278
    :cond_2
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 279
    :catch_1
    move-exception v0

    .line 281
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v1, "Error stopping recorder"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopped:Z

    .line 284
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_3
    const-string/jumbo v1, "Can\'t stop recorder because it wasn\'t started"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_context:Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;->stopped(Ljava/lang/Object;I)V

    goto :goto_0
.end method
