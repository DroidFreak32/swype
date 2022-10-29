.class public abstract Lcom/google/android/gms/internal/zzpi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpi$zza;
    }
.end annotation


# instance fields
.field public final iq:I

.field public final sx:I


# virtual methods
.method public cancel()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zza(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqy;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation
.end method

.method public abstract zzx(Lcom/google/android/gms/common/api/Status;)V
.end method
