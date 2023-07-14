.class public Lcom/google/android/gms/ads/internal/overlay/zzn;
.super Lcom/google/android/gms/ads/internal/overlay/zzj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzlh;IZLcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;)Lcom/google/android/gms/ads/internal/overlay/zzi;
    .locals 8

    .prologue
    .line 0
    .line 1000
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2000
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v1

    .line 1000
    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 0
    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :cond_2
    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 3000
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzlh;->zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzlh;->zzum()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzlh;->getRequestId()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/zzx;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;)V

    invoke-direct {v6, p1, p4, v7, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Context;ZZLcom/google/android/gms/ads/internal/overlay/zzx;)V

    move-object v0, v6

    goto :goto_1
.end method
