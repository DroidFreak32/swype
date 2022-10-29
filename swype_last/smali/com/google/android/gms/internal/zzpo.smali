.class public abstract Lcom/google/android/gms/internal/zzpo;
.super Lcom/google/android/gms/common/api/PendingResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpo$zzb;,
        Lcom/google/android/gms/internal/zzpo$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final sS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final sT:Ljava/lang/Object;

.field protected final sU:Lcom/google/android/gms/internal/zzpo$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpo$zza",
            "<TR;>;"
        }
    .end annotation
.end field

.field protected final sV:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final sW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult$zza;",
            ">;"
        }
    .end annotation
.end field

.field private sX:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private sY:Lcom/google/android/gms/internal/zzpo$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpo$zzb;"
        }
    .end annotation
.end field

.field private volatile sZ:Z

.field private sm:Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private ta:Z

.field private tb:Lcom/google/android/gms/common/internal/zzr;

.field private volatile tc:Lcom/google/android/gms/internal/zzqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqx",
            "<TR;>;"
        }
    .end annotation
.end field

.field private td:Z

.field private zzak:Z

.field private final zzale:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzpo$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpo$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpo;->sS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sT:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->zzale:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sW:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->td:Z

    new-instance v0, Lcom/google/android/gms/internal/zzpo$zza;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzpo$zza;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sU:Lcom/google/android/gms/internal/zzpo$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sV:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sT:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->zzale:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sW:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->td:Z

    new-instance v0, Lcom/google/android/gms/internal/zzpo$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzpo$zza;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sU:Lcom/google/android/gms/internal/zzpo$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sV:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sT:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->zzale:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sW:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->td:Z

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_22
    new-instance v1, Lcom/google/android/gms/internal/zzpo$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzpo$zza;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpo;->sU:Lcom/google/android/gms/internal/zzpo$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sV:Ljava/lang/ref/WeakReference;

    return-void

    :cond_31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_22
.end method

