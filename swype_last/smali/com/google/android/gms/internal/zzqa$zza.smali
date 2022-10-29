.class abstract Lcom/google/android/gms/internal/zzqa$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zza"
.end annotation


# instance fields
.field private final uC:Lcom/google/android/gms/internal/zzpz;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzpz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqa$zza;->uC:Lcom/google/android/gms/internal/zzpz;

    return-void
.end method


# virtual methods
.method protected abstract zzapl()V
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzqa;)V
    .registers 4

    .prologue
    .line 0
    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2000
    :try_start_5
    iget-object v0, p1, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqa$zza;->uC:Lcom/google/android/gms/internal/zzpz;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_1a

    if-eq v0, v1, :cond_11

    .line 3000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_10
    return-void

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqa$zza;->zzapl()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a

    .line 4000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_10

    :catchall_1a
    move-exception v0

    .line 5000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
