.class public Lcom/google/android/gms/ads/internal/zzj;
.super Lcom/google/android/gms/ads/internal/client/zzr$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field final zzajv:Lcom/google/android/gms/ads/internal/zzd;

.field final zzajz:Lcom/google/android/gms/internal/zzgj;

.field private final zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

.field private final zzalg:Lcom/google/android/gms/internal/zzeb;

.field private final zzalh:Lcom/google/android/gms/internal/zzec;

.field private final zzali:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzee;",
            ">;"
        }
    .end annotation
.end field

.field private final zzalj:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzed;",
            ">;"
        }
    .end annotation
.end field

.field private final zzalk:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private final zzall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzalm:Lcom/google/android/gms/ads/internal/client/zzy;

.field final zzaln:Ljava/lang/String;

.field final zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzalp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/ads/internal/zzq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/zzeb;Lcom/google/android/gms/internal/zzec;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/client/zzy;Lcom/google/android/gms/ads/internal/zzd;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzgj;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/ads/internal/client/zzq;",
            "Lcom/google/android/gms/internal/zzeb;",
            "Lcom/google/android/gms/internal/zzec;",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzee;",
            ">;",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzed;",
            ">;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Lcom/google/android/gms/ads/internal/client/zzy;",
            "Lcom/google/android/gms/ads/internal/zzd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzr$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzj;->zzaln:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzj;->zzajz:Lcom/google/android/gms/internal/zzgj;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalh:Lcom/google/android/gms/internal/zzec;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalg:Lcom/google/android/gms/internal/zzeb;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/zzj;->zzali:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalj:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalk:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzj;->zzeq()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzall:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalm:Lcom/google/android/gms/ads/internal/client/zzy;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/zzj;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzj;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzail:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzj;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalp:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/internal/zzeb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalg:Lcom/google/android/gms/internal/zzeb;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/internal/zzec;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalh:Lcom/google/android/gms/internal/zzec;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/zzj;)Landroid/support/v4/util/SimpleArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzali:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

    return-object v0
.end method

.method private zzeq()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalh:Lcom/google/android/gms/internal/zzec;

    if-eqz v1, :cond_f

    const-string/jumbo v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalg:Lcom/google/android/gms/internal/zzeb;

    if-eqz v1, :cond_19

    const-string/jumbo v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzali:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_27

    const-string/jumbo v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/internal/zzj;)Landroid/support/v4/util/SimpleArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalj:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/internal/zzj;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzj;->zzeq()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalk:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/ads/internal/client/zzy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalm:Lcom/google/android/gms/ads/internal/client/zzy;

    return-object v0
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzj;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalp:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzq;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    :goto_16
    monitor-exit v2

    :goto_17
    return-object v0

    :cond_18
    move-object v0, v1

    goto :goto_16

    :cond_1a
    monitor-exit v2

    move-object v0, v1

    goto :goto_17

    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public isLoading()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzj;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalp:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzalp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzq;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->isLoading()Z

    move-result v0

    :goto_16
    monitor-exit v2

    :goto_17
    return v0

    :cond_18
    move v0, v1

    goto :goto_16

    :cond_1a
    monitor-exit v2

    move v0, v1

    goto :goto_17

    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 4

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/ads/internal/zzj$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzj$1;-><init>(Lcom/google/android/gms/ads/internal/zzj;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    .line 1000
    sget-object v1, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 0
    return-void
.end method
