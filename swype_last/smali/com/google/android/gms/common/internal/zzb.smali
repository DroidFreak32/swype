.class public final Lcom/google/android/gms/common/internal/zzb;
.super Ljava/lang/Object;


# direct methods
.method public static zzu(Ljava/lang/Object;)V
    .registers 3

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null reference"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return-void
.end method
