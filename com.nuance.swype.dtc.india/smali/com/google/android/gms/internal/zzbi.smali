.class public final Lcom/google/android/gms/internal/zzbi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzaey:Lcom/google/android/gms/internal/zzax;

.field private final zzaha:Lcom/google/android/gms/internal/zzae$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzae$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbi;->zzaey:Lcom/google/android/gms/internal/zzax;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbi;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    return-void
.end method

.method private zzcx()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzaey:Lcom/google/android/gms/internal/zzax;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzax;->zzagn:Ljava/util/concurrent/Future;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzaey:Lcom/google/android/gms/internal/zzax;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzax;->zzagn:Ljava/util/concurrent/Future;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzaey:Lcom/google/android/gms/internal/zzax;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzax;->zzagm:Lcom/google/android/gms/internal/zzae$zza;

    .line 0
    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbi;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzapu; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbi;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapv;->zzf(Lcom/google/android/gms/internal/zzapv;)[B

    move-result-object v0

    .line 4000
    array-length v3, v0

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/zzapv;->zzb$16844d7a(Lcom/google/android/gms/internal/zzapv;[BI)Lcom/google/android/gms/internal/zzapv;

    .line 0
    monitor-exit v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzapu; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbi;->zzcx()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
