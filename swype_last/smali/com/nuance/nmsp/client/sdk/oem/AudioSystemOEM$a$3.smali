.class final Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;
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

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    :cond_3c
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;

    move-result-object v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->g(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;->doneCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_56
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;Z)Z

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_5e

    return-void

    :catchall_5e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
