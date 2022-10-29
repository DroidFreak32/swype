.class final Lcom/google/android/gms/ads/internal/formats/zzi$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi$3;->zze(Lcom/google/android/gms/internal/zzft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgl:Lcom/google/android/gms/internal/zzft;

.field final synthetic zzbgm:Lcom/google/android/gms/ads/internal/formats/zzi$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;Lcom/google/android/gms/internal/zzft;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgm:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgl:Lcom/google/android/gms/internal/zzft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlh;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgm:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgk:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzlh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzi$3$1$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/ads/internal/formats/zzi$3$1$1;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi$3$1;Ljava/util/Map;)V

    .line 1000
    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzbya:Lcom/google/android/gms/internal/zzli$zza;

    .line 0
    const-string/jumbo v0, "overlayHtml"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v0, "baseUrl"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgm:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgk:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzlh;

    move-result-object v0

    const-string/jumbo v1, "text/html"

    const-string/jumbo v3, "UTF-8"

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/zzlh;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    return-void

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgm:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgk:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzlh;

    move-result-object v0

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlh;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method
