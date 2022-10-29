.class public abstract Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;
.super Lcom/google/android/gms/ads/mediation/NativeAdMapper;


# instance fields
.field private zzbfg:Ljava/lang/String;

.field private zzbfh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private zzbfi:Ljava/lang/String;

.field private zzbfk:Ljava/lang/String;

.field private zzbfr:Ljava/lang/String;

.field private zzcqq:Lcom/google/android/gms/ads/formats/NativeAd$Image;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdvertiser()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzbfr:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzbfi:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzbfk:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzbfg:Ljava/lang/String;

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzbfh:Ljava/util/List;

    return-object v0
.end method

.method public final getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzcqq:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    return-object v0
.end method

.method public final setAdvertiser(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzbfr:Ljava/lang/String;

    return-void
.end method

.method public final setBody(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzbfi:Ljava/lang/String;

    return-void
.end method

.method public final setCallToAction(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzbfk:Ljava/lang/String;

    return-void
.end method

.method public final setHeadline(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzbfg:Ljava/lang/String;

    return-void
.end method

.method public final setImages(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzbfh:Ljava/util/List;

    return-void
.end method

.method public final setLogo(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzcqq:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    return-void
.end method
