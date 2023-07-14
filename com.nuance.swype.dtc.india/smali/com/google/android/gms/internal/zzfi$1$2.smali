.class final Lcom/google/android/gms/internal/zzfi$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfi$1;->onAdFailedToLoad(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbju:Lcom/google/android/gms/internal/zzfi$1;

.field final synthetic zzbjv:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfi$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfi$1$2;->zzbju:Lcom/google/android/gms/internal/zzfi$1;

    iput p2, p0, Lcom/google/android/gms/internal/zzfi$1$2;->zzbjv:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzfj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfj;->zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfj;->zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

    iget v1, p0, Lcom/google/android/gms/internal/zzfi$1$2;->zzbjv:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V

    :cond_0
    return-void
.end method
