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
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;)V
    .locals 4

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

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->BLUETOOTH_A2DP:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->h:Ljava/util/LinkedList;

    :cond_1
    check-cast p2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getCalllogSession()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_2

    const-string/jumbo v1, "NMSPPlayer"

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->o:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->NETWORK:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->NETWORK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->SPEAKER:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->SPEAKER:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->WIRED_HEADSET:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;

    invoke-virtual {p4, v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->WIRED_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;

    invoke-interface {v0, p0, p1}, Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;->playerUpdate(Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

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

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->o:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->o:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAudioBuf([BIIZ)V
    .locals 5
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

    if-eqz v0, :cond_0

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

    :cond_0
    if-nez p1, :cond_1

    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "buffer is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    if-gez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset cannot be negative!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p1, :cond_3

    if-gtz p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "length can only be positive!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne v0, v1, :cond_5

    :cond_4
    const v0, 0x25800

    if-le p3, v0, :cond_5

    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->stop()V

    :goto_0
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->g:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException;

    const-string/jumbo v1, "audio player is full, the last buffer has already apended!"

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->g:Z

    if-nez v0, :cond_7

    if-eqz p4, :cond_7

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->g:Z

    :cond_7
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
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

    goto :goto_0
.end method

.method public audioCallback(Ljava/util/Vector;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Float;Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const-string/jumbo v0, "STARTED"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isMP3Codec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    move-object p1, p2

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->m:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->i:Z

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_4

    const-string/jumbo v1, "BUFFER_PLAYED"

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isMP3Codec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_5
    iput v0, p4, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    :cond_6
    :goto_2
    return-void

    :cond_7
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_a

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

    goto :goto_3

    :cond_a
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_c
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput v0, p3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    goto :goto_2
.end method

.method public audioCallback([BLjava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Float;Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

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

    :cond_0
    iget-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const-string/jumbo v3, "STARTED"

    invoke-direct {p0, v3}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isMP3Codec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    check-cast p2, [B

    move-object p1, p2

    :cond_3
    :goto_0
    array-length v3, p1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->i:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    if-lez v0, :cond_4

    const-string/jumbo v1, "BUFFER_PLAYED"

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isMP3Codec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_5
    iput v0, p4, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    :cond_6
    :goto_2
    return-void

    :cond_7
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    if-ge v3, v1, :cond_b

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Buffer is too small to contain the Speex buffer."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_a
    move v0, v2

    goto :goto_1

    :cond_b
    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_c
    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->m:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_e

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->i:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_d
    move v0, v2

    goto :goto_3

    :cond_e
    :try_start_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    array-length v0, v1

    if-ge v3, v0, :cond_12

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v3

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_f

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_f
    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

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

    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :catch_1
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

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v3

    goto :goto_5

    :cond_12
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_13

    array-length v2, v1

    move v0, v2

    goto/16 :goto_5

    :cond_13
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_15

    array-length v2, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v2

    goto/16 :goto_5

    :cond_14
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput v0, p3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    goto/16 :goto_2

    :cond_15
    move v0, v2

    goto/16 :goto_5
.end method

.method public doneCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.doneCallback()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
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
    .locals 0

    return-object p0
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x5

    check-cast p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-byte v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.handleStartPlayback()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->k:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->isBluetoothHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->adjustCodecForBluetooth(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    :cond_3
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iput-short v4, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    :goto_1
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eqz v0, :cond_8

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() wrong state [state != STATE_STARTING]!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_4
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-ne v0, v7, :cond_6

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    goto :goto_1

    :cond_6
    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() wrong state [state != STATE_INIT]!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_7
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, p0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->startPlayback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() audioSys.startPlayback() return false!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_9
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->pausePlayback(I)Z

    move-result v0

    if-nez v0, :cond_c

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() audioSys.pausePlayback() return false!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_b
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "StreamStart"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.handleStopPlayback()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_d
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v5, :cond_1

    iput-short v5, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->stopPlayback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.handlePausePlayback()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_e
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v3, :cond_10

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v5, :cond_10

    iput-short v7, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0, v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->pausePlayback(I)Z

    move-result v0

    if-nez v0, :cond_1

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() audioSys.pausePlayback() return false!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_f
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

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

    :cond_11
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.handlePrevious()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_12
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v3, :cond_14

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v5, :cond_14

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->previousPlayback()Z

    move-result v0

    if-nez v0, :cond_1

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() audioSys.previousPlayback() return false!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_13
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

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

    :cond_15
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.handleNext()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_16
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v3, :cond_18

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    if-eq v0, v5, :cond_18

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;->nextPlayback()Z

    move-result v0

    if-nez v0, :cond_1

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayImpl.handleStartPlayback() audioSys.nextPlayback() return false!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_17
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

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

    :cond_19
    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
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

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v3, "PlayerImpl.handleAddBuffer()"

    invoke-virtual {v0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1a
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->m:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v1, :cond_1c

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    aget-byte v0, v1, v0

    const/16 v4, 0x23

    if-ne v0, v4, :cond_1b

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    const/16 v4, 0x21

    if-ne v0, v4, :cond_1b

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    const/16 v4, 0x41

    if-ne v0, v4, :cond_1b

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    const/16 v4, 0x4d

    if-ne v0, v4, :cond_1b

    const/4 v0, 0x4

    aget-byte v0, v1, v0

    const/16 v4, 0x52

    if-ne v0, v4, :cond_1b

    const/4 v0, 0x5

    aget-byte v0, v1, v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_1b

    array-length v0, v1

    add-int/lit8 v0, v0, -0x6

    new-array v0, v0, [B

    const/4 v4, 0x6

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v1, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :cond_1b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_2
    if-eqz v2, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->i:Z

    :cond_1d
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1e
    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->e:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_6
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "audio done call back is called"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1f
    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const-string/jumbo v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    const-string/jumbo v0, "StreamStop"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "STOPPED"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public next()V
    .locals 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.next()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
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
    .locals 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.pause()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
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
    .locals 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.previous()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
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
    .locals 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.start()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
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
    .locals 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PlayerImpl.start()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
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
    .locals 2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "audio stop call back is called"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x5

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->j:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    invoke-virtual {p1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PLAYBACK_ERROR"

    :goto_0
    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, "STOPPED"

    goto :goto_0
.end method
