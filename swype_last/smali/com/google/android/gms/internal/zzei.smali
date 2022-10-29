.class public final Lcom/google/android/gms/internal/zzei;
.super Lcom/google/android/gms/internal/zzed$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzbhk:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzed$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzei;->zzbhk:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzdz;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzbhk:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    new-instance v1, Lcom/google/android/gms/internal/zzea;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzea;-><init>(Lcom/google/android/gms/internal/zzdz;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;->onCustomClick(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V

    return-void
.end method
