.class public final Lcom/google/android/gms/internal/zzdb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final zzail:Ljava/lang/Object;

.field zzamt:Z

.field zzaxu:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzail:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdb;->zzamt:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaxu:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzcy",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdb;->zzamt:Z

    if-nez v0, :cond_b

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzcy;->zzaxq:Ljava/lang/Object;

    .line 0
    monitor-exit v1

    :goto_a
    return-object v0

    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    new-instance v0, Lcom/google/android/gms/internal/zzdb$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzdb$1;-><init>(Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/internal/zzcy;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkt;->zzb(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
