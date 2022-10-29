.class public final Lcom/google/android/gms/internal/zzcm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final zzail:Ljava/lang/Object;

.field zzash:I

.field zzasi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzail:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzasi:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcl;)Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcm;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzasi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    monitor-exit v1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzcl;)Z
    .registers 6

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcm;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzasi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcl;

    if-eq p1, v0, :cond_9

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcl;->zzasf:Ljava/lang/String;

    .line 4000
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcl;->zzasf:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_26

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public final zzhy()Lcom/google/android/gms/internal/zzcl;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzcm;->zzail:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzasi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "Queue empty"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    monitor-exit v4

    :goto_13
    return-object v3

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzasi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_45

    const/high16 v2, -0x80000000

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzasi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcl;

    .line 1000
    iget v1, v0, Lcom/google/android/gms/internal/zzcl;->zzase:I

    .line 0
    if-le v1, v2, :cond_5e

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_38
    move v2, v0

    move-object v3, v1

    goto :goto_25

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzasi:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v4

    goto :goto_13

    :catchall_42
    move-exception v0

    monitor-exit v4
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_42

    throw v0

    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzasi:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcl;

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzcl;->zzail:Ljava/lang/Object;

    monitor-enter v1
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_42

    :try_start_51
    iget v2, v0, Lcom/google/android/gms/internal/zzcl;->zzase:I

    add-int/lit8 v2, v2, -0x64

    iput v2, v0, Lcom/google/android/gms/internal/zzcl;->zzase:I

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_5b

    .line 0
    :try_start_58
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_42

    move-object v3, v0

    goto :goto_13

    .line 2000
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_42

    :cond_5e
    move v0, v2

    move-object v1, v3

    goto :goto_38
.end method
