.class final Lcom/google/android/gms/ads/internal/formats/zzi$2;
.super Lcom/google/android/gms/internal/zzih$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi;->recordImpression()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgj:Lorg/json/JSONObject;

.field final synthetic zzbgk:Lcom/google/android/gms/ads/internal/formats/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$2;->zzbgk:Lcom/google/android/gms/ads/internal/formats/zzi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzi$2;->zzbgj:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzih$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/zzft;)V
    .registers 4

    const-string/jumbo v0, "google.afma.nativeAds.handleImpressionPing"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$2;->zzbgj:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
