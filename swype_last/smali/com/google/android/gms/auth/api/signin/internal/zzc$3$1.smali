.class final Lcom/google/android/gms/auth/api/signin/internal/zzc$3$1;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/internal/zzc$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ed:Lcom/google/android/gms/auth/api/signin/internal/zzc$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzc$3;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$3$1;->ed:Lcom/google/android/gms/auth/api/signin/internal/zzc$3;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzm(Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$3$1;->ed:Lcom/google/android/gms/auth/api/signin/internal/zzc$3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzc$3;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
