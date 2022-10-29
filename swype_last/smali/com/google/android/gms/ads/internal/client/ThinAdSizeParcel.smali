.class public Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;
.super Lcom/google/android/gms/ads/internal/client/AdSizeParcel;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .registers 14

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->versionCode:I

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    iget v4, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    iget-boolean v5, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    iget v6, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    iget v7, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    iget-object v8, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaut:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v9, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauu:Z

    iget-boolean v10, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauv:Z

    iget-boolean v11, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauw:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZZ)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .prologue
    .line 0
    .line 1000
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v0

    .line 0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;->zzaur:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza$2cfb68bf(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;->height:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;->width:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    .line 2000
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    .line 0
    return-void
.end method
