.class Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;
.super Ljava/lang/Object;
.source "PlayerHelper.java"

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->createPlaybackListener()Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private _bufferPlayed:Z

.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)V
    .locals 1

    .prologue
    .line 131
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->_bufferPlayed:Z

    return-void
.end method

.method private handleStop()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->access$000(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->access$102(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;Z)Z

    .line 141
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->access$200(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->access$000(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 144
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->access$202(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;Z)Z

    .line 146
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public playerUpdate(Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;Ljava/lang/String;)V
    .locals 2
    .param p1, "player"    # Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "BUFFER_PLAYED"

    if-ne p2, v0, :cond_1

    .line 152
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->_bufferPlayed:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    const-string v1, "First audio buffer played"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->access$400(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->access$300(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->started(Ljava/lang/Object;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->_bufferPlayed:Z

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v0, "BUFFERING"

    if-eq p2, v0, :cond_0

    .line 162
    const-string v0, "STARTED"

    if-ne p2, v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    const-string v1, "Audio playback started"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    const-string v0, "STOPPED"

    if-ne p2, v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    const-string v1, "Audio playback stopped"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->handleStop()V

    .line 169
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->access$400(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->access$300(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->stopped(Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :cond_3
    const-string v0, "PLAYBACK_ERROR"

    if-ne p2, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    const-string v1, "Audio playback error"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->handleStop()V

    .line 174
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->access$400(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;->access$300(Lcom/nuance/nmdp/speechkit/util/audio/PlayerHelper;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->error(Ljava/lang/Object;)V

    goto :goto_0
.end method
