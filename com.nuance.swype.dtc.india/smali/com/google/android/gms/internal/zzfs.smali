.class public final Lcom/google/android/gms/internal/zzfs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfs$zza;,
        Lcom/google/android/gms/internal/zzfs$zze;,
        Lcom/google/android/gms/internal/zzfs$zzc;,
        Lcom/google/android/gms/internal/zzfs$zzd;,
        Lcom/google/android/gms/internal/zzfs$zzb;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final zzail:Ljava/lang/Object;

.field final zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field final zzblr:Ljava/lang/String;

.field zzbls:Lcom/google/android/gms/internal/zzkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzkl",
            "<",
            "Lcom/google/android/gms/internal/zzfp;",
            ">;"
        }
    .end annotation
.end field

.field private zzblt:Lcom/google/android/gms/internal/zzkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzkl",
            "<",
            "Lcom/google/android/gms/internal/zzfp;",
            ">;"
        }
    .end annotation
.end field

.field zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

.field zzblv:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzail:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblv:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfs;->zzblr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfs;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfs;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzfs$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfs$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzbls:Lcom/google/android/gms/internal/zzkl;

    new-instance v0, Lcom/google/android/gms/internal/zzfs$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfs$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblt:Lcom/google/android/gms/internal/zzkl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzkl;Lcom/google/android/gms/internal/zzkl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzkl",
            "<",
            "Lcom/google/android/gms/internal/zzfp;",
            ">;",
            "Lcom/google/android/gms/internal/zzkl",
            "<",
            "Lcom/google/android/gms/internal/zzfp;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfs;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfs;->zzbls:Lcom/google/android/gms/internal/zzkl;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzfs;->zzblt:Lcom/google/android/gms/internal/zzkl;

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzd;
    .locals 3

    .prologue
    .line 0
    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/zzfs$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs;->zzblt:Lcom/google/android/gms/internal/zzkl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfs$zzd;-><init>(Lcom/google/android/gms/internal/zzkl;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    new-instance v1, Lcom/google/android/gms/internal/zzfs$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/zzfs$1;-><init>(Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzfs$zzd;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfs$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzfs$2;-><init>(Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzfs$zzd;)V

    new-instance v2, Lcom/google/android/gms/internal/zzfs$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzfs$3;-><init>(Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzfs$zzd;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfs$zzd;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzc;
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzd;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblv:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfs;->zzb(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzd;->zzmb()Lcom/google/android/gms/internal/zzfs$zzc;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblv:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzd;->zzmb()Lcom/google/android/gms/internal/zzfs$zzc;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblv:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblv:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfs;->zzb(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzd;->zzmb()Lcom/google/android/gms/internal/zzfs$zzc;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblv:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzd;->zzmb()Lcom/google/android/gms/internal/zzfs$zzc;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzd;->zzmb()Lcom/google/android/gms/internal/zzfs$zzc;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
