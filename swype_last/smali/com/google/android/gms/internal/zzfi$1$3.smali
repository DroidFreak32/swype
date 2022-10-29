.class final Lcom/google/android/gms/internal/zzfi$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfi$1;->onAdLeftApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbju:Lcom/google/android/gms/internal/zzfi$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfi$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfi$1$3;->zzbju:Lcom/google/android/gms/internal/zzfi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzfj;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfj;->zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfj;->zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdLeftApplication()V

    :cond_9
    return-void
.end method
