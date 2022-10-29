.class public final Lcom/google/android/gms/internal/zzdk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field public final zzail:Ljava/lang/Object;

.field public zzbdo:Z

.field private final zzbef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbeg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzbeh:Ljava/lang/String;

.field zzbei:Lcom/google/android/gms/internal/zzdi;

.field zzbej:Lcom/google/android/gms/internal/zzdk;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbef:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbeg:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdk;->zzbdo:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbeg:Ljava/util/Map;

    const-string/jumbo v1, "action"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbeg:Ljava/util/Map;

    const-string/jumbo v1, "ad_format"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/android/gms/internal/zzdi;J[Ljava/lang/String;)Z
    .registers 11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    array-length v2, p4

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_16

    aget-object v3, p4, v0

    new-instance v4, Lcom/google/android/gms/internal/zzdi;

    invoke-direct {v4, p2, p3, v3, p1}, Lcom/google/android/gms/internal/zzdi;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzdi;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdk;->zzbef:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public final varargs zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbdo:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;J[Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/zzdi;
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzdk;->zzbdo:Z

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/zzdi;

    invoke-direct {v1, p1, p2, v0, v0}, Lcom/google/android/gms/internal/zzdi;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzdi;)V

    move-object v0, v1

    goto :goto_5
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbdo:Z

    if-eqz v0, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjx;->zzsl()Lcom/google/android/gms/internal/zzde;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzde;->zzaq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdh;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdk;->zzbeg:Ljava/util/Map;

    .line 5000
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, p2}, Lcom/google/android/gms/internal/zzdh;->zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    monitor-exit v1

    goto :goto_a

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public final zzkg()Lcom/google/android/gms/internal/zzdi;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzdk;->zzc(J)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    return-object v0
.end method

.method public final zzki()Ljava/lang/String;
    .registers 11

    .prologue
    .line 0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbef:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdi;

    .line 1000
    iget-wide v4, v0, Lcom/google/android/gms/internal/zzdi;->zzbeb:J

    .line 2000
    iget-object v6, v0, Lcom/google/android/gms/internal/zzdi;->zzbec:Ljava/lang/String;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzdi;->zzbed:Lcom/google/android/gms/internal/zzdi;

    .line 0
    if-eqz v0, :cond_e

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_e

    .line 4000
    iget-wide v8, v0, Lcom/google/android/gms/internal/zzdi;->zzbeb:J

    .line 0
    sub-long/2addr v4, v8

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :catchall_3f
    move-exception v0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw v0

    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbef:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbeh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbeh:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    :goto_54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :cond_5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_54

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_69
    .catchall {:try_start_42 .. :try_end_69} :catchall_3f

    goto :goto_54
.end method

.method public final zzkj()Lcom/google/android/gms/internal/zzdi;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbei:Lcom/google/android/gms/internal/zzdi;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method final zzm()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjx;->zzsl()Lcom/google/android/gms/internal/zzde;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdk;->zzbej:Lcom/google/android/gms/internal/zzdk;

    if-nez v2, :cond_15

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbeg:Ljava/util/Map;

    monitor-exit v1

    :goto_14
    return-object v0

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzdk;->zzbeg:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdk;->zzbej:Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdk;->zzm()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzde;->zza(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    monitor-exit v1

    goto :goto_14

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method
