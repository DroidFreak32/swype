.class final Lcom/google/android/gms/internal/zzpw$zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zze"
.end annotation


# instance fields
.field final synthetic tQ:Lcom/google/android/gms/internal/zzpw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzpw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$zze;->tQ:Lcom/google/android/gms/internal/zzpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzpw;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpw$zze;-><init>(Lcom/google/android/gms/internal/zzpw;)V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zze;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpw;->tG:Lcom/google/android/gms/internal/zzvu;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzpw$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpw$zze;->tQ:Lcom/google/android/gms/internal/zzpw;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzpw$zzd;-><init>(Lcom/google/android/gms/internal/zzpw;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzvu;->zza(Lcom/google/android/gms/signin/internal/zzd;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zze;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpw;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zze;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 3000
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpw;->zzf(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zze;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 4000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpw;->zzapq()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zze;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 5000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpw;->zzapn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zze;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpw;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zze;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 6000
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpw;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpw$zze;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 8000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzpw;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
