.class public final Lcom/google/android/gms/internal/zzjj;
.super Lcom/google/android/gms/ads/internal/reward/mediation/client/zza$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field zzchn:Lcom/google/android/gms/internal/zzjk;

.field zzchu:Lcom/google/android/gms/internal/zzjh;

.field private zzchv:Lcom/google/android/gms/internal/zzji;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzji;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/mediation/client/zza$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzji;->zzc(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/zzd;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchu:Lcom/google/android/gms/internal/zzjh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchu:Lcom/google/android/gms/internal/zzjh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjh;->zzaw$13462e()V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/zzd;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchn:Lcom/google/android/gms/internal/zzjk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchn:Lcom/google/android/gms/internal/zzjk;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzjk;->zza$505cff1c(I)V

    :cond_0
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchu:Lcom/google/android/gms/internal/zzjh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchu:Lcom/google/android/gms/internal/zzjh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjh;->zzrs()V

    :cond_0
    return-void
.end method

.method public final zzq(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchn:Lcom/google/android/gms/internal/zzjk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchn:Lcom/google/android/gms/internal/zzjk;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjk;->zzcg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzr(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzji;->onRewardedVideoAdOpened()V

    :cond_0
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzji;->onRewardedVideoStarted()V

    :cond_0
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzji;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final zzu(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzji;->zzrr()V

    :cond_0
    return-void
.end method

.method public final zzv(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzchv:Lcom/google/android/gms/internal/zzji;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzji;->onRewardedVideoAdLeftApplication()V

    :cond_0
    return-void
.end method
