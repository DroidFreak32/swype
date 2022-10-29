.class public final Lcom/google/android/gms/internal/zzeh;
.super Lcom/google/android/gms/internal/zzec$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzbhj:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzec$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeh;->zzbhj:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzdx;)V
    .registers 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh;->zzbhj:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    .line 1000
    new-instance v1, Lcom/google/android/gms/internal/zzdy;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzdy;-><init>(Lcom/google/android/gms/internal/zzdx;)V

    .line 0
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;->onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    return-void
.end method
