.class final Lcom/google/android/gms/ads/internal/formats/zzi$3;
.super Lcom/google/android/gms/internal/zzih$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi;->zzlb()Lcom/google/android/gms/internal/zzlh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgk:Lcom/google/android/gms/ads/internal/formats/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgk:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzih$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/zzft;)V
    .locals 3

    const-string/jumbo v0, "/loadHtml"

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;Lcom/google/android/gms/internal/zzft;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/showOverlay"

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzi$3$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/formats/zzi$3$2;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/hideOverlay"

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzi$3$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/formats/zzi$3$3;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgk:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzlh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    const-string/jumbo v1, "/hideOverlay"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzi$3$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/formats/zzi$3$4;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgk:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzlh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    const-string/jumbo v1, "/sendMessageToSdk"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzi$3$5;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/ads/internal/formats/zzi$3$5;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;Lcom/google/android/gms/internal/zzft;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    return-void
.end method
