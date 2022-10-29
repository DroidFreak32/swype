.class public final Lcom/google/android/gms/internal/zzl;
.super Ljava/lang/Object;


# instance fields
.field private zzax:Ljava/util/concurrent/atomic/AtomicInteger;

.field final zzay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field final zzaz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;"
        }
    .end annotation
.end field

.field final zzba:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzbb:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;"
        }
    .end annotation
.end field

.field private zzbc:[Lcom/google/android/gms/internal/zzg;

.field private zzbd:Lcom/google/android/gms/internal/zzc;

.field zzbe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzi:Lcom/google/android/gms/internal/zzb;

.field private final zzj:Lcom/google/android/gms/internal/zzn;

.field private final zzy:Lcom/google/android/gms/internal/zzf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzf;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zze;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zze;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzl;-><init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzf;Lcom/google/android/gms/internal/zzn;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzf;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzl;-><init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzf;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzf;Lcom/google/android/gms/internal/zzn;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzax:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzay:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzaz:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzba:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzbb:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzbe:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzl;->zzi:Lcom/google/android/gms/internal/zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzl;->zzy:Lcom/google/android/gms/internal/zzf;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/zzg;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzbc:[Lcom/google/android/gms/internal/zzg;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzl;->zzj:Lcom/google/android/gms/internal/zzn;

    return-void
.end method


# virtual methods
.method public final start()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzbd:Lcom/google/android/gms/internal/zzc;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzbd:Lcom/google/android/gms/internal/zzc;

    .line 2000
    iput-boolean v3, v0, Lcom/google/android/gms/internal/zzc;->zzk:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzc;->interrupt()V

    :cond_d
    move v0, v1

    .line 1000
    :goto_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzl;->zzbc:[Lcom/google/android/gms/internal/zzg;

    array-length v2, v2

    if-ge v0, v2, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/internal/zzl;->zzbc:[Lcom/google/android/gms/internal/zzg;

    aget-object v2, v2, v0

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/google/android/gms/internal/zzl;->zzbc:[Lcom/google/android/gms/internal/zzg;

    aget-object v2, v2, v0

    .line 3000
    iput-boolean v3, v2, Lcom/google/android/gms/internal/zzg;->zzk:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzg;->interrupt()V

    .line 1000
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 0
    :cond_25
    new-instance v0, Lcom/google/android/gms/internal/zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzl;->zzba:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzl;->zzbb:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzl;->zzi:Lcom/google/android/gms/internal/zzb;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzl;->zzj:Lcom/google/android/gms/internal/zzn;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzc;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzbd:Lcom/google/android/gms/internal/zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzbd:Lcom/google/android/gms/internal/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzc;->start()V

    :goto_39
    iget-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzbc:[Lcom/google/android/gms/internal/zzg;

    array-length v0, v0

    if-ge v1, v0, :cond_55

    new-instance v0, Lcom/google/android/gms/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzl;->zzbb:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzl;->zzy:Lcom/google/android/gms/internal/zzf;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzl;->zzi:Lcom/google/android/gms/internal/zzb;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzl;->zzj:Lcom/google/android/gms/internal/zzn;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzg;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/zzf;Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzn;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzl;->zzbc:[Lcom/google/android/gms/internal/zzg;

    aput-object v0, v2, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzg;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_55
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzk;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzk",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 0
    .line 4000
    iput-object p0, p1, Lcom/google/android/gms/internal/zzk;->zzai:Lcom/google/android/gms/internal/zzl;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzl;->zzaz:Ljava/util/Set;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzaz:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_27

    .line 5000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzax:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 6000
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/zzk;->zzah:Ljava/lang/Integer;

    .line 0
    const-string/jumbo v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    .line 7000
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzk;->zzaj:Z

    .line 0
    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzbb:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_26
    return-object p1

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzl;->zzay:Ljava/util/Map;

    monitor-enter v1

    .line 9000
    :try_start_2d
    iget-object v2, p1, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzay:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzay:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_46

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_46
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzl;->zzay:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/google/android/gms/internal/zzs;->DEBUG:Z

    if-eqz v0, :cond_5e

    const-string/jumbo v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5e
    :goto_5e
    monitor-exit v1

    goto :goto_26

    :catchall_60
    move-exception v0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_2d .. :try_end_62} :catchall_60

    throw v0

    :cond_63
    :try_start_63
    iget-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzay:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzl;->zzba:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_60

    goto :goto_5e
.end method
