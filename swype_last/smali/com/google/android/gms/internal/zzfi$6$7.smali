.class final Lcom/google/android/gms/internal/zzfi$6$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfi$6;->onRewardedVideoAdFailedToLoad(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjv:I

.field final synthetic zzbkd:Lcom/google/android/gms/internal/zzfi$6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfi$6;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfi$6$7;->zzbkd:Lcom/google/android/gms/internal/zzfi$6;

    iput p2, p0, Lcom/google/android/gms/internal/zzfi$6$7;->zzbjv:I

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

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfj;->zzbkl:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfj;->zzbkl:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    iget v1, p0, Lcom/google/android/gms/internal/zzfi$6$7;->zzbjv:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdFailedToLoad(I)V

    :cond_b
    return-void
.end method
