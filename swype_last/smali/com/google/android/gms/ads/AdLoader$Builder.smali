.class public Lcom/google/android/gms/ads/AdLoader$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaib:Lcom/google/android/gms/ads/internal/client/zzs;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzs;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzaib:Lcom/google/android/gms/ads/internal/client/zzs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzix()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzgi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzgi;-><init>()V

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/ads/internal/client/zzl;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/client/zzs;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzs;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/AdLoader;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/AdLoader;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzaib:Lcom/google/android/gms/ads/internal/client/zzs;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/client/zzs;->zzes()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    const-string/jumbo v1, "Failed to build AdLoader."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzaib:Lcom/google/android/gms/ads/internal/client/zzs;

    new-instance v1, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzeg;-><init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzs;->zza(Lcom/google/android/gms/internal/zzeb;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object p0

    :catch_b
    move-exception v0

    const-string/jumbo v1, "Failed to add app install ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public forContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzaib:Lcom/google/android/gms/ads/internal/client/zzs;

    new-instance v1, Lcom/google/android/gms/internal/zzeh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzeh;-><init>(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzs;->zza(Lcom/google/android/gms/internal/zzec;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object p0

    :catch_b
    move-exception v0

    const-string/jumbo v1, "Failed to add content ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public forCustomTemplateAd(Ljava/lang/String;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzaib:Lcom/google/android/gms/ads/internal/client/zzs;

    new-instance v2, Lcom/google/android/gms/internal/zzej;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzej;-><init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;)V

    if-nez p3, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-interface {v1, p1, v2, v0}, Lcom/google/android/gms/ads/internal/client/zzs;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzee;Lcom/google/android/gms/internal/zzed;)V

    :goto_d
    return-object p0

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/zzei;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzei;-><init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_a

    :catch_14
    move-exception v0

    const-string/jumbo v1, "Failed to add custom template ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzaib:Lcom/google/android/gms/ads/internal/client/zzs;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzc;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzs;->zzb(Lcom/google/android/gms/ads/internal/client/zzq;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object p0

    :catch_b
    move-exception v0

    const-string/jumbo v1, "Failed to set AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public withCorrelator(Lcom/google/android/gms/ads/Correlator;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzaib:Lcom/google/android/gms/ads/internal/client/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/Correlator;->zzdd()Lcom/google/android/gms/ads/internal/client/zzn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzs;->zzb(Lcom/google/android/gms/ads/internal/client/zzy;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :goto_c
    return-object p0

    :catch_d
    move-exception v0

    const-string/jumbo v1, "Failed to set correlator."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzaib:Lcom/google/android/gms/ads/internal/client/zzs;

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzs;->zza(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object p0

    :catch_b
    move-exception v0

    const-string/jumbo v1, "Failed to specify native ad options"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method
