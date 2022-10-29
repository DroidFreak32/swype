.class final Lcom/google/android/gms/ads/internal/zzc$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzdk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakd:Lcom/google/android/gms/ads/internal/zzc;

.field final synthetic zzake:Lcom/google/android/gms/internal/zzju$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/zzju$zza;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzju;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzju;-><init>(Lcom/google/android/gms/internal/zzju$zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzc;->zzb(Lcom/google/android/gms/internal/zzju;)V

    return-void
.end method
