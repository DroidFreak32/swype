.class public final Lcom/google/android/gms/internal/zzam;
.super Ljava/lang/Object;


# static fields
.field protected static volatile zzaez:Lcom/google/android/gms/clearcut/zzb;

.field private static volatile zzafb:Ljava/util/Random;

.field private static final zzafc:Ljava/lang/Object;


# instance fields
.field private zzaey:Lcom/google/android/gms/internal/zzax;

.field protected zzafa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzam;->zzaez:Lcom/google/android/gms/clearcut/zzb;

    sput-object v0, Lcom/google/android/gms/internal/zzam;->zzafb:Ljava/util/Random;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzam;->zzafc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzax;)V
    .locals 4

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzam;->zzafa:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzam;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzax;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdc;->initialize(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbi:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzam;->zzafa:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzam;->zzafa:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzam;->zzaez:Lcom/google/android/gms/clearcut/zzb;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzam;->zzafc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzam;->zzaez:Lcom/google/android/gms/clearcut/zzb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/clearcut/zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzax;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "ADSHIELD"

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/clearcut/zzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzam;->zzaez:Lcom/google/android/gms/clearcut/zzb;

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static zzat()I
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/zzam;->zzau()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/zzam;->zzau()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0
.end method

.method private static zzau()Ljava/util/Random;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzam;->zzafb:Ljava/util/Random;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzam;->zzafc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzam;->zzafb:Ljava/util/Random;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzam;->zzafb:Ljava/util/Random;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzam;->zzafb:Ljava/util/Random;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final zza(IIJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzam;->zzafa:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzam;->zzaez:Lcom/google/android/gms/clearcut/zzb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzam;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzax;->zzcj()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzad$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzad$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzam;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzax;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Ljava/lang/Long;

    sget-object v1, Lcom/google/android/gms/internal/zzam;->zzaez:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapv;->zzf(Lcom/google/android/gms/internal/zzapv;)[B

    move-result-object v0

    .line 2000
    new-instance v2, Lcom/google/android/gms/clearcut/zzb$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[BC)V

    .line 3000
    iget-object v0, v2, Lcom/google/android/gms/clearcut/zzb$zza;->qr:Lcom/google/android/gms/internal/zzapz$zzd;

    iput p2, v0, Lcom/google/android/gms/internal/zzapz$zzd;->zzahl:I

    .line 4000
    iget-object v0, v2, Lcom/google/android/gms/clearcut/zzb$zza;->qr:Lcom/google/android/gms/internal/zzapz$zzd;

    iput p1, v0, Lcom/google/android/gms/internal/zzapz$zzd;->bkd:I

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzam;->zzaey:Lcom/google/android/gms/internal/zzax;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzax;->zzagp:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 6000
    iget-boolean v1, v2, Lcom/google/android/gms/clearcut/zzb$zza;->qs:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :catch_0
    move-exception v0

    .line 6000
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/google/android/gms/clearcut/zzb$zza;->qs:Z

    invoke-virtual {v2}, Lcom/google/android/gms/clearcut/zzb$zza;->zzana()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->qu:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v3, v2, Lcom/google/android/gms/clearcut/zzb$zza;->qt:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v3}, Lcom/google/android/gms/clearcut/zzb;->zzm(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzb;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->arv:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->arr:I

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/clearcut/zzb$zzb;->zzg(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v2, Lcom/google/android/gms/clearcut/zzb$zza;->qt:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zzb;->zzn(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzc;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/clearcut/zzb$zza;->zzana()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/clearcut/zzc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/api/Status;->sq:Lcom/google/android/gms/common/api/Status;

    .line 7000
    const-string/jumbo v1, "Result must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzqu;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzqu;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqu;->zzc(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
