.class public Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;
.implements Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;
.implements Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;


# static fields
.field public static final STATE_INIT:S = -0x1s

.field public static final STATE_PAUSED:S = 0x2s

.field public static final STATE_RESUMING:S = 0x3s

.field public static final STATE_STARTED:S = 0x1s

.field public static final STATE_STARTING:S = 0x0s

.field public static final STATE_STOPPED:S = 0x5s

.field public static final STATE_STOPPING:S = 0x4s

.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

.field private c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

.field private d:Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;

.field private e:Ljava/io/ByteArrayOutputStream;

.field private f:Ljava/util/Vector;

.field private g:Z

.field private h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:S

.field private k:Ljava/util/Vector;

.field private l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

.field private m:Ljava/lang/Object;

.field private n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

.field private o:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;)V
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->m:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getOutputCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;

    move-object v0, p2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getMsgSys()Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->k:Ljava/util/Vector;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-direct {v0, v1, v2, p3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;-><init>(Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Ljava/util/Vector;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->f:Ljava/util/Vector;

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->i:Z

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->g:Z

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->BLUETOOTH_A2DP:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->BLUETOOTH_A2DP:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->h:Ljava/util/LinkedList;

    :cond_5f
    check-cast p2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getCalllogSession()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    if-eqz v0, :cond_76

    if-eqz v0, :cond_76

    const-string/jumbo v1, "NMSPPlayer"

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->o:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_76
    return-void

    :cond_77
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    goto :goto_50

    :cond_84
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->NETWORK:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->NETWORK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    goto :goto_50

    :cond_91
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->SPEAKER:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->SPEAKER:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    goto :goto_50

    :cond_9e
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->WIRED_HEADSET:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->WIRED_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    goto :goto_50
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;

    invoke-interface {v0, p0, p1}, Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;->playerUpdate(Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Got an exp while calling NMSPAudioPlaybackListener.playerUpdate("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method private b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->o:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->o:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_d
    return-void
.end method


# virtual methods
.method public addAudioBuf([BIIZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addAudioBuf("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    :cond_31
    if-nez p1, :cond_3e

    if-nez p4, :cond_3e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "buffer is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    if-eqz p1, :cond_4b

    if-gez p2, :cond_4b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset cannot be negative!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    if-eqz p1, :cond_58

    if-gtz p3, :cond_58

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "length can only be positive!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq v0, v1, :cond_6a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq v0, v1, :cond_6a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne v0, v1, :cond_79

    :cond_6a
    const v0, 0x25800

    if-le p3, v0, :cond_79

    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->stop()V

    :goto_78
    return-void

    :cond_79
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->g:Z

    if-eqz v0, :cond_86

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException;

    const-string/jumbo v1, "audio player is full, the last buffer has already apended!"

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->g:Z

    if-nez v0, :cond_8e

    if-eqz p4, :cond_8e

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->g:Z

    :cond_8e
    const/4 v0, 0x0

    if-eqz p1, :cond_96

    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_96
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-interface {v0, v2, p0, v1, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_78
.end method

.method public audioCallback(Ljava/util/Vector;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Float;Ljava/lang/Object;)V
    .registers 14

    const/4 v1, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "audio call back is called time: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_29
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-nez v0, :cond_36

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const-string/jumbo v0, "STARTED"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    :cond_36
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isMP3Codec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-eqz v2, :cond_84

    :cond_4f
    move-object p1, p2

    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->m:Ljava/lang/Object;

    monitor-enter v3

    :try_start_53
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_90

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->i:Z

    if-eqz v0, :cond_8e

    const/4 v0, -0x1

    :goto_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_53 .. :try_end_61} :catchall_d8

    if-lez v0, :cond_69

    const-string/jumbo v1, "BUFFER_PLAYED"

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    :cond_69
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-nez v1, :cond_81

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-nez v1, :cond_81

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isMP3Codec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-eqz v1, :cond_db

    :cond_81
    iput v0, p4, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    :cond_83
    :goto_83
    return-void

    :cond_84
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-nez v2, :cond_50

    move-object p1, v0

    goto :goto_50

    :cond_8e
    move v0, v1

    goto :goto_60

    :cond_90
    :try_start_90
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    move v2, v1

    :goto_97
    if-ge v2, v4, :cond_b2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->f:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->f:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    array-length v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_97

    :cond_b2
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "feed oem audio data len ["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V
    :try_end_d6
    .catchall {:try_start_90 .. :try_end_d6} :catchall_d8

    :cond_d6
    move v0, v1

    goto :goto_60

    :catchall_d8
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_db
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-eqz v1, :cond_83

    iput v0, p3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    goto :goto_83
.end method

.method public audioCallback([BLjava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Float;Ljava/lang/Object;)V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "audio call back is called time: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_2b
    iget-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-nez v3, :cond_38

    const/4 v3, 0x1

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const-string/jumbo v3, "STARTED"

    invoke-direct {p0, v3}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    :cond_38
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isMP3Codec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v3

    if-eqz v3, :cond_8c

    :cond_50
    check-cast p2, [B

    move-object p1, p2

    :cond_53
    :goto_53
    array-length v3, p1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_98

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->i:Z

    if-eqz v0, :cond_96

    move v0, v1

    :goto_69
    if-lez v0, :cond_71

    const-string/jumbo v1, "BUFFER_PLAYED"

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    :cond_71
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-nez v1, :cond_89

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-nez v1, :cond_89

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isMP3Codec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-eqz v1, :cond_190

    :cond_89
    iput v0, p4, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v3

    if-nez v3, :cond_53

    move-object p1, v0

    goto :goto_53

    :cond_96
    move v0, v2

    goto :goto_69

    :cond_98
    :try_start_98
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    if-ge v3, v1, :cond_b5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_b3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Buffer is too small to contain the Speex buffer."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_b3
    move v0, v2

    goto :goto_69

    :cond_b5
    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_bb
    .catch Ljava/util/NoSuchElementException; {:try_start_98 .. :try_end_bb} :catch_bd

    move v0, v1

    goto :goto_69

    :catch_bd
    move-exception v0

    move v0, v2

    goto :goto_69

    :cond_c0
    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->m:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_d7

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->i:Z

    if-eqz v0, :cond_d5

    move v0, v1

    :goto_d0
    monitor-exit v4
    :try_end_d1
    .catchall {:try_start_c3 .. :try_end_d1} :catchall_d2

    goto :goto_69

    :catchall_d2
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_d5
    move v0, v2

    goto :goto_d0

    :cond_d7
    :try_start_d7
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_dc
    .catchall {:try_start_d7 .. :try_end_dc} :catchall_d2

    move-result-object v1

    :try_start_dd
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e2} :catch_138
    .catchall {:try_start_dd .. :try_end_e2} :catchall_d2

    :goto_e2
    const/4 v0, 0x0

    :try_start_e3
    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    array-length v0, v1

    if-ge v3, v0, :cond_178

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_16e

    move v0, v3

    :goto_f8
    array-length v2, v1

    if-ge v0, v2, :cond_102

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_102
    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_132

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "feed oem audio data len ["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] complete buffer size ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_132
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d0

    :catch_138
    move-exception v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "got an exception ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] message ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_e2

    :cond_16e
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_19c

    move v0, v3

    goto :goto_f8

    :cond_178
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_184

    array-length v2, v1

    move v0, v2

    goto/16 :goto_f8

    :cond_184
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_19c

    array-length v2, v1
    :try_end_18d
    .catchall {:try_start_e3 .. :try_end_18d} :catchall_d2

    move v0, v2

    goto/16 :goto_f8

    :cond_190
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-eqz v1, :cond_8b

    iput v0, p3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    goto/16 :goto_8b

    :cond_19c
    move v0, v2

    goto/16 :goto_f8
.end method

.method public doneCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;Ljava/lang/Object;)V
    .registers 9

    const/4 v5, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.doneCallback()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v2, 0x7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getAudioSink()Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;
    .registers 1

    return-object p0
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x5

    check-cast p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nXMode handleMessage - ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_2d
    iget-byte v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v0, :pswitch_data_31a

    :cond_32
    :goto_32
    return-void

    :pswitch_33
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.handleStartPlayback()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_43
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->k:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->isBluetoothHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->adjustCodecForBluetooth(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    :cond_58
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_81

    iput-short v4, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    :goto_5f
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eqz v0, :cond_a2

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a2

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_7a

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() wrong state [state != STATE_STARTING]!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_7a
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto :goto_32

    :cond_81
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-ne v0, v7, :cond_89

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    goto :goto_5f

    :cond_89
    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_9b

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() wrong state [state != STATE_INIT]!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_9b
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto :goto_32

    :cond_a2
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-nez v0, :cond_cb

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, p0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->startPlayback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_c3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() audioSys.startPlayback() return false!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_c3
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_cb
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->pausePlayback(I)Z

    move-result v0

    if-nez v0, :cond_ed

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_e5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() audioSys.pausePlayback() return false!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_e5
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_ed
    const-string/jumbo v0, "StreamStart"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b(Ljava/lang/String;)V

    goto/16 :goto_32

    :pswitch_f5
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_105

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.handleStopPlayback()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_105
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v3, :cond_32

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v5, :cond_32

    iput-short v5, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->stopPlayback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V

    goto/16 :goto_32

    :pswitch_117
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_127

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.handlePausePlayback()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_127
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v3, :cond_153

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v5, :cond_153

    iput-short v7, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->pausePlayback(I)Z

    move-result v0

    if-nez v0, :cond_32

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_14b

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() audioSys.pausePlayback() return false!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_14b
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_153
    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_17b

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PlayImpl.handlePausePlayback() wrong state [state == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_17b
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_32

    :pswitch_183
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_193

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.handlePrevious()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_193
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v3, :cond_1bd

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v5, :cond_1bd

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->previousPlayback()Z

    move-result v0

    if-nez v0, :cond_32

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() audioSys.previousPlayback() return false!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_1b5
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_1bd
    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PlayImpl.handlePausePlayback() wrong state [state == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_1e5
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_32

    :pswitch_1ed
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1fd

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.handleNext()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1fd
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v3, :cond_227

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v5, :cond_227

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->nextPlayback()Z

    move-result v0

    if-nez v0, :cond_32

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_21f

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() audioSys.nextPlayback() return false!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_21f
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_227
    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_24f

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PlayImpl.handlePausePlayback() wrong state [state == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_24f
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_32

    :pswitch_257
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v4

    check-cast v1, [B

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_277

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v3, "PlayerImpl.handleAddBuffer()"

    invoke-virtual {v0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_277
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->m:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v1, :cond_2c7

    :try_start_27c
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_2ba

    const/4 v0, 0x0

    aget-byte v0, v1, v0

    const/16 v4, 0x23

    if-ne v0, v4, :cond_2ba

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    const/16 v4, 0x21

    if-ne v0, v4, :cond_2ba

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    const/16 v4, 0x41

    if-ne v0, v4, :cond_2ba

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    const/16 v4, 0x4d

    if-ne v0, v4, :cond_2ba

    const/4 v0, 0x4

    aget-byte v0, v1, v0

    const/16 v4, 0x52

    if-ne v0, v4, :cond_2ba

    const/4 v0, 0x5

    aget-byte v0, v1, v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2ba

    array-length v0, v1

    add-int/lit8 v0, v0, -0x6

    new-array v0, v0, [B

    const/4 v4, 0x6

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v1, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :cond_2ba
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_2d2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2c7
    :goto_2c7
    if-eqz v2, :cond_2cc

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->i:Z

    :cond_2cc
    monitor-exit v3
    :try_end_2cd
    .catchall {:try_start_27c .. :try_end_2cd} :catchall_2cf

    goto/16 :goto_32

    :catchall_2cf
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2d2
    :try_start_2d2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2de
    .catchall {:try_start_2d2 .. :try_end_2de} :catchall_2cf

    goto :goto_2c7

    :pswitch_2df
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f7

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "audio done call back is called"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_2f7
    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_309

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_309
    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const-string/jumbo v0, "StreamStop"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "STOPPED"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_32

    nop

    :pswitch_data_31a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_f5
        :pswitch_117
        :pswitch_183
        :pswitch_1ed
        :pswitch_257
        :pswitch_2df
    .end packed-switch
.end method

.method public next()V
    .registers 6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.next()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .registers 6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.pause()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public previous()V
    .registers 6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.previous()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public start()V
    .registers 6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.start()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    const-string/jumbo v0, "PlayerStart"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .registers 6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.start()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    const-string/jumbo v0, "PlayerStop"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->l:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public stopCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "audio stop call back is called"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x5

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    invoke-virtual {p1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "PLAYBACK_ERROR"

    :goto_1e
    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    return-void

    :cond_22
    const-string/jumbo v0, "STOPPED"

    goto :goto_1e
.end method
