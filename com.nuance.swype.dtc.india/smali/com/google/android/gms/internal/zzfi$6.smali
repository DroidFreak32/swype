.class final Lcom/google/android/gms/internal/zzfi$6;
.super Lcom/google/android/gms/ads/internal/reward/client/zzd$zza;


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
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfi$6;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzd$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRewardedVideoAdClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$6;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfi$6$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfi$6$4;-><init>(Lcom/google/android/gms/internal/zzfi$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRewardedVideoAdFailedToLoad(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$6;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfi$6$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzfi$6$7;-><init>(Lcom/google/android/gms/internal/zzfi$6;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRewardedVideoAdLeftApplication()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$6;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfi$6$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfi$6$6;-><init>(Lcom/google/android/gms/internal/zzfi$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRewardedVideoAdLoaded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$6;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfi$6$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfi$6$1;-><init>(Lcom/google/android/gms/internal/zzfi$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRewardedVideoAdOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$6;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfi$6$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfi$6$2;-><init>(Lcom/google/android/gms/internal/zzfi$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$6;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfi$6$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfi$6$3;-><init>(Lcom/google/android/gms/internal/zzfi$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/reward/client/zza;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$6;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzfi$6$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzfi$6$5;-><init>(Lcom/google/android/gms/internal/zzfi$6;Lcom/google/android/gms/ads/internal/reward/client/zza;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
