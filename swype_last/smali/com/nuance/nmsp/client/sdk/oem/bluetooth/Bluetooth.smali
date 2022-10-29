.class public abstract Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Ljava/lang/Object;

.field protected mContext:Landroid/content/Context;

.field protected mHeadset:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->mHeadset:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    return-void
.end method

.method static synthetic a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;
    .registers 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;
    .registers 3

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->SDK:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_a

    sget-boolean v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->IS_BROKEN_HTC:Z

    if-eqz v1, :cond_10

    :cond_a
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/b;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/b;-><init>(Landroid/content/Context;)V

    :goto_f
    return-object v0

    :cond_10
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1a

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/c;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/c;-><init>(Landroid/content/Context;)V

    goto :goto_f

    :cond_1a
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/a;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/a;-><init>(Landroid/content/Context;)V

    goto :goto_f
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->mHeadset:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    if-eqz v0, :cond_c

    :try_start_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->mHeadset:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_d

    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->mHeadset:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    :cond_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method public abstract getPlaybackStream()I
.end method

.method public abstract getRecordingSource()I
.end method

.method public isHeadsetConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->mHeadset:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public startBluetoothSco()V
    .registers 9

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth$1;

    invoke-direct {v1, p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth$1;-><init>(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->startBluetoothScoInternal()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_72

    :try_start_1b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->b:Ljava/lang/Object;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_22} :catch_53
    .catchall {:try_start_1b .. :try_end_22} :catchall_72

    :cond_22
    :goto_22
    :try_start_22
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "BluetoothHeadset "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms to wait for SCO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    :cond_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_22 .. :try_end_4d} :catchall_72

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :catch_53
    move-exception v0

    :try_start_54
    sget-object v3, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v3

    if-eqz v3, :cond_22

    sget-object v3, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "BluetoothHeadset mHeadsetScoSyncObj.wait() threw exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V
    :try_end_71
    .catchall {:try_start_54 .. :try_end_71} :catchall_72

    goto :goto_22

    :catchall_72
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public abstract startBluetoothScoInternal()V
.end method

.method public abstract stopBluetoothSco()V
.end method
