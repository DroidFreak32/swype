.class public final Lcom/google/android/gms/internal/zzja;
.super Lcom/google/android/gms/internal/zzix;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzix;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza$26a23421(Lcom/google/android/gms/internal/zzir;)V
    .locals 1

    .prologue
    .line 0
    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzceo:Lcom/google/android/gms/internal/zzfs$zzc;

    .line 1000
    if-eqz v0, :cond_0

    .line 3000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzceo:Lcom/google/android/gms/internal/zzfs$zzc;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzc;->release()V

    .line 0
    :cond_0
    return-void
.end method
