.class final Lcom/google/android/gms/internal/zzqc$zzb;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzb"
.end annotation


# instance fields
.field private final uN:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final uO:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqc$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final uR:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;>;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqc$zza;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "GoogleApiCleanup"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzb;->uR:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqc$zzb;->uN:Ljava/lang/ref/ReferenceQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqc$zzb;->uO:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqc$zzb;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzb;->uR:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzb;->uR:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzb;->uR:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzb;->uN:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqc$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzb;->uO:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc$zza;->zza(Lcom/google/android/gms/internal/zzqc$zza;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzqc$zza;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzqc$zza;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    iget v0, v0, Lcom/google/android/gms/internal/zzqc$zza;->sx:I

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_3c} :catch_3d
    .catchall {:try_start_c .. :try_end_3c} :catchall_4a

    goto :goto_c

    .line 0
    :catch_3d
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzb;->uR:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzb;->uR:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_43

    :catchall_4a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzb;->uR:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
