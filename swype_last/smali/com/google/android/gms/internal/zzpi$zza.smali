.class public final Lcom/google/android/gms/internal/zzpi$zza;
.super Lcom/google/android/gms/internal/zzpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final sy:Lcom/google/android/gms/internal/zzpm$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpm$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final cancel()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi$zza;->sy:Lcom/google/android/gms/internal/zzpm$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpm$zza;->zzaov()Z

    move-result v0

    return v0
.end method

.method public final zza(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqy;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzpi$zza;->sx:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqy;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpi$zza;->sy:Lcom/google/android/gms/internal/zzpm$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqy;->zzg(Lcom/google/android/gms/internal/zzpm$zza;)V

    :cond_f
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi$zza;->sy:Lcom/google/android/gms/internal/zzpm$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpm$zza;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V

    return-void
.end method

.method public final zzx(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi$zza;->sy:Lcom/google/android/gms/internal/zzpm$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpm$zza;->zzz(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
