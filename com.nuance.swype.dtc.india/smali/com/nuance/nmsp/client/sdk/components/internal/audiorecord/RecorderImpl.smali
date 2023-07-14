.class public Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$ErrorCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$NoSpeechCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StartOfSpeechCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;
.implements Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

.field private c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

.field private d:Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;

.field private e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

.field private f:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

.field private g:J

.field private h:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

.field private i:I

.field private j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

.field private k:I

.field private l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

.field private q:Ljava/util/Vector;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->m:Z

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->n:Z

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->o:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    invoke-static {p3}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/util/Vector;)V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d:Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;

    move-object v0, p2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getInputCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    move-object v0, p2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getMsgSys()Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->q:Ljava/util/Vector;

    const-string/jumbo v0, "ep.enable"

    invoke-static {p3, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->m:Z

    const-string/jumbo v0, "NMSP_DEFINES_RECORDER_CONTINUES_ON_ENDPOINTER_AND_TIMER_STOPPING"

    invoke-static {p3, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->n:Z

    const-string/jumbo v0, "NMSP_DEFINES_CAPTURING_CONTINUES_ON_ENDPOINTER"

    invoke-static {p3, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->o:Z

    const-string/jumbo v0, "Start_Of_Speech_Timeout"

    invoke-static {p3, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b(Ljava/util/Vector;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->k:I

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-direct {v0, v1, v2, p3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;-><init>(Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Ljava/util/Vector;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    :cond_0
    :goto_0
    check-cast p2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getCalllogSession()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v1, "NMSPRecorder"

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->h:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_1
    iput v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    return-void

    :cond_2
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->MICROPHONE:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->MICROPHONE:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->NETWORK:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->NETWORK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->WIRED_HEADSET:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->WIRED_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    return-object v0
.end method

.method private a()V
    .locals 4

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->i:I

    if-lez v0, :cond_0

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$1;-><init>(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->i:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    :cond_0
    return-void
.end method

.method private a(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl.handleStartRecording("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") _state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->q:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->isBluetoothHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->adjustCodecForBluetooth(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    :cond_1
    iput p2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->i:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->f:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->m:Z

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    move v2, v12

    :goto_0
    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p0

    move-object v9, p0

    move-object v10, p0

    invoke-interface/range {v0 .. v11}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->startRecording(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;ZLcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$ErrorCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StartOfSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$NoSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "RecorderImpl.handleStartRecording() startRecording() failed!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_2
    const/16 v0, 0x8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const-string/jumbo v0, "RECORD_ERROR"

    invoke-direct {p0, v0, v11}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->m:Z

    if-eqz v0, :cond_8

    if-nez p1, :cond_7

    iput v12, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->k:I

    if-lez v0, :cond_6

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$2;-><init>(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->k:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    :cond_6
    :goto_2
    const-string/jumbo v0, "STARTED"

    invoke-direct {p0, v0, v11}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_2

    :cond_8
    if-nez p1, :cond_9

    iput v12, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_2
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->h:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->h:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d:Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d:Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;->recorderUpdate(Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Got an exp while calling NMSPAudioRecordListener.recorderUpdate("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] msg ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Vector;)V
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v2, v3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Parameter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " not allowed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl.handleStopRecording() _state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v0, "CAPTURE_TIMEOUT"

    invoke-direct {p0, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c()V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b()V

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, p0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->stopRecording(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V

    const/16 v0, 0x9

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    :cond_6
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, p0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->stopRecording(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->n:Z

    return v0
.end method

.method private static a(Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/util/Vector;Ljava/lang/String;)I
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValueRaw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    :cond_0
    return-void
.end method

.method private d()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->f:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;->addAudioBuf([BIIZ)V
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "RecorderImpl::finishAudioSink send the last audio buffer from recorder"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RecorderImpl.finishAudioSink() TransactionProcessingException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public audioCallback(Ljava/util/Vector;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Float;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "RecorderImpl.audioCallback() not implemented!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public audioCallback([BLjava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Float;Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RecorderImpl.audioCallback() _state:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v2, v6, :cond_4

    iget-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->g:J

    const-string/jumbo v2, "StreamStart"

    invoke-direct {p0, v2}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    check-cast p2, [B

    iget v0, p4, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    move-object p1, p2

    :goto_0
    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "========================= Recorder::audioCallback len["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] ======================"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->f:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v0, v4}, Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;->addAudioBuf([BIIZ)V
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "BUFFER_RECORDED"

    invoke-direct {p0, v0, p5}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v0, p3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RecorderImpl.audioCallback() TransactionProcessingException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->warn(Ljava/lang/Object;)V

    :cond_6
    const-string/jumbo v0, "RECORD_ERROR"

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v0, v6, :cond_7

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c()V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b()V

    :cond_7
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->stopRecording(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_1

    :cond_8
    move-object p1, v1

    goto :goto_0
.end method

.method public endOfSpeechCallback(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl::endOfSpeechCallback() _state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "END_OF_SPEECH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->handleStopCapturing(Z)V

    :cond_1
    return-void
.end method

.method public endPointerStartedCallback(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl::endPointerStartedCallback() _state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->turnOffEndPointer(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;Ljava/lang/Object;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_0
.end method

.method public endPointerStoppedCallback(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl::endPointerStoppedCallback() _state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->turnOnEndPointer(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;Ljava/lang/Object;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_0
.end method

.method public errorCallback(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl.errorCallback() _state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    :cond_1
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c()V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b()V

    :cond_2
    const-string/jumbo v0, "RECORD_ERROR"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_3
    return-void
.end method

.method public getParams(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v2, v3, :cond_1

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IllegalArgumentException Parameter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not allowed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Parameter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " not allowed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->getParams(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    iget-byte v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->handleStartCapturing(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->handleStopCapturing(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleStartCapturing(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl.handleStartCapturing("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") _state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iput p2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->i:I

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->f:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->turnOnEndPointer(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;Ljava/lang/Object;)V

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_0
.end method

.method public handleStopCapturing(Z)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl.handleStopCapturing() _state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d()V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "CAPTURE_TIMEOUT"

    invoke-direct {p0, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v0, v4, :cond_7

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d()V

    if-eqz p1, :cond_4

    const-string/jumbo v0, "CAPTURE_TIMEOUT"

    invoke-direct {p0, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v0, v4, :cond_5

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c()V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b()V

    :cond_5
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->m:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, p0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->turnOffEndPointer(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;Ljava/lang/Object;)V

    iput v5, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d()V

    iput v5, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_0
.end method

.method public noSpeechCallback(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public startCapturing(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl.startCapturing("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "audioSink cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "audioCaptureTime is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public startOfSpeechCallback(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl::startOfSpeechCallback() _state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "START_OF_SPEECH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c()V

    :cond_1
    return-void
.end method

.method public startRecording()V
    .locals 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "RecorderImpl.startRecording()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->g:J

    const-string/jumbo v0, "RecorderStart"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public startRecording(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl.startRecording("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "audioSink cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "audioCaptureTime is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->g:J

    const-string/jumbo v0, "RecorderStart"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-direct {v1, v6, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public stopCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl.stopCallback() _state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v0, "StreamStop"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    :cond_1
    const-string/jumbo v0, "STOPPED"

    invoke-direct {p0, v0, v5}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput v4, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    :cond_4
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c()V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b()V

    :cond_5
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d()V

    const-string/jumbo v0, "STOPPED"

    invoke-direct {p0, v0, v5}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput v4, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_0
.end method

.method public stopCapturing()V
    .locals 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecorderImpl.startCapturing("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->f:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public stopRecording()V
    .locals 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "RecorderImpl.stop()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v0, "RecorderStop"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
