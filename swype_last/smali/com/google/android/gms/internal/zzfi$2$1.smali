.class final Lcom/google/android/gms/internal/zzfi$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfi$2;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzbjw:Ljava/lang/String;

.field final synthetic zzbjx:Lcom/google/android/gms/internal/zzfi$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfi$2;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfi$2$1;->zzbjx:Lcom/google/android/gms/internal/zzfi$2;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfi$2$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfi$2$1;->zzbjw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzfj;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfj;->zzbkh:Lcom/google/android/gms/ads/internal/client/zzw;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfj;->zzbkh:Lcom/google/android/gms/ads/internal/client/zzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfi$2$1;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfi$2$1;->zzbjw:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzw;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method
