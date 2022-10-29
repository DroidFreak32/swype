.class public final Lcom/google/android/gms/internal/zzko;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public final zzail:Ljava/lang/Object;

.field private zzcmm:Landroid/os/HandlerThread;

.field public zzcmn:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzcmm:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzko;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzko;->zzcmn:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzail:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zztq()Landroid/os/Looper;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzko;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzko;->zzcmn:I

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzcmm:Landroid/os/HandlerThread;

    if-nez v0, :cond_41

    const-string/jumbo v0, "Starting the looper thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "LooperProvider"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzcmm:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzcmm:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzko;->zzcmm:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzko;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "Looper thread started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    :goto_33
    iget v0, p0, Lcom/google/android/gms/internal/zzko;->zzcmn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzko;->zzcmn:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzcmm:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_41
    const-string/jumbo v0, "Resuming the looper thread"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_33

    :catchall_4d
    move-exception v0

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v0

    :cond_50
    :try_start_50
    iget-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzcmm:Landroid/os/HandlerThread;

    const-string/jumbo v2, "Invalid state: mHandlerThread should already been initialized."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_4d

    goto :goto_33
.end method
