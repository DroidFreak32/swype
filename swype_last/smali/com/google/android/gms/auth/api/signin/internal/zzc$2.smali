.class final Lcom/google/android/gms/auth/api/signin/internal/zzc$2;
.super Lcom/google/android/gms/auth/api/signin/internal/zzc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/signin/internal/zzc;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/signin/internal/zzc$zza",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dZ:Lcom/google/android/gms/auth/api/signin/internal/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$2;->dZ:Lcom/google/android/gms/auth/api/signin/internal/zzc;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/internal/zzc$zza;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zzd;

    .line 1000
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zzh;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zzc$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzc$2$1;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzc$2;)V

    .line 2000
    iget-object v2, p1, Lcom/google/android/gms/auth/api/signin/internal/zzd;->ee:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 1000
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzb(Lcom/google/android/gms/auth/api/signin/internal/zzg;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 0
    return-void
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 2

    .prologue
    .line 0
    return-object p1
.end method
