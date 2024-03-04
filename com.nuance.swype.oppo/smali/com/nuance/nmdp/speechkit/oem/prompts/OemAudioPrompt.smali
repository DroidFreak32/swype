.class public Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;
.super Ljava/lang/Object;
.source "OemAudioPrompt.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/util/audio/IAudioPrompt;


# instance fields
.field private _context:Ljava/lang/Object;

.field private _currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

.field private _duration:I

.field private _file:Landroid/content/res/AssetFileDescriptor;

.field private _isDisposed:Z

.field private _player:Landroid/media/MediaPlayer;

.field private _restart:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    .line 27
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_context:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    .line 29
    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_restart:Z

    .line 30
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_file:Landroid/content/res/AssetFileDescriptor;

    .line 31
    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_isDisposed:Z

    .line 32
    iput v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_duration:I

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_isDisposed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->createPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_context:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_context:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_restart:Z

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->play()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->playerDone(Z)V

    return-void
.end method

.method private createPlayer()Landroid/media/MediaPlayer;
    .locals 10

    .prologue
    .line 158
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 160
    .local v0, "player":Landroid/media/MediaPlayer;
    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_file:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 161
    .local v2, "offset":J
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_file:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 162
    .local v4, "length":J
    const-wide/16 v8, -0x1

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    .line 164
    const-string v1, "Attempting to initialize MediaPlayer with asset file of unknown length"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_file:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 170
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 171
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_duration:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    new-instance v1, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$2;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$2;-><init>(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 195
    new-instance v1, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$3;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$3;-><init>(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 208
    .end local v0    # "player":Landroid/media/MediaPlayer;
    .end local v2    # "offset":J
    .end local v4    # "length":J
    :goto_1
    return-object v0

    .line 168
    .restart local v0    # "player":Landroid/media/MediaPlayer;
    .restart local v2    # "offset":J
    .restart local v4    # "length":J
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_file:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 172
    .end local v2    # "offset":J
    .end local v4    # "length":J
    :catch_0
    move-exception v6

    .line 173
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "Unable to create MediaPlayer for audio prompt"

    invoke-static {p0, v1, v6}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private play()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_restart:Z

    .line 100
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 101
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_context:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->started(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method private playerDone(Z)V
    .locals 1
    .param p1, "error"    # Z

    .prologue
    .line 109
    new-instance v0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;-><init>(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Z)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_isDisposed:Z

    .line 221
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 224
    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_file:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_1

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_file:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_file:Landroid/content/res/AssetFileDescriptor;

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_context:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->error(Ljava/lang/Object;)V

    .line 239
    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    .line 241
    :cond_2
    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_context:Ljava/lang/Object;

    .line 242
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Error closing audio prompt file"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_duration:I

    return v0
.end method

.method public init(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1
    .param p1, "file"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_file:Landroid/content/res/AssetFileDescriptor;

    .line 39
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->createPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    .line 40
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->dispose()V

    .line 44
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_isDisposed:Z

    return v0
.end method

.method public start(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;Ljava/lang/Object;)V
    .locals 1
    .param p1, "appContext"    # Ljava/lang/Object;
    .param p2, "listener"    # Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_isDisposed:Z

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    const-string v0, "Can\'t start disposed audio prompt"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p2, p3}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->error(Ljava/lang/Object;)V

    .line 68
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "Starting audio prompt"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    .line 58
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_context:Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const-string v0, "Audio prompt is already playing. Stopping to restart."

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_restart:Z

    goto :goto_0

    .line 66
    :cond_2
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->play()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_restart:Z

    .line 76
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    .line 89
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->createPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    .line 90
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->dispose()V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "Error stopping player"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
