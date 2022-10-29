.class final Lcom/google/android/gms/ads/internal/zzf$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzli$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakq:Lcom/google/android/gms/ads/internal/zzf;

.field final synthetic zzakt:Lcom/google/android/gms/internal/zzju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzju;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf$3;->zzakq:Lcom/google/android/gms/ads/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzf$3;->zzakt:Lcom/google/android/gms/internal/zzju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzen()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf$3;->zzakq:Lcom/google/android/gms/ads/internal/zzf;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzf;->zzaju:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf$3;->zzakq:Lcom/google/android/gms/ads/internal/zzf;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf$3;->zzakt:Lcom/google/android/gms/internal/zzju;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;)Lcom/google/android/gms/internal/zzcd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf$3;->zzakt:Lcom/google/android/gms/internal/zzju;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcd;->zza(Lcom/google/android/gms/internal/zzce;)V

    return-void
.end method
