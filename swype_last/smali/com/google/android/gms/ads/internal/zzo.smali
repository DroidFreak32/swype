.class public Lcom/google/android/gms/ads/internal/zzo;
.super Lcom/google/android/gms/ads/internal/client/zzz$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field private static final zzamr:Ljava/lang/Object;

.field private static zzams:Lcom/google/android/gms/ads/internal/zzo;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field private zzamt:Z

.field private zzamu:Z

.field private zzamv:F

.field private zzamw:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzo;->zzamr:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzz$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzail:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzamv:F

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzo;->zzamw:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzamt:Z

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/zzo;
    .registers 5

    sget-object v1, Lcom/google/android/gms/ads/internal/zzo;->zzamr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/ads/internal/zzo;->zzams:Lcom/google/android/gms/ads/internal/zzo;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/ads/internal/zzo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/ads/internal/zzo;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzo;->zzams:Lcom/google/android/gms/ads/internal/zzo;

    :cond_12
    sget-object v0, Lcom/google/android/gms/ads/internal/zzo;->zzams:Lcom/google/android/gms/ads/internal/zzo;

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static zzex()Lcom/google/android/gms/ads/internal/zzo;
    .registers 2

    sget-object v1, Lcom/google/android/gms/ads/internal/zzo;->zzamr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/ads/internal/zzo;->zzams:Lcom/google/android/gms/ads/internal/zzo;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method


# virtual methods
.method public initialize()V
    .registers 3

    sget-object v1, Lcom/google/android/gms/ads/internal/zzo;->zzamr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzamt:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "Mobile ads is initialized already."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    monitor-exit v1

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzamt:Z

    monitor-exit v1

    goto :goto_e

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public setAppMuted(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzamu:Z

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setAppVolume(F)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzamv:F

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzey()F
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzamv:F

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzez()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzamv:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    monitor-exit v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public zzfa()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzamu:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzu(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdc;->initialize(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbct:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgi()Lcom/google/android/gms/ads/internal/zzg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzo;->zzamw:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v3, 0x1

    move-object v5, p1

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLcom/google/android/gms/internal/zzjw;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method