.method private get()Lcom/google/android/gms/common/api/Result;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpo;->sT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpo;->sZ:Z

    if-nez v2, :cond_28

    :goto_8
    const-string/jumbo v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpo;->isReady()Z

    move-result v0

    const-string/jumbo v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sm:Lcom/google/android/gms/common/api/Result;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpo;->sm:Lcom/google/android/gms/common/api/Result;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpo;->sX:Lcom/google/android/gms/common/api/ResultCallback;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzpo;->sZ:Z

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpo;->zzaos()V

    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_8

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private isCanceled()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpo;->sT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->zzak:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpo;)Lcom/google/android/gms/common/api/Result;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sm:Lcom/google/android/gms/common/api/Result;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/common/api/Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzpo;->sm:Lcom/google/android/gms/common/api/Result;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpo;->tb:Lcom/google/android/gms/common/internal/zzr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->zzale:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sm:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->zzak:Z

    if-eqz v0, :cond_2b

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpo;->sX:Lcom/google/android/gms/common/api/ResultCallback;

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult$zza;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/PendingResult$zza;->zzv$e184e5d()V

    goto :goto_1b

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sX:Lcom/google/android/gms/common/api/ResultCallback;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sm:Lcom/google/android/gms/common/api/Result;

    instance-of v0, v0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v0, :cond_15

    new-instance v0, Lcom/google/android/gms/internal/zzpo$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzpo$zzb;-><init>(Lcom/google/android/gms/internal/zzpo;B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sY:Lcom/google/android/gms/internal/zzpo$zzb;

    goto :goto_15

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sU:Lcom/google/android/gms/internal/zzpo$zza;

    .line 1000
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpo$zza;->removeMessages(I)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sU:Lcom/google/android/gms/internal/zzpo$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpo;->sX:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpo;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpo$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_15

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static zze(Lcom/google/android/gms/common/api/Result;)V
    .registers 2

    instance-of v0, p0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v0, :cond_4

    :cond_4
    return-void
.end method


# virtual methods
.method public final await$140a99d0(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    cmp-long v0, v4, v4

    if-lez v0, :cond_12

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_4c

    :cond_12
    move v0, v2

    :goto_13
    const-string/jumbo v3, "await must not be called on the UI thread when time is greater than zero."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->sZ:Z

    if-nez v0, :cond_4e

    move v0, v2

    :goto_1e
    const-string/jumbo v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->tc:Lcom/google/android/gms/internal/zzqx;

    if-nez v0, :cond_50

    :goto_28
    const-string/jumbo v0, "Cannot await if then() has been called."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    :try_start_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->zzale:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3d

    sget-object v0, Lcom/google/android/gms/common/api/Status;->st:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpo;->zzaa(Lcom/google/android/gms/common/api/Status;)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_3d} :catch_52

    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpo;->isReady()Z

    move-result v0

    const-string/jumbo v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpo;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_4c
    move v0, v1

    goto :goto_13

    :cond_4e
    move v0, v1

    goto :goto_1e

    :cond_50
    move v2, v1

    goto :goto_28

    :catch_52
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sr:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpo;->zzaa(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3d
.end method

.method public final cancel()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpo;->sT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->zzak:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->sZ:Z

    if-eqz v0, :cond_d

    :cond_b
    monitor-exit v1

    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->zzak:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->su:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpo;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpo;->zzd(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v1

    goto :goto_c

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public final isReady()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->zzale:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpo;->sT:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_c

    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sX:Lcom/google/android/gms/common/api/ResultCallback;

    monitor-exit v3

    :goto_b
    return-void

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpo;->sZ:Z

    if-nez v2, :cond_2c

    move v2, v0

    :goto_11
    const-string/jumbo v4, "Result has already been consumed."

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpo;->tc:Lcom/google/android/gms/internal/zzqx;

    if-nez v2, :cond_2e

    :goto_1b
    const-string/jumbo v1, "Cannot set callbacks if then() has been called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpo;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_30

    monitor-exit v3

    goto :goto_b

    :catchall_29
    move-exception v0

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    move v2, v1

    goto :goto_11

    :cond_2e
    move v0, v1

    goto :goto_1b

    :cond_30
    :try_start_30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpo;->isReady()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sU:Lcom/google/android/gms/internal/zzpo$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpo;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzpo$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_3f
    monitor-exit v3

    goto :goto_b

    :cond_41
    iput-object p1, p0, Lcom/google/android/gms/internal/zzpo;->sX:Lcom/google/android/gms/common/api/ResultCallback;
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_29

    goto :goto_3f
.end method

.method public final zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->sZ:Z

    if-nez v0, :cond_28

    move v0, v1

    :goto_7
    const-string/jumbo v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    if-eqz p1, :cond_2a

    :goto_f
    const-string/jumbo v0, "Callback cannot be null."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpo;->sT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpo;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sm:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/PendingResult$zza;->zzv$e184e5d()V

    :goto_26
    monitor-exit v1

    return-void

    :cond_28
    move v0, v2

    goto :goto_7

    :cond_2a
    move v1, v2

    goto :goto_f

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public final zzaa(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpo;->sT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpo;->isReady()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpo;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpo;->zzc(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->ta:Z

    :cond_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected zzaos()V
    .registers 1

    return-void
.end method

.method public final zzaov()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpo;->sT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpo;->sV:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->td:Z

    if-nez v0, :cond_14

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpo;->cancel()V

    :cond_14
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpo;->isCanceled()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public final zzaow()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->td:Z

    if-nez v0, :cond_12

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->sS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_12
    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpo;->td:Z

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public abstract zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public final zzc(Lcom/google/android/gms/common/api/Result;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpo;->sT:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpo;->ta:Z

    if-nez v2, :cond_2f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpo;->zzak:Z

    if-nez v2, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpo;->isReady()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpo;->isReady()Z

    move-result v2

    if-nez v2, :cond_34

    move v2, v0

    :goto_1a
    const-string/jumbo v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpo;->sZ:Z

    if-nez v2, :cond_36

    :goto_24
    const-string/jumbo v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpo;->zzd(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v3

    :goto_2e
    return-void

    :cond_2f
    monitor-exit v3

    goto :goto_2e

    :catchall_31
    move-exception v0

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v0

    :cond_34
    move v2, v1

    goto :goto_1a

    :cond_36
    move v0, v1

    goto :goto_24
.end method
