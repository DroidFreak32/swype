.class final Lcom/google/android/gms/internal/zzfi$1;
.super Lcom/google/android/gms/ads/internal/client/zzq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjt:Lcom/google/android/gms/internal/zzfi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfi$1;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzq$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$1;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfi$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfi$1$1;-><init>(Lcom/google/android/gms/internal/zzfi$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$1;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfi$1$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzfi$1$2;-><init>(Lcom/google/android/gms/internal/zzfi$1;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "Pooled interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$1;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfi$1$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfi$1$3;-><init>(Lcom/google/android/gms/internal/zzfi$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAdLoaded()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$1;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfi$1$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfi$1$4;-><init>(Lcom/google/android/gms/internal/zzfi$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdOpened()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$1;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfi$1$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfi$1$5;-><init>(Lcom/google/android/gms/internal/zzfi$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
