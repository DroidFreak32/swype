.class final Lcom/google/android/gms/ads/internal/request/zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzla$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/zzd;->zzpv()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzla$zzc",
        "<",
        "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcal:Lcom/google/android/gms/ads/internal/request/zzk;

.field final synthetic zzcam:Lcom/google/android/gms/ads/internal/request/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzd;Lcom/google/android/gms/ads/internal/request/zzk;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzcam:Lcom/google/android/gms/ads/internal/request/zzd;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzcal:Lcom/google/android/gms/ads/internal/request/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzcam:Lcom/google/android/gms/ads/internal/request/zzd;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzcal:Lcom/google/android/gms/ads/internal/request/zzk;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/request/zzd;->zza(Lcom/google/android/gms/ads/internal/request/zzk;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzcam:Lcom/google/android/gms/ads/internal/request/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzqw()V

    .line 0
    :cond_11
    return-void
.end method
