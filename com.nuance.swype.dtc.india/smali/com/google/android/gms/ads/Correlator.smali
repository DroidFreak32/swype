.class public final Lcom/google/android/gms/ads/Correlator;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private zzaii:Lcom/google/android/gms/ads/internal/client/zzn;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzaii:Lcom/google/android/gms/ads/internal/client/zzn;

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzaii:Lcom/google/android/gms/ads/internal/client/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzn;->zziy()V

    return-void
.end method

.method public final zzdd()Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzaii:Lcom/google/android/gms/ads/internal/client/zzn;

    return-object v0
.end method
