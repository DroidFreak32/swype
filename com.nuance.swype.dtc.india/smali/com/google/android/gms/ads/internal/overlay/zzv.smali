.class final Lcom/google/android/gms/ads/internal/overlay/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/overlay/zzv$zza;
    }
.end annotation


# instance fields
.field final zzbui:Landroid/hardware/SensorManager;

.field private final zzbuj:Ljava/lang/Object;

.field private final zzbuk:Landroid/view/Display;

.field private final zzbul:[F

.field private final zzbum:[F

.field private zzbun:[F

.field zzbuo:Landroid/os/Handler;

.field zzbup:Lcom/google/android/gms/ads/internal/overlay/zzv$zza;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0x9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbui:Landroid/hardware/SensorManager;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbuk:Landroid/view/Display;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbul:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbum:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbuj:Ljava/lang/Object;

    return-void
.end method

.method private zzf(II)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbum:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbum:[F

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbum:[F

    aget v2, v2, p2

    aput v2, v1, p1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbum:[F

    aput v0, v1, p2

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 1000
    aget v1, v0, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    aget v1, v0, v4

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    aget v1, v0, v5

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbuj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbun:[F

    if-nez v2, :cond_1

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbun:[F

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbul:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbuk:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1000
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbul:[F

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbum:[F

    invoke-static {v0, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 v0, 0x3

    invoke-direct {p0, v4, v0}, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzf(II)V

    const/4 v0, 0x6

    invoke-direct {p0, v5, v0}, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzf(II)V

    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzf(II)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbuj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbum:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbun:[F

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbup:Lcom/google/android/gms/ads/internal/overlay/zzv$zza;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbup:Lcom/google/android/gms/ads/internal/overlay/zzv$zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzv$zza;->zznz()V

    .line 0
    :cond_2
    return-void

    .line 1000
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbul:[F

    const/16 v1, 0x81

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbum:[F

    invoke-static {v0, v5, v1, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbul:[F

    const/16 v1, 0x81

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbum:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbul:[F

    const/16 v1, 0x82

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbum:[F

    invoke-static {v0, v1, v4, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final stop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbuo:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbui:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbuo:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzv$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzv$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbuo:Landroid/os/Handler;

    goto :goto_0
.end method

.method final zzb([F)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbuj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbun:[F

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbun:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzbun:[F

    array-length v4, v4

    invoke-static {v0, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
