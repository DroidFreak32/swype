.class final Lcom/google/android/gms/internal/zzqc$zzc$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqy$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqc$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uZ:I

.field final synthetic va:Lcom/google/android/gms/internal/zzqc$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqc$zzc;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqc$zzc$1;->va:Lcom/google/android/gms/internal/zzqc$zzc;

    iput p2, p0, Lcom/google/android/gms/internal/zzqc$zzc$1;->uZ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaqn()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc$1;->va:Lcom/google/android/gms/internal/zzqc$zzc;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    .line 0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc$1;->va:Lcom/google/android/gms/internal/zzqc$zzc;

    iget v1, p0, Lcom/google/android/gms/internal/zzqc$zzc$1;->uZ:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqc$zzc;->zzf(IZ)V

    :cond_0
    return-void
.end method
