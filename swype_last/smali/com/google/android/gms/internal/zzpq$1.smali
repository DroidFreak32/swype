.class final Lcom/google/android/gms/internal/zzpq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpq;->zzaof()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tt:Lcom/google/android/gms/internal/zzpq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpq$1;->tt:Lcom/google/android/gms/internal/zzpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$1;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$1;->tt:Lcom/google/android/gms/internal/zzpq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpq;->zzb(Lcom/google/android/gms/internal/zzpq;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq$1;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq$1;->tt:Lcom/google/android/gms/internal/zzpq;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
