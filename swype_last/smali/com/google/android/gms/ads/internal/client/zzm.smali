.class public Lcom/google/android/gms/ads/internal/client/zzm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field private static final zzamr:Ljava/lang/Object;

.field private static zzavm:Lcom/google/android/gms/ads/internal/client/zzm;


# instance fields
.field private final zzavn:Lcom/google/android/gms/ads/internal/util/client/zza;

.field private final zzavo:Lcom/google/android/gms/ads/internal/client/zzl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzamr:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>()V

    .line 1000
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzamr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzavm:Lcom/google/android/gms/ads/internal/client/zzm;

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v0
.end method

.method protected constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/zza;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzavn:Lcom/google/android/gms/ads/internal/util/client/zza;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzl;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zze;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/client/zze;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzd;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/zzd;-><init>()V

    new-instance v3, Lcom/google/android/gms/ads/internal/client/zzai;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/client/zzai;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzef;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzef;-><init>()V

    new-instance v5, Lcom/google/android/gms/ads/internal/reward/client/zzf;

    invoke-direct {v5}, Lcom/google/android/gms/ads/internal/reward/client/zzf;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/zzhu;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzhu;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/zzhh;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzhh;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/client/zzl;-><init>(Lcom/google/android/gms/ads/internal/client/zze;Lcom/google/android/gms/ads/internal/client/zzd;Lcom/google/android/gms/ads/internal/client/zzai;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/reward/client/zzf;Lcom/google/android/gms/internal/zzhu;Lcom/google/android/gms/internal/zzhh;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzavo:Lcom/google/android/gms/ads/internal/client/zzl;

    return-void
.end method

.method private static zziv()Lcom/google/android/gms/ads/internal/client/zzm;
    .registers 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzamr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzavm:Lcom/google/android/gms/ads/internal/client/zzm;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static zziw()Lcom/google/android/gms/ads/internal/util/client/zza;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziv()Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzavn:Lcom/google/android/gms/ads/internal/util/client/zza;

    return-object v0
.end method

.method public static zzix()Lcom/google/android/gms/ads/internal/client/zzl;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziv()Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzavo:Lcom/google/android/gms/ads/internal/client/zzl;

    return-object v0
.end method
