.class public final Lcom/google/android/gms/internal/zzc;
.super Ljava/lang/Thread;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final zzg:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzh:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzi:Lcom/google/android/gms/internal/zzb;

.field private final zzj:Lcom/google/android/gms/internal/zzn;

.field volatile zzk:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzs;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/zzc;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzn;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;",
            "Lcom/google/android/gms/internal/zzb;",
            "Lcom/google/android/gms/internal/zzn;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "VolleyCacheDispatcher"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzc;->zzk:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzc;->zzg:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzc;->zzh:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzc;->zzi:Lcom/google/android/gms/internal/zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzc;->zzj:Lcom/google/android/gms/internal/zzn;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzc;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc;->zzh:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/zzc;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "start new dispatcher"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc;->zzi:Lcom/google/android/gms/internal/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzb;->initialize()V

    :cond_18
    :goto_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc;->zzg:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzk;

    const-string/jumbo v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc;->zzi:Lcom/google/android/gms/internal/zzb;

    .line 2000
    iget-object v4, v0, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 0
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/zzb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/zzb$zza;

    move-result-object v4

    if-nez v4, :cond_42

    const-string/jumbo v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc;->zzh:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_3b} :catch_3c

    goto :goto_18

    :catch_3c
    move-exception v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzc;->zzk:Z

    if-eqz v0, :cond_18

    return-void

    .line 3000
    :cond_42
    :try_start_42
    iget-wide v6, v4, Lcom/google/android/gms/internal/zzb$zza;->zzd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_5d

    move v1, v2

    .line 0
    :goto_4d
    if-eqz v1, :cond_5f

    const-string/jumbo v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    .line 4000
    iput-object v4, v0, Lcom/google/android/gms/internal/zzk;->zzao:Lcom/google/android/gms/internal/zzb$zza;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc;->zzh:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_18

    :cond_5d
    move v1, v3

    .line 3000
    goto :goto_4d

    .line 0
    :cond_5f
    const-string/jumbo v1, "cache-hit"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzi;

    iget-object v5, v4, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    iget-object v6, v4, Lcom/google/android/gms/internal/zzb$zza;->zzf:Ljava/util/Map;

    invoke-direct {v1, v5, v6}, Lcom/google/android/gms/internal/zzi;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zza(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzm;

    move-result-object v5

    const-string/jumbo v1, "cache-hit-parsed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    .line 5000
    iget-wide v6, v4, Lcom/google/android/gms/internal/zzb$zza;->zze:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_8b

    move v1, v2

    .line 0
    :goto_83
    if-nez v1, :cond_8d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc;->zzj:Lcom/google/android/gms/internal/zzn;

    invoke-interface {v1, v0, v5}, Lcom/google/android/gms/internal/zzn;->zza(Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzm;)V

    goto :goto_18

    :cond_8b
    move v1, v3

    .line 5000
    goto :goto_83

    .line 0
    :cond_8d
    const-string/jumbo v1, "cache-hit-refresh-needed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    .line 6000
    iput-object v4, v0, Lcom/google/android/gms/internal/zzk;->zzao:Lcom/google/android/gms/internal/zzb$zza;

    .line 0
    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/google/android/gms/internal/zzm;->zzbh:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc;->zzj:Lcom/google/android/gms/internal/zzn;

    new-instance v4, Lcom/google/android/gms/internal/zzc$1;

    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/internal/zzc$1;-><init>(Lcom/google/android/gms/internal/zzc;Lcom/google/android/gms/internal/zzk;)V

    invoke-interface {v1, v0, v5, v4}, Lcom/google/android/gms/internal/zzn;->zza(Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzm;Ljava/lang/Runnable;)V
    :try_end_a2
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_a2} :catch_3c

    goto/16 :goto_18
.end method
