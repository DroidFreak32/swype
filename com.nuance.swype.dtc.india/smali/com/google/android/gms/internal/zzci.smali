.class public final Lcom/google/android/gms/internal/zzci;
.super Lcom/google/android/gms/internal/zzcd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzarp:Lcom/google/android/gms/internal/zzft;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;Lcom/google/android/gms/internal/zzft;)V
    .locals 3

    .prologue
    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzcd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;)V

    iput-object p6, p0, Lcom/google/android/gms/internal/zzci;->zzarp:Lcom/google/android/gms/internal/zzft;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzci;->zzarp:Lcom/google/android/gms/internal/zzft;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzci;->zzc(Lcom/google/android/gms/internal/zzft;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzci;->zzgw()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzci;->zzk(I)V

    const-string/jumbo v1, "Tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzci;->zzaqk:Lcom/google/android/gms/internal/zzcf;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcf;->zzari:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final destroy()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzci;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzcd;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzci;->zzarp:Lcom/google/android/gms/internal/zzft;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzci;->zzd(Lcom/google/android/gms/internal/zzft;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final zzb(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzci;->zzarp:Lcom/google/android/gms/internal/zzft;

    const-string/jumbo v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzgy()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzci;->destroy()V

    return-void
.end method

.method protected final zzhe()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
