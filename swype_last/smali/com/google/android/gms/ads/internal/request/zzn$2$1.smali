.class final Lcom/google/android/gms/ads/internal/request/zzn$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzla$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/zzn$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzla$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzft;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcdo:Lcom/google/android/gms/ads/internal/request/zzn$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzn$2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzn$2$1;->zzcdo:Lcom/google/android/gms/ads/internal/request/zzn$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/zzft;

    .line 1000
    :try_start_2
    const-string/jumbo v0, "AFMA_getAdapterLessMediationAd"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzn$2$1;->zzcdo:Lcom/google/android/gms/ads/internal/request/zzn$2;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/zzn$2;->zzcdm:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/request/zzn;->zzrc()Lcom/google/android/gms/internal/zzeu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzn$2$1;->zzcdo:Lcom/google/android/gms/ads/internal/request/zzn$2;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/zzn$2;->zzcdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeu;->zzax(Ljava/lang/String;)V

    goto :goto_c
.end method
