.class final Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "++++++++++++========== stop mTrack: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_2b
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_30
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->e(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Z

    move-result v0

    if-nez v0, :cond_f0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->f(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Z

    move-result v0

    if-nez v0, :cond_f0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_ed

    :try_start_45
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_5a
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    :cond_88
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;

    move-result-object v0

    sget-object v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->g(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;->doneCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;Ljava/lang/Object;)V

    sget-object v3, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexDecodeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9c
    .catchall {:try_start_45 .. :try_end_9c} :catchall_ea

    :try_start_9c
    sget-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->isSpeexDecodeInit:Z

    if-eqz v0, :cond_ce

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->decodeCleanupSpeex()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[S)[S

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[B)[B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->isSpeexDecodeInit:Z

    :cond_b6
    :goto_b6
    monitor-exit v3
    :try_end_b7
    .catchall {:try_start_9c .. :try_end_b7} :catchall_e7

    :try_start_b7
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v2
    :try_end_cc
    .catchall {:try_start_b7 .. :try_end_cc} :catchall_ea

    :cond_cc
    :goto_cc
    :try_start_cc
    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_ed

    return-void

    :cond_ce
    :try_start_ce
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    const-string/jumbo v4, "Speex was already cleaned up"

    invoke-virtual {v0, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V
    :try_end_e6
    .catchall {:try_start_ce .. :try_end_e6} :catchall_e7

    goto :goto_b6

    :catchall_e7
    move-exception v0

    :try_start_e8
    monitor-exit v3

    throw v0
    :try_end_ea
    .catchall {:try_start_e8 .. :try_end_ea} :catchall_ea

    :catchall_ea
    move-exception v0

    :try_start_eb
    monitor-exit v2

    throw v0
    :try_end_ed
    .catchall {:try_start_eb .. :try_end_ed} :catchall_ed

    :catchall_ed
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_f0
    :try_start_f0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    const-string/jumbo v2, "AudioSystemOEM was already stopping"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V
    :try_end_108
    .catchall {:try_start_f0 .. :try_end_108} :catchall_ed

    goto :goto_cc
.end method
