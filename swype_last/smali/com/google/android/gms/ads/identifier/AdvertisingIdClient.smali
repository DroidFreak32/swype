.class public Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;,
        Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field zzajb:Lcom/google/android/gms/common/zza;

.field zzajc:Lcom/google/android/gms/internal/zzcc;

.field zzajd:Z

.field zzaje:Ljava/lang/Object;

.field zzajf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;

.field final zzajg:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-wide/16 v0, 0x7530

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzaje:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajd:Z

    iput-wide p2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajg:J

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    const-wide/16 v2, -0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;J)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zze(Z)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_13

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->finish()V

    return-object v0

    :catchall_13
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->finish()V

    throw v0
.end method

.method public static setShouldSkipGmsCoreVersionCheck(Z)V
    .registers 1

    return-void
.end method

.method private static zza$4541900a(Lcom/google/android/gms/common/zza;)Lcom/google/android/gms/internal/zzcc;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3000
    const-string/jumbo v1, "BlockingServiceConnection.getServiceWithTimeout() called on main thread"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/common/zza;->qZ:Z

    if-eqz v1, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call get on this connection more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_15} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_37

    .line 0
    :catch_15
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Interrupted exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3000
    :cond_1f
    const/4 v1, 0x1

    :try_start_20
    iput-boolean v1, p0, Lcom/google/android/gms/common/zza;->qZ:Z

    iget-object v1, p0, Lcom/google/android/gms/common/zza;->ra:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0x2710

    invoke-interface {v1, v2, v3, v0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_3e

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v1, "Timed out waiting for the service connection"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_37} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_37} :catch_37

    .line 0
    :catch_37
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3e
    :try_start_3e
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcc$zza;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzcc;
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_41} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_37

    move-result-object v0

    return-object v0
.end method

.method private zzdi()V
    .registers 7

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzaje:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;->zzajj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_26

    .line 0
    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;->join()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_13} :catch_29
    .catchall {:try_start_e .. :try_end_13} :catchall_26

    :cond_13
    :goto_13
    :try_start_13
    iget-wide v2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajg:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_24

    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;

    iget-wide v2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajg:J

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;

    :cond_24
    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    throw v0

    :catch_29
    move-exception v0

    goto :goto_13
.end method

.method private zze(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    const-string/jumbo v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_7
    iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajd:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->finish()V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzh(Landroid/content/Context;)Lcom/google/android/gms/common/zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajb:Lcom/google/android/gms/common/zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajb:Lcom/google/android/gms/common/zza;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza$4541900a(Lcom/google/android/gms/common/zza;)Lcom/google/android/gms/internal/zzcc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajc:Lcom/google/android/gms/internal/zzcc;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajd:Z

    if-eqz p1, :cond_26

    invoke-direct {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzdi()V

    :cond_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method private static zzh(Landroid/content/Context;)Lcom/google/android/gms/common/zza;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_1f

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzang()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_56

    :pswitch_16
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Google Play services not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1f
    move-exception v0

    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v0

    :pswitch_28
    new-instance v0, Lcom/google/android/gms/common/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/zza;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_3b
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzaux()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v0}, Lcom/google/android/gms/common/stats/zzb;->zza$31a3108d(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_42} :catch_46

    move-result v1

    if-eqz v1, :cond_4d

    return-object v0

    :catch_46
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4d
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Connection failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_28
        :pswitch_16
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->finish()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public finish()V
    .registers 4

    const-string/jumbo v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajb:Lcom/google/android/gms/common/zza;

    if-nez v0, :cond_11

    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_2a

    :goto_10
    return-void

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajd:Z

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzaux()Lcom/google/android/gms/common/stats/zzb;

    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajb:Lcom/google/android/gms/common/zza;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_1f} :catch_2d
    .catchall {:try_start_11 .. :try_end_1f} :catchall_2a

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    :try_start_20
    iput-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajc:Lcom/google/android/gms/internal/zzcc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajb:Lcom/google/android/gms/common/zza;

    monitor-exit p0

    goto :goto_10

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2a

    throw v0

    :catch_2d
    move-exception v0

    :try_start_2e
    const-string/jumbo v1, "AdvertisingIdClient"

    const-string/jumbo v2, "AdvertisingIdClient unbindService failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_2a

    goto :goto_1f
.end method

.method public getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    const-string/jumbo v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_7
    iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajd:Z

    if-nez v0, :cond_43

    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzaje:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_24

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;

    .line 2000
    iget-boolean v0, v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;->zzajk:Z

    .line 0
    if-nez v0, :cond_27

    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "AdvertisingIdClient is not connected."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_21

    :try_start_23
    throw v0

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_21

    const/4 v0, 0x0

    :try_start_29
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zze(Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_39
    .catchall {:try_start_29 .. :try_end_2c} :catchall_24

    :try_start_2c
    iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajd:Z

    if-nez v0, :cond_43

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_39
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajb:Lcom/google/android/gms/common/zza;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajc:Lcom/google/android/gms/internal/zzcc;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_2c .. :try_end_4d} :catchall_24

    :try_start_4d
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajc:Lcom/google/android/gms/internal/zzcc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcc;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzajc:Lcom/google/android/gms/internal/zzcc;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzcc;->zzf(Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_5f} :catch_64
    .catchall {:try_start_4d .. :try_end_5f} :catchall_24

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_24

    invoke-direct {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzdi()V

    return-object v0

    :catch_64
    move-exception v0

    :try_start_65
    const-string/jumbo v1, "AdvertisingIdClient"

    const-string/jumbo v2, "GMS remote exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_77
    .catchall {:try_start_65 .. :try_end_77} :catchall_24
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zze(Z)V

    return-void
.end method
