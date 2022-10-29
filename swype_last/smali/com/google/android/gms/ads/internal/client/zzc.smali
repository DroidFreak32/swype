.class public final Lcom/google/android/gms/ads/internal/client/zzc;
.super Lcom/google/android/gms/ads/internal/client/zzq$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzatl:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzq$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzc;->zzatl:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzc;->zzatl:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzc;->zzatl:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzc;->zzatl:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    return-void
.end method

.method public final onAdLoaded()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzc;->zzatl:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    return-void
.end method

.method public final onAdOpened()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzc;->zzatl:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    return-void
.end method
