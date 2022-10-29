.class final Lcom/google/android/gms/internal/zzs$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzs$zza$zza;
    }
.end annotation


# static fields
.field public static final zzbj:Z


# instance fields
.field private final zzbk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzs$zza$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzbl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzs;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/zzs$zza;->zzbj:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzs$zza;->zzbk:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzs$zza;->zzbl:Z

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzs$zza;->zzbl:Z

    if-nez v0, :cond_13

    const-string/jumbo v0, "Request on the loose"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzs$zza;->zzd(Ljava/lang/String;)V

    const-string/jumbo v0, "Marker log finalized without finish() - uncaught exit point for request"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzs;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public final declared-synchronized zza(Ljava/lang/String;J)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzs$zza;->zzbl:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Marker added to finished log"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    :try_start_11
    iget-object v6, p0, Lcom/google/android/gms/internal/zzs$zza;->zzbk:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzs$zza$zza;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzs$zza$zza;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_e

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzd(Ljava/lang/String;)V
    .registers 12

    .prologue
    const-wide/16 v4, 0x0

    .line 0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzs$zza;->zzbl:Z

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzs$zza;->zzbk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_8a

    move-result v0

    if-nez v0, :cond_15

    move-wide v2, v4

    .line 0
    :goto_f
    cmp-long v0, v2, v4

    if-gtz v0, :cond_35

    :cond_13
    monitor-exit p0

    return-void

    .line 1000
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzs$zza;->zzbk:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzs$zza$zza;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzs$zza$zza;->time:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzs$zza;->zzbk:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzs$zza;->zzbk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzs$zza$zza;

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzs$zza$zza;->time:J

    sub-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_f

    .line 0
    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzs$zza;->zzbk:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzs$zza$zza;

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzs$zza$zza;->time:J

    const-string/jumbo v4, "(%-4d ms) %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzs$zza;->zzbk:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_5a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzs$zza$zza;

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzs$zza$zza;->time:J

    const-string/jumbo v1, "(+%-4d) [%2d] %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzs$zza$zza;->zzbm:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzs$zza$zza;->name:Ljava/lang/String;

    aput-object v0, v7, v2

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_88
    .catchall {:try_start_15 .. :try_end_88} :catchall_8a

    move-wide v2, v4

    goto :goto_5a

    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
