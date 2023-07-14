.class public final Lcom/google/android/gms/internal/zzdl;
.super Lcom/google/android/gms/internal/zzdn$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzbek:Lcom/google/android/gms/ads/internal/zzh;

.field private final zzbel:Ljava/lang/String;

.field private final zzbem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzh;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdn$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdl;->zzbek:Lcom/google/android/gms/ads/internal/zzh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdl;->zzbel:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdl;->zzbem:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl;->zzbem:Ljava/lang/String;

    return-object v0
.end method

.method public final recordClick()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl;->zzbek:Lcom/google/android/gms/ads/internal/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzh;->zzeh()V

    return-void
.end method

.method public final recordImpression()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl;->zzbek:Lcom/google/android/gms/ads/internal/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzh;->zzei()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdl;->zzbek:Lcom/google/android/gms/ads/internal/zzh;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/zzh;->zzc(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final zzkk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl;->zzbel:Ljava/lang/String;

    return-object v0
.end method
