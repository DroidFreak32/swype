.class final Lcom/google/android/gms/internal/zzrg$1;
.super Lcom/google/android/gms/internal/zzrh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrg;->zzg(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zu:Lcom/google/android/gms/internal/zzrg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrg;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrg$1;->zu:Lcom/google/android/gms/internal/zzrg;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzrh$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/zzri;

    .line 1000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzri;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrk;

    new-instance v1, Lcom/google/android/gms/internal/zzrg$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzrg$zza;-><init>(Lcom/google/android/gms/internal/zzpm$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzrk;->zza(Lcom/google/android/gms/internal/zzrj;)V

    .line 0
    return-void
.end method
