.class final Lcom/google/android/gms/internal/zzfi$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfi$3;->zza(Lcom/google/android/gms/internal/zzhn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjy:Lcom/google/android/gms/internal/zzhn;

.field final synthetic zzbjz:Lcom/google/android/gms/internal/zzfi$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfi$3;Lcom/google/android/gms/internal/zzhn;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfi$3$1;->zzbjz:Lcom/google/android/gms/internal/zzfi$3;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfi$3$1;->zzbjy:Lcom/google/android/gms/internal/zzhn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzfj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfj;->zzbki:Lcom/google/android/gms/internal/zzho;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfj;->zzbki:Lcom/google/android/gms/internal/zzho;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfi$3$1;->zzbjy:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzho;->zza(Lcom/google/android/gms/internal/zzhn;)V

    :cond_b
    return-void
.end method
