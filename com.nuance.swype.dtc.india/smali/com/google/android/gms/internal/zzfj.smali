.class final Lcom/google/android/gms/internal/zzfj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfj$zza;
    }
.end annotation


# instance fields
.field zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

.field zzbkh:Lcom/google/android/gms/ads/internal/client/zzw;

.field zzbki:Lcom/google/android/gms/internal/zzho;

.field zzbkj:Lcom/google/android/gms/internal/zzdo;

.field zzbkk:Lcom/google/android/gms/ads/internal/client/zzp;

.field zzbkl:Lcom/google/android/gms/ads/internal/reward/client/zzd;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zzc(Lcom/google/android/gms/ads/internal/zzl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzfj$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfj;->zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzfj$zza;-><init>(Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/ads/internal/client/zzq;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzbkh:Lcom/google/android/gms/ads/internal/client/zzw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzbkh:Lcom/google/android/gms/ads/internal/client/zzw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzw;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzbki:Lcom/google/android/gms/internal/zzho;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzbki:Lcom/google/android/gms/internal/zzho;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzho;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzbkj:Lcom/google/android/gms/internal/zzdo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzbkj:Lcom/google/android/gms/internal/zzdo;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzdo;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzbkk:Lcom/google/android/gms/ads/internal/client/zzp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzbkk:Lcom/google/android/gms/ads/internal/client/zzp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzp;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzbkl:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzbkl:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V

    :cond_5
    return-void
.end method
