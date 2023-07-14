.class final Lcom/google/android/gms/internal/zzjg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjg;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzalq:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field final synthetic zzchr:Lcom/google/android/gms/internal/zzgk;

.field final synthetic zzchs:Lcom/google/android/gms/internal/zzjg;

.field final synthetic zzcht:Lcom/google/android/gms/internal/zzjj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjg;Lcom/google/android/gms/internal/zzgk;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzjj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjg$2;->zzchs:Lcom/google/android/gms/internal/zzjg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjg$2;->zzchr:Lcom/google/android/gms/internal/zzgk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjg$2;->zzalq:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzjg$2;->zzcht:Lcom/google/android/gms/internal/zzjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg$2;->zzchr:Lcom/google/android/gms/internal/zzgk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg$2;->zzchs:Lcom/google/android/gms/internal/zzjg;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzjg;->mContext:Landroid/content/Context;

    .line 0
    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjg$2;->zzalq:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzjg$2;->zzcht:Lcom/google/android/gms/internal/zzjj;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzjg$2;->zzchs:Lcom/google/android/gms/internal/zzjg;

    .line 2000
    iget-object v5, v5, Lcom/google/android/gms/internal/zzjg;->zzcho:Ljava/lang/String;

    .line 0
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgk;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/reward/mediation/client/zza;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "Fail to initialize adapter "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg$2;->zzchs:Lcom/google/android/gms/internal/zzjg;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzjg;->zzboc:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg$2;->zzchs:Lcom/google/android/gms/internal/zzjg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjg;->zza$505cff1c(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
