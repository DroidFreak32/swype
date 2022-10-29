.class final Lcom/google/android/gms/internal/zzip$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzip;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcec:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzcej:Lcom/google/android/gms/internal/zzip;

.field final synthetic zzcek:Lcom/google/android/gms/ads/internal/request/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzip;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzip$5;->zzcej:Lcom/google/android/gms/internal/zzip;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzip$5;->zzcec:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzip$5;->zzcek:Lcom/google/android/gms/ads/internal/request/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzip$5;->zzcej:Lcom/google/android/gms/internal/zzip;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzip$5;->zzcec:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzip;->zzd(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_17

    move-result-object v0

    :goto_9
    if-nez v0, :cond_11

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzip$5;->zzcek:Lcom/google/android/gms/ads/internal/request/zzl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/zzl;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_28

    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzjx;->zzb(Ljava/lang/Throwable;Z)V

    const-string/jumbo v2, "Could not fetch ad response due to an Exception."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_9

    :catch_28
    move-exception v0

    const-string/jumbo v1, "Fail to forward ad response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method
