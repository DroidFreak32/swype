.class final Lcom/google/android/gms/ads/internal/purchase/zzi$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/purchase/zzi;->zzt(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzbxo:Lcom/google/android/gms/ads/internal/purchase/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/purchase/zzi;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zzbxo:Lcom/google/android/gms/ads/internal/purchase/zzi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zzala:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 0
    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zzala:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/ads/internal/purchase/zzb;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzas(Landroid/os/IBinder;)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zzala:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "inapp"

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v3

    if-nez v2, :cond_24

    const/4 v0, 0x1

    .line 1000
    :cond_24
    iget-object v2, v3, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_27
    iput-boolean v0, v3, Lcom/google/android/gms/internal/zzjx;->zzcjx:Z

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_33

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zzala:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    return-void

    .line 1000
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
