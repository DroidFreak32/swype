.class final Lcom/google/android/gms/internal/zzpq$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic tt:Lcom/google/android/gms/internal/zzpq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzpq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzpq;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpq$zza;-><init>(Lcom/google/android/gms/internal/zzpq;)V

    return-void
.end method


# virtual methods
.method public final zzc(IZ)V
    .registers 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 11000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 12000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzpq;->tq:Z

    .line 0
    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 13000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    .line 0
    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 14000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 15000
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzpq;->tq:Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzpq;->zza(Lcom/google/android/gms/internal/zzpq;IZ)V
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_43

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 16000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2e
    return-void

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 17000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzpq;->tq:Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 18000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    .line 0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqa;->onConnectionSuspended(I)V
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_43

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 19000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2e

    :catchall_43
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 20000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 8000
    iput-object p1, v0, Lcom/google/android/gms/internal/zzpq;->to:Lcom/google/android/gms/common/ConnectionResult;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpq;->zzb(Lcom/google/android/gms/internal/zzpq;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 10000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zzm(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 3000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzpq;->tn:Landroid/os/Bundle;

    if-nez v1, :cond_22

    iput-object p1, v0, Lcom/google/android/gms/internal/zzpq;->tn:Landroid/os/Bundle;

    .line 0
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->rb:Lcom/google/android/gms/common/ConnectionResult;

    .line 4000
    iput-object v1, v0, Lcom/google/android/gms/internal/zzpq;->to:Lcom/google/android/gms/common/ConnectionResult;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpq;->zzb(Lcom/google/android/gms/internal/zzpq;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 3000
    :cond_22
    if-eqz p1, :cond_f

    :try_start_24
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tn:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    goto :goto_f

    .line 0
    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq$zza;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 6000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
