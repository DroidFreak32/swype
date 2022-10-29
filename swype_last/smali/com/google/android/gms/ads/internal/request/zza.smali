.class public Lcom/google/android/gms/ads/internal/request/zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/request/zza$zza;)Lcom/google/android/gms/internal/zzkc;
    .registers 7

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzn;

    invoke-direct {v0, p1, p2, p4}, Lcom/google/android/gms/ads/internal/request/zzn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/ads/internal/request/zza$zza;)V

    :goto_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    return-object v0

    :cond_16
    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/request/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/request/zza$zza;)V

    goto :goto_12
.end method
