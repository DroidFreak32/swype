.class final Lcom/google/android/gms/ads/internal/zzf$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzli$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/internal/zzju;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakq:Lcom/google/android/gms/ads/internal/zzf;

.field final synthetic zzakr:Lcom/google/android/gms/internal/zzju;

.field final synthetic zzaks:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzju;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzakq:Lcom/google/android/gms/ads/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzakr:Lcom/google/android/gms/internal/zzju;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzaks:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzem()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzakr:Lcom/google/android/gms/internal/zzju;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzju;->zzcif:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzaks:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
