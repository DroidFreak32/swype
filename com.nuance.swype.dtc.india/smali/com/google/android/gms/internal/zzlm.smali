.class public final Lcom/google/android/gms/internal/zzlm;
.super Lcom/google/android/gms/ads/internal/client/zzab$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field public final zzail:Ljava/lang/Object;

.field public zzaio:Z

.field private final zzbgf:Lcom/google/android/gms/internal/zzlh;

.field private final zzcpy:F

.field zzcpz:I

.field private zzcqa:Lcom/google/android/gms/ads/internal/client/zzac;

.field private zzcqb:Z

.field zzcqc:Z

.field zzcqd:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlh;F)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzab$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlm;->zzail:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlm;->zzaio:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlm;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iput p2, p0, Lcom/google/android/gms/internal/zzlm;->zzcpy:F

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlm;->zzcqb:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzlm;)Lcom/google/android/gms/internal/zzlh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzlm;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->zzail:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzlm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlm;->zzcqb:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzlm;)Lcom/google/android/gms/ads/internal/client/zzac;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->zzcqa:Lcom/google/android/gms/ads/internal/client/zzac;

    return-object v0
.end method


# virtual methods
.method public final getPlaybackState()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlm;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzlm;->zzcpz:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isMuted()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlm;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlm;->zzcqc:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final pause()V
    .locals 2

    .prologue
    .line 0
    const-string/jumbo v0, "pause"

    .line 2000
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzlm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 0
    return-void
.end method

.method public final play()V
    .locals 2

    .prologue
    .line 0
    const-string/jumbo v0, "play"

    .line 1000
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzlm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/client/zzac;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlm;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlm;->zzcqa:Lcom/google/android/gms/ads/internal/client/zzac;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzd(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string/jumbo v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    new-instance v1, Lcom/google/android/gms/internal/zzlm$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzlm$1;-><init>(Lcom/google/android/gms/internal/zzlm;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final zziz()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzlm;->zzcpy:F

    return v0
.end method

.method public final zzja()F
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlm;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzlm;->zzcqd:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzm(Z)V
    .locals 2

    .prologue
    .line 0
    if-eqz p1, :cond_0

    const-string/jumbo v0, "mute"

    .line 3000
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzlm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 0
    return-void

    :cond_0
    const-string/jumbo v0, "unmute"

    goto :goto_0
.end method
