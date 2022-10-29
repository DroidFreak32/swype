.class public final Lcom/google/android/gms/internal/zzg;
.super Ljava/lang/Thread;


# instance fields
.field private final zzi:Lcom/google/android/gms/internal/zzb;

.field private final zzj:Lcom/google/android/gms/internal/zzn;

.field volatile zzk:Z

.field private final zzx:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzy:Lcom/google/android/gms/internal/zzf;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/zzf;Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzn;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;",
            "Lcom/google/android/gms/internal/zzf;",
            "Lcom/google/android/gms/internal/zzb;",
            "Lcom/google/android/gms/internal/zzn;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "VolleyNetworkDispatcher"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzg;->zzk:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzg;->zzx:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzg;->zzy:Lcom/google/android/gms/internal/zzf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzg;->zzi:Lcom/google/android/gms/internal/zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzg;->zzj:Lcom/google/android/gms/internal/zzn;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_6
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzg;->zzx:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzk;
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_12} :catch_51

    :try_start_12
    const-string/jumbo v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    .line 1000
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v1, v4, :cond_23

    .line 2000
    iget v1, v0, Lcom/google/android/gms/internal/zzk;->zzaf:I

    .line 1000
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 0
    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/internal/zzg;->zzy:Lcom/google/android/gms/internal/zzf;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzf;->zza(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzi;

    move-result-object v1

    const-string/jumbo v4, "network-http-complete"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/google/android/gms/internal/zzi;->zzaa:Z

    if-eqz v4, :cond_57

    .line 3000
    iget-boolean v4, v0, Lcom/google/android/gms/internal/zzk;->zzal:Z

    .line 0
    if-eqz v4, :cond_57

    const-string/jumbo v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzd(Ljava/lang/String;)V
    :try_end_3d
    .catch Lcom/google/android/gms/internal/zzr; {:try_start_12 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3d} :catch_81

    goto :goto_6

    :catch_3e
    move-exception v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 8000
    iput-wide v2, v1, Lcom/google/android/gms/internal/zzr;->zzab:J

    .line 9000
    invoke-static {v1}, Lcom/google/android/gms/internal/zzk;->zzb(Lcom/google/android/gms/internal/zzr;)Lcom/google/android/gms/internal/zzr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzg;->zzj:Lcom/google/android/gms/internal/zzn;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/zzn;->zza(Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V

    goto :goto_6

    .line 0
    :catch_51
    move-exception v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzg;->zzk:Z

    if-eqz v0, :cond_6

    return-void

    :cond_57
    :try_start_57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zza(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzm;

    move-result-object v1

    const-string/jumbo v4, "network-parse-complete"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    .line 4000
    iget-boolean v4, v0, Lcom/google/android/gms/internal/zzk;->zzaj:Z

    .line 0
    if-eqz v4, :cond_78

    iget-object v4, v1, Lcom/google/android/gms/internal/zzm;->zzbf:Lcom/google/android/gms/internal/zzb$zza;

    if-eqz v4, :cond_78

    iget-object v4, p0, Lcom/google/android/gms/internal/zzg;->zzi:Lcom/google/android/gms/internal/zzb;

    .line 6000
    iget-object v5, v0, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 0
    iget-object v6, v1, Lcom/google/android/gms/internal/zzm;->zzbf:Lcom/google/android/gms/internal/zzb$zza;

    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/internal/zzb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzb$zza;)V

    const-string/jumbo v4, "network-cache-written"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    .line 7000
    :cond_78
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/zzk;->zzal:Z

    .line 0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzg;->zzj:Lcom/google/android/gms/internal/zzn;

    invoke-interface {v4, v0, v1}, Lcom/google/android/gms/internal/zzn;->zza(Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzm;)V
    :try_end_80
    .catch Lcom/google/android/gms/internal/zzr; {:try_start_57 .. :try_end_80} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_80} :catch_81

    goto :goto_6

    :catch_81
    move-exception v1

    const-string/jumbo v4, "Unhandled exception %s"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/zzr;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/zzr;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 10000
    iput-wide v2, v4, Lcom/google/android/gms/internal/zzr;->zzab:J

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzg;->zzj:Lcom/google/android/gms/internal/zzn;

    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/internal/zzn;->zza(Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V

    goto/16 :goto_6
.end method
