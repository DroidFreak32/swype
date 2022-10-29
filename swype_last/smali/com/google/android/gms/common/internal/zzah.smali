.class public final Lcom/google/android/gms/common/internal/zzah;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/zzk",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public final zn:Lcom/google/android/gms/common/api/Api$zzg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzg",
            "<TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected final zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->zn:Lcom/google/android/gms/common/api/Api$zzg;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzg;->zzbb$13514312()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected final zzqz()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->zn:Lcom/google/android/gms/common/api/Api$zzg;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzg;->zzqz()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zzra()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->zn:Lcom/google/android/gms/common/api/Api$zzg;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzg;->zzra()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
