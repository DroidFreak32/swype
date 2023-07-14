.class final Lcom/google/android/gms/internal/zzfi$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfi;->zza(Lcom/google/android/gms/internal/zzfj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjt:Lcom/google/android/gms/internal/zzfi;

.field final synthetic zzbkf:Lcom/google/android/gms/internal/zzfi$zza;

.field final synthetic zzbkg:Lcom/google/android/gms/internal/zzfj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfi;Lcom/google/android/gms/internal/zzfi$zza;Lcom/google/android/gms/internal/zzfj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfi$7;->zzbjt:Lcom/google/android/gms/internal/zzfi;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfi$7;->zzbkf:Lcom/google/android/gms/internal/zzfi$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfi$7;->zzbkg:Lcom/google/android/gms/internal/zzfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi$7;->zzbkf:Lcom/google/android/gms/internal/zzfi$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfi$7;->zzbkg:Lcom/google/android/gms/internal/zzfj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzfi$zza;->zzb(Lcom/google/android/gms/internal/zzfj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not propagate interstitial ad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
