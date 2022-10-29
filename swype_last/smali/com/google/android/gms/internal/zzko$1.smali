.class public final Lcom/google/android/gms/internal/zzko$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcmo:Lcom/google/android/gms/internal/zzko;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzko;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzko$1;->zzcmo:Lcom/google/android/gms/internal/zzko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$1;->zzcmo:Lcom/google/android/gms/internal/zzko;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzko;->zzail:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_5
    const-string/jumbo v0, "Suspending the looper thread"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$1;->zzcmo:Lcom/google/android/gms/internal/zzko;

    .line 2000
    iget v0, v0, Lcom/google/android/gms/internal/zzko;->zzcmn:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_27

    .line 0
    if-nez v0, :cond_2a

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$1;->zzcmo:Lcom/google/android/gms/internal/zzko;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzail:Ljava/lang/Object;

    .line 0
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const-string/jumbo v0, "Looper thread resumed"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1e} :catch_1f
    .catchall {:try_start_11 .. :try_end_1e} :catchall_27

    goto :goto_b

    :catch_1f
    move-exception v0

    :try_start_20
    const-string/jumbo v0, "Looper thread interrupted."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    goto :goto_b

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    return-void
.end method
