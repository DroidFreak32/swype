.class final Lcom/google/android/gms/auth/api/signin/internal/zzc$2$1;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/internal/zzc$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ec:Lcom/google/android/gms/auth/api/signin/internal/zzc$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzc$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$2$1;->ec:Lcom/google/android/gms/auth/api/signin/internal/zzc$2;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzl(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$2$1;->ec:Lcom/google/android/gms/auth/api/signin/internal/zzc$2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzc$2;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
