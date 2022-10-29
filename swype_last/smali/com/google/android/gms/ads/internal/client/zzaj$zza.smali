.class final Lcom/google/android/gms/ads/internal/client/zzaj$zza;
.super Lcom/google/android/gms/ads/internal/client/zzr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/client/zzaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzawu:Lcom/google/android/gms/ads/internal/client/zzaj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzaj$zza;->zzawu:Lcom/google/android/gms/ads/internal/client/zzaj;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzr$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaj;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzaj$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzaj;)V

    return-void
.end method


# virtual methods
.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnb:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzaj$zza$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzaj$zza$1;-><init>(Lcom/google/android/gms/ads/internal/client/zzaj$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
