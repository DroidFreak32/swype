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
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;)V
    .registers 9

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

    if-eqz v0, :cond_82

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    :cond_68
    :goto_68
    check-cast p2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getCalllogSession()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    if-eqz v0, :cond_7f

    if-eqz v0, :cond_7f

    const-string/jumbo v1, "NMSPRecorder"

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->h:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_7f
    iput v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    return-void

    :cond_82
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->MICROPHONE:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->MICROPHONE:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    goto :goto_68

    :cond_8f
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->NETWORK:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->NETWORK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    goto :goto_68

    :cond_9c
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->WIRED_HEADSET:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->WIRED_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    goto :goto_68
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    return-object v0
.end method

.method private a()V
    .registers 5

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->i:I

    if-lez v0, :cond_15

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$1;-><init>(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->i:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    :cond_15
    return-void
.end method

.method private a(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V
    .registers 16

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

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

    :cond_2c
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->q:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->isBluetoothHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->adjustCodecForBluetooth(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    :cond_41
    iput p2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->i:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-nez v0, :cond_7c

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->f:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->m:Z

    if-eqz v2, :cond_7d

    if-eqz p1, :cond_7d

    move v2, v12

    :goto_54
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

    if-nez v0, :cond_7f

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "RecorderImpl.handleStartRecording() startRecording() failed!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_72
    const/16 v0, 0x8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const-string/jumbo v0, "RECORD_ERROR"

    invoke-direct {p0, v0, v11}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7c
    :goto_7c
    return-void

    :cond_7d
    const/4 v2, 0x0

    goto :goto_54

    :cond_7f
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->m:Z

    if-eqz v0, :cond_a7

    if-nez p1, :cond_a3

    iput v12, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->k:I

    if-lez v0, :cond_9c

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$2;-><init>(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->k:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    :cond_9c
    :goto_9c
    const-string/jumbo v0, "STARTED"

    invoke-direct {p0, v0, v11}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7c

    :cond_a3
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_9c

    :cond_a7
    if-nez p1, :cond_ac

    iput v12, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_9c

    :cond_ac
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_9c
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->h:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->h:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_d
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d:Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d:Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;->recorderUpdate(Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

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

    goto :goto_9
.end method

.method private static a(Ljava/util/Vector;)V
    .registers 5

    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v2, v3, :cond_6

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

    :cond_3b
    return-void
.end method

.method private a(Z)V
    .registers 7

    const/4 v4, 0x4

    const/4 v3, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

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

    :cond_21
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-eq v0, v4, :cond_2f

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4b

    :cond_2f
    if-eqz p1, :cond_37

    const-string/jumbo v0, "CAPTURE_TIMEOUT"

    invoke-direct {p0, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_37
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v0, v4, :cond_41

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c()V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b()V

    :cond_41
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, p0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->stopRecording(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V

    const/16 v0, 0x9

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5a

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5a

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4a

    :cond_5a
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, p0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->stopRecording(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_4a
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->n:Z

    return v0
.end method

.method private static a(Ljava/util/Vector;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v3, v4, :cond_7

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    :goto_38
    return v0

    :cond_39
    move v0, v1

    goto :goto_38

    :cond_3b
    move v0, v1

    goto :goto_38
.end method

.method private static b(Ljava/util/Vector;Ljava/lang/String;)I
    .registers 6

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValueRaw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_3a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    const/4 v0, 0x0

    :cond_3a
    return v0
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    return-object v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    :cond_e
    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    :cond_e
    return-void
.end method

.method private d()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->f:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;->addAudioBuf([BIIZ)V
    :try_end_9
    .catch Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException; {:try_start_0 .. :try_end_9} :catch_1a

    :cond_9
    :goto_9
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "RecorderImpl::finishAudioSink send the last audio buffer from recorder"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_19
    return-void

    :catch_1a
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RecorderImpl.finishAudioSink() TransactionProcessingException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_9
.end method


# virtual methods
.method public audioCallback(Ljava/util/Vector;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Float;Ljava/lang/Object;)V
    .registers 9

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "RecorderImpl.audioCallback() not implemented!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public audioCallback([BLjava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Float;Ljava/lang/Object;)V
    .registers 14

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

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

    :cond_22
    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v2, v6, :cond_80

    iget-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->g:J

    const-string/jumbo v2, "StreamStart"

    invoke-direct {p0, v2}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;)V

    :cond_3a
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-nez v2, :cond_4a

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-eqz v2, :cond_81

    :cond_4a
    check-cast p2, [B

    iget v0, p4, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    move-object p1, p2

    :goto_4f
    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_73

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

    :cond_73
    :try_start_73
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->f:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v0, v4}, Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;->addAudioBuf([BIIZ)V
    :try_end_7a
    .catch Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException; {:try_start_73 .. :try_end_7a} :catch_8c

    const-string/jumbo v0, "BUFFER_RECORDED"

    invoke-direct {p0, v0, p5}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_80
    :goto_80
    return-void

    :cond_81
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-eqz v2, :cond_c3

    iget v0, p3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    goto :goto_4f

    :catch_8c
    move-exception v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_aa

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RecorderImpl.audioCallback() TransactionProcessingException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->warn(Ljava/lang/Object;)V

    :cond_aa
    const-string/jumbo v0, "RECORD_ERROR"

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v0, v6, :cond_ba

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c()V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b()V

    :cond_ba
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->stopRecording(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_80

    :cond_c3
    move-object p1, v1

    goto :goto_4f
.end method

.method public endOfSpeechCallback(Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

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

    :cond_1f
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_33

    const-string/jumbo v0, "END_OF_SPEECH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->o:Z

    if-nez v0, :cond_33

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->handleStopCapturing(Z)V

    :cond_33
    return-void
.end method

.method public endPointerStartedCallback(Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

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

    :cond_1f
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->turnOffEndPointer(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;Ljava/lang/Object;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_2a
.end method

.method public endPointerStoppedCallback(Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

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

    :cond_1f
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->turnOnEndPointer(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;Ljava/lang/Object;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_2d
.end method

.method public errorCallback(Ljava/lang/Object;)V
    .registers 6

    const/4 v3, 0x4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

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

    :cond_20
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3d

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3d

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-eq v0, v3, :cond_3d

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3d

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_51

    :cond_3d
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v0, v3, :cond_47

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c()V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b()V

    :cond_47
    const-string/jumbo v0, "RECORD_ERROR"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_51
    return-void
.end method

.method public getParams(Ljava/util/Vector;)Ljava/util/Vector;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;
        }
    .end annotation

    if-eqz p1, :cond_6c

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_65

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v2, v3, :cond_61

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_40

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

    :cond_40
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

    :cond_61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_65
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->getParams(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    :goto_6b
    return-object v0

    :cond_6c
    const/4 v0, 0x0

    goto :goto_6b
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    iget-byte v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v0, :pswitch_data_40

    :goto_9
    return-void

    :pswitch_a
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V

    goto :goto_9

    :pswitch_f
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V

    goto :goto_9

    :pswitch_23
    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Z)V

    goto :goto_9

    :pswitch_27
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->handleStartCapturing(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V

    goto :goto_9

    :pswitch_3b
    invoke-virtual {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->handleStopCapturing(Z)V

    goto :goto_9

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_a
        :pswitch_f
        :pswitch_23
        :pswitch_27
        :pswitch_3b
    .end packed-switch
.end method

.method public handleStartCapturing(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V
    .registers 7

    const/4 v3, 0x2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

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

    :cond_2b
    iput p2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->i:I

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->f:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_48

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->m:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->turnOnEndPointer(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;Ljava/lang/Object;)V

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_40
    :goto_40
    return-void

    :cond_41
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_40

    :cond_48
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_50

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_40

    :cond_50
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_40

    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_40
.end method

.method public handleStopCapturing(Z)V
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

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

    :cond_22
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d()V

    if-eqz p1, :cond_32

    const-string/jumbo v0, "CAPTURE_TIMEOUT"

    invoke-direct {p0, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_32
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v0, v4, :cond_5f

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d()V

    if-eqz p1, :cond_45

    const-string/jumbo v0, "CAPTURE_TIMEOUT"

    invoke-direct {p0, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_45
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v0, v4, :cond_4f

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c()V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b()V

    :cond_4f
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->m:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, p0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->turnOffEndPointer(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;Ljava/lang/Object;)V

    iput v5, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_35

    :cond_5b
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_35

    :cond_5f
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_35

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d()V

    iput v5, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_35
.end method

.method public noSpeechCallback(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public startCapturing(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V
    .registers 10

    const/4 v6, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

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

    :cond_25
    if-nez p1, :cond_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "audioSink cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    if-gez p2, :cond_3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "audioCaptureTime is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
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
    .registers 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

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

    :cond_1f
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    const-string/jumbo v0, "START_OF_SPEECH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c()V

    :cond_2e
    return-void
.end method

.method public startRecording()V
    .registers 6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "RecorderImpl.startRecording()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
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
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

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

    :cond_26
    if-nez p1, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "audioSink cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    if-gez p2, :cond_3c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "audioCaptureTime is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
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
    .registers 9

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

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

    :cond_23
    const-string/jumbo v0, "StreamStop"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_38

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_38

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_41

    :cond_38
    const-string/jumbo v0, "STOPPED"

    invoke-direct {p0, v0, v5}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput v4, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    :cond_40
    :goto_40
    return-void

    :cond_41
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5a

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-eq v0, v3, :cond_5a

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5a

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5a

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_40

    :cond_5a
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    if-ne v0, v3, :cond_64

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->c()V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->b()V

    :cond_64
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->d()V

    const-string/jumbo v0, "STOPPED"

    invoke-direct {p0, v0, v5}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput v4, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->r:I

    goto :goto_40
.end method

.method public stopCapturing()V
    .registers 6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

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

    :cond_26
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
    .registers 6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "RecorderImpl.stop()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
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
