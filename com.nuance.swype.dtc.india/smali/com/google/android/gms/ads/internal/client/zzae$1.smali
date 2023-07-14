.class final Lcom/google/android/gms/ads/internal/client/zzae$1;
.super Lcom/google/android/gms/ads/internal/client/zzo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/client/zzae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzawo:Lcom/google/android/gms/ads/internal/client/zzae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae$1;->zzawo:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzo;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae$1;->zzawo:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->zza(Lcom/google/android/gms/ads/internal/client/zzae;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae$1;->zzawo:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/client/zzae;->zzjk()Lcom/google/android/gms/ads/internal/client/zzab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/ads/internal/client/zzab;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae$1;->zzawo:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->zza(Lcom/google/android/gms/ads/internal/client/zzae;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae$1;->zzawo:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/client/zzae;->zzjk()Lcom/google/android/gms/ads/internal/client/zzab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/ads/internal/client/zzab;)V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdLoaded()V

    return-void
.end method
