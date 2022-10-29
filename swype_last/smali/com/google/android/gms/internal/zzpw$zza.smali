.class final Lcom/google/android/gms/internal/zzpw$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzd$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final pN:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private final tR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzpw;",
            ">;"
        }
    .end annotation
.end field

.field final tf:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpw;Lcom/google/android/gms/common/api/Api;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpw;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpw$zza;->tR:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpw$zza;->pN:Lcom/google/android/gms/common/api/Api;

    iput p3, p0, Lcom/google/android/gms/internal/zzpw$zza;->tf:I

    return-void
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zza;->tR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1000
    iget-object v3, v0, Lcom/google/android/gms/internal/zzpw;->tw:Lcom/google/android/gms/internal/zzqa;

    .line 0
    iget-object v3, v3, Lcom/google/android/gms/internal/zzqa;->th:Lcom/google/android/gms/internal/zzpy;

    .line 2000
    iget-object v3, v3, Lcom/google/android/gms/internal/zzpy;->zzahv:Landroid/os/Looper;

    .line 0
    if-ne v2, v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    const-string/jumbo v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    .line 3000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzpw;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4000
    const/4 v1, 0x0

    :try_start_25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpw;->zzfi(I)Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_4d

    move-result v1

    .line 0
    if-nez v1, :cond_31

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpw;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b

    :cond_31
    :try_start_31
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpw$zza;->pN:Lcom/google/android/gms/common/api/Api;

    iget v2, p0, Lcom/google/android/gms/internal/zzpw$zza;->tf:I

    .line 6000
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzpw;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    .line 7000
    :cond_3e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpw;->zzapm()Z

    move-result v1

    .line 0
    if-eqz v1, :cond_47

    .line 8000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpw;->zzapn()V
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_4d

    .line 9000
    :cond_47
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpw;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b

    :catchall_4d
    move-exception v1

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpw;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
