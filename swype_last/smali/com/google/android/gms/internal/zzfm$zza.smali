.class final Lcom/google/android/gms/internal/zzfm$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field zzbkv:Lcom/google/android/gms/ads/internal/zzl;

.field zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field zzbkx:Lcom/google/android/gms/internal/zzfi;

.field zzbky:J

.field zzbkz:Z

.field zzbla:Z

.field final synthetic zzblb:Lcom/google/android/gms/internal/zzfm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfm;Lcom/google/android/gms/internal/zzfh;)V
    .registers 10

    .prologue
    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzblb:Lcom/google/android/gms/internal/zzfm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iget-object v3, p1, Lcom/google/android/gms/internal/zzfm;->zzaln:Ljava/lang/String;

    .line 2000
    new-instance v0, Lcom/google/android/gms/ads/internal/zzl;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzfh;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    iget-object v4, p2, Lcom/google/android/gms/internal/zzfh;->zzajz:Lcom/google/android/gms/internal/zzgj;

    iget-object v5, p2, Lcom/google/android/gms/internal/zzfh;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, p2, Lcom/google/android/gms/internal/zzfh;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkv:Lcom/google/android/gms/ads/internal/zzl;

    new-instance v0, Lcom/google/android/gms/internal/zzfi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkx:Lcom/google/android/gms/internal/zzfi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkx:Lcom/google/android/gms/internal/zzfi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkv:Lcom/google/android/gms/ads/internal/zzl;

    .line 3000
    new-instance v2, Lcom/google/android/gms/internal/zzfi$1;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzfi$1;-><init>(Lcom/google/android/gms/internal/zzfi;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)V

    new-instance v2, Lcom/google/android/gms/internal/zzfi$2;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzfi$2;-><init>(Lcom/google/android/gms/internal/zzfi;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzw;)V

    new-instance v2, Lcom/google/android/gms/internal/zzfi$3;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzfi$3;-><init>(Lcom/google/android/gms/internal/zzfi;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzho;)V

    new-instance v2, Lcom/google/android/gms/internal/zzfi$4;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzfi$4;-><init>(Lcom/google/android/gms/internal/zzfi;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzdo;)V

    new-instance v2, Lcom/google/android/gms/internal/zzfi$5;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzfi$5;-><init>(Lcom/google/android/gms/internal/zzfi;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzp;)V

    new-instance v2, Lcom/google/android/gms/internal/zzfi$6;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzfi$6;-><init>(Lcom/google/android/gms/internal/zzfi;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V

    .line 0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzfm;Lcom/google/android/gms/internal/zzfh;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfm$zza;-><init>(Lcom/google/android/gms/internal/zzfm;Lcom/google/android/gms/internal/zzfh;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-void
.end method


# virtual methods
.method final zzlv()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkz:Z

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    .line 5000
    :goto_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->CREATOR:Lcom/google/android/gms/ads/internal/client/zzg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzg;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfk;->zzi(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_35

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatw:Landroid/os/Bundle;

    const-string/jumbo v3, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_35
    const-string/jumbo v2, "_skipMediation"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkv:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbla:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkz:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbky:J

    goto :goto_6

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzblb:Lcom/google/android/gms/internal/zzfm;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfm;->zzbks:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    goto :goto_d
.end method
