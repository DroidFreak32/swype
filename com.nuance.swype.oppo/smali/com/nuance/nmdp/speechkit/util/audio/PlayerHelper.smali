.class public final Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;
.super Ljava/lang/Object;
.source "PlayerHelper.java"


# instance fields
.field private final _appContext:Ljava/lang/Object;

.field private final _context:Ljava/lang/Object;

.field private final _listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

.field private final _manager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

.field private final _playbackListener:Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;

.field private _player:Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;

.field private _starting:Z

.field private _stopSync:Ljava/lang/Object;

.field private _stopped:Z

.field private _stopping:Z

.field private _waitingForStop:Z


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V
    .locals 6
    .param p1, "manager"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "context"    # Ljava/lang/Object;
    .param p3, "appContext"    # Ljava/lang/Object;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    .param p5, "codec"    # Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->createPlaybackListener()Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_playbackListener:Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;

    .line 29
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    .line 30
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_manager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    .line 31
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_context:Ljava/lang/Object;

    .line 32
    iput-boolean v3, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_starting:Z

    .line 33
    iput-boolean v3, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_stopping:Z

    .line 34
    iput-boolean v3, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_stopped:Z

    .line 35
    iput-boolean v3, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_waitingForStop:Z

    .line 36
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_stopSync:Ljava/lang/Object;

    .line 37
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_appContext:Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/List;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/util/List;-><init>()V

    .line 40
    .local v0, "parameters":Lcom/nuance/nmdp/speechkit/util/List;
    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string v3, "Android_Context"

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_appContext:Ljava/lang/Object;

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_playbackListener:Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_manager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/List;->toVector()Ljava/util/Vector;

    move-result-object v4

    sget-object v5, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;->SPEAKER:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioManager;->createPlayer(Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;)Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_player:Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v1

    .line 45
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "Error creating player"

    invoke-static {p0, v2, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_player:Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_stopSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_stopped:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_waitingForStop:Z

    return v0
.end method

.method static synthetic access$202(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_waitingForStop:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_context:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    return-object v0
.end method

.method private createPlaybackListener()Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)V

    return-object v0
.end method


# virtual methods
.method public final getPlayer()Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_player:Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;

    return-object v0
.end method

.method public final startPlayer()V
    .locals 3

    .prologue
    .line 56
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_starting:Z

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_player:Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;

    if-eqz v1, :cond_0

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_starting:Z

    .line 62
    :try_start_0
    const-string v1, "Starting audio player"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_player:Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;

    invoke-interface {v1}, Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "Error starting player"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_context:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_1
    const-string v1, "Player already started"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final stopPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 79
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_starting:Z

    if-eqz v1, :cond_1

    .line 81
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_stopping:Z

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_player:Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;

    if-eqz v1, :cond_2

    .line 85
    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_stopping:Z

    .line 86
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_stopSync:Ljava/lang/Object;

    monitor-enter v2

    .line 89
    :try_start_0
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_stopped:Z

    if-nez v1, :cond_0

    .line 91
    const-string v1, "Stopping audio player"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_player:Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;

    invoke-interface {v1}, Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;->stop()V

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_waitingForStop:Z

    .line 100
    :goto_0
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_stopped:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 103
    :try_start_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_stopSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 110
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "Error stopping player"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_stopped:Z

    .line 113
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->_context:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->error(Ljava/lang/Object;)V

    goto :goto_1
.end method
