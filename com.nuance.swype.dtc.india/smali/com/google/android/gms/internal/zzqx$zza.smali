.class final Lcom/google/android/gms/internal/zzqx$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field final synthetic vE:Lcom/google/android/gms/internal/zzqx;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "TransformedResultImpl"

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x46

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "TransformationResultHandler received unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx$zza;->vE:Lcom/google/android/gms/internal/zzqx;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzqx;->sT:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->vE:Lcom/google/android/gms/internal/zzqx;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzqx;->vx:Lcom/google/android/gms/internal/zzqx;

    .line 0
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0xd

    const-string/jumbo v4, "Transform returned null"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 3000
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzqx;->zzac(Lcom/google/android/gms/common/api/Status;)V

    .line 0
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    instance-of v2, v0, Lcom/google/android/gms/internal/zzqs;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqx$zza;->vE:Lcom/google/android/gms/internal/zzqx;

    .line 4000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzqx;->vx:Lcom/google/android/gms/internal/zzqx;

    .line 0
    check-cast v0, Lcom/google/android/gms/internal/zzqs;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzqs;->bY:Lcom/google/android/gms/common/api/Status;

    .line 6000
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzqx;->zzac(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 0
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqx$zza;->vE:Lcom/google/android/gms/internal/zzqx;

    .line 7000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzqx;->vx:Lcom/google/android/gms/internal/zzqx;

    .line 8000
    iget-object v3, v2, Lcom/google/android/gms/internal/zzqx;->sT:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v0, v2, Lcom/google/android/gms/internal/zzqx;->vz:Lcom/google/android/gms/common/api/PendingResult;

    .line 9000
    iget-object v0, v2, Lcom/google/android/gms/internal/zzqx;->vw:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/google/android/gms/internal/zzqx;->vy:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, v2, Lcom/google/android/gms/internal/zzqx;->sV:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-boolean v4, v2, Lcom/google/android/gms/internal/zzqx;->vC:Z

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/google/android/gms/internal/zzqx;->vw:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzqx;)V

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/google/android/gms/internal/zzqx;->vC:Z

    :cond_3
    iget-object v0, v2, Lcom/google/android/gms/internal/zzqx;->vA:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/google/android/gms/internal/zzqx;->vA:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzqx;->zzad(Lcom/google/android/gms/common/api/Status;)V

    .line 8000
    :cond_4
    :goto_2
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9000
    :cond_5
    :try_start_4
    iget-object v0, v2, Lcom/google/android/gms/internal/zzqx;->vz:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/google/android/gms/internal/zzqx;->vz:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 0
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "TransformedResultImpl"

    const-string/jumbo v3, "Runtime exception on the transformation worker thread: "

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
