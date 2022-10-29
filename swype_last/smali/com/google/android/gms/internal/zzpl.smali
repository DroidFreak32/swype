.class public final Lcom/google/android/gms/internal/zzpl;
.super Lcom/google/android/gms/internal/zzpo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpo",
        "<",
        "Lcom/google/android/gms/common/api/zzb;",
        ">;"
    }
.end annotation


# instance fields
.field private sH:I

.field private sI:Z


# direct methods
.method private zzy(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/zzb;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 0
    monitor-enter v0

    :try_start_2
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 1000
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    const/4 v0, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzpl;->zza(Lcom/google/android/gms/internal/zzpj;Lcom/google/android/gms/common/ConnectionResult;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 0
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    new-instance v0, Lcom/google/android/gms/common/api/zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_2d
    const/4 v1, 0x0

    monitor-exit v1

    return-object v0

    :cond_30
    new-instance v0, Lcom/google/android/gms/common/api/zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/zzb;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2d

    :catchall_36
    move-exception v0

    const/4 v1, 0x0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_2 .. :try_end_39} :catchall_36

    throw v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzpj;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpj",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter v0

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/zzpl;->sH:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpl;->sH:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpl;->sI:Z

    :cond_16
    iget v0, p0, Lcom/google/android/gms/internal/zzpl;->sH:I

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpl;->sI:Z

    if-eqz v0, :cond_38

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    move-object v1, v0

    :goto_26
    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_3c

    new-instance v0, Lcom/google/android/gms/common/api/zza;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_32
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpl;->zzc(Lcom/google/android/gms/common/api/Result;)V

    :cond_35
    const/4 v0, 0x0

    monitor-exit v0

    return-void

    :cond_38
    sget-object v0, Lcom/google/android/gms/common/api/Status;->sq:Lcom/google/android/gms/common/api/Status;

    move-object v1, v0

    goto :goto_26

    :cond_3c
    new-instance v0, Lcom/google/android/gms/common/api/zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/zzb;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_32

    :catchall_42
    move-exception v0

    const/4 v1, 0x0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_42

    throw v0
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpl;->zzy(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/zzb;

    move-result-object v0

    return-object v0
.end method
