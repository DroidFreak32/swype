.class public final Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;
.super Ljava/lang/Object;
.source "PromptHelper.java"


# instance fields
.field private final _appContext:Ljava/lang/Object;

.field private final _context:Ljava/lang/Object;

.field private final _listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

.field private final _prompt:Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

.field private _started:Z

.field private final _stopSync:Ljava/lang/Object;

.field private _stopped:Z


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;)V
    .locals 1
    .param p1, "p"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p2, "appContext"    # Ljava/lang/Object;
    .param p3, "context"    # Ljava/lang/Object;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_prompt:Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    .line 18
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_context:Ljava/lang/Object;

    .line 19
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_started:Z

    .line 20
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_stopped:Z

    .line 21
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_appContext:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_stopSync:Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper$1;

    invoke-direct {v0, p0, p4}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper$1;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_stopSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_stopped:Z

    return p1
.end method


# virtual methods
.method public final start()V
    .locals 4

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_started:Z

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_started:Z

    .line 53
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_prompt:Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_appContext:Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_context:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;->start(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;Ljava/lang/Object;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string/jumbo v0, "Prompt already started"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_started:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_stopSync:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_stopped:Z

    if-nez v0, :cond_0

    .line 67
    const-string/jumbo v0, "Stopping prompt"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_stopped:Z

    .line 69
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_prompt:Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;->stop()V

    .line 71
    :cond_0
    monitor-exit v1

    .line 73
    :cond_1
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
