.class final Lcom/google/android/gms/internal/zzih$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzkl",
        "<",
        "Lcom/google/android/gms/internal/zzfp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbzb:Lcom/google/android/gms/internal/zzih;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzih;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzih$3;->zzbzb:Lcom/google/android/gms/internal/zzih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/zzfp;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih$3;->zzbzb:Lcom/google/android/gms/internal/zzih;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzih;)Lcom/google/android/gms/ads/internal/zzq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih$3;->zzbzb:Lcom/google/android/gms/internal/zzih;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzih;)Lcom/google/android/gms/ads/internal/zzq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzih$3;->zzbzb:Lcom/google/android/gms/internal/zzih;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzih;)Lcom/google/android/gms/ads/internal/zzq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzih$3;->zzbzb:Lcom/google/android/gms/internal/zzih;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzih;)Lcom/google/android/gms/ads/internal/zzq;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzfp;->zza$279dadbc$3b0b03b9(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzel;Lcom/google/android/gms/ads/internal/overlay/zzp;)V

    .line 0
    return-void
.end method
