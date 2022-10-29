.class final Lcom/google/android/gms/internal/zzqy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqy$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vJ:Lcom/google/android/gms/internal/zzqy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqy;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqy$1;->vJ:Lcom/google/android/gms/internal/zzqy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/internal/zzpm$zza;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpm$zza",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy$1;->vJ:Lcom/google/android/gms/internal/zzqy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy$1;->vJ:Lcom/google/android/gms/internal/zzqy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqy;->zzb(Lcom/google/android/gms/internal/zzqy;)Lcom/google/android/gms/internal/zzqy$zzc;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy$1;->vJ:Lcom/google/android/gms/internal/zzqy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy$1;->vJ:Lcom/google/android/gms/internal/zzqy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqy;->zzb(Lcom/google/android/gms/internal/zzqy;)Lcom/google/android/gms/internal/zzqy$zzc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqy$zzc;->zzaqn()V

    :cond_22
    return-void
.end method
