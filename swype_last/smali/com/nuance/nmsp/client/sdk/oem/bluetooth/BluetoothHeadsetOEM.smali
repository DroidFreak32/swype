.class public Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;
.super Ljava/lang/Object;


# static fields
.field public static ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String;

.field public static AUDIO_STATE_CONNECTED:I

.field public static EXTRA_AUDIO_STATE:Ljava/lang/String;

.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;

.field private final h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

.field private i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->d:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    iput-boolean v4, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->e:Z

    iput-boolean v4, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->f:Z

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->g:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->i:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->b:Landroid/content/Context;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->SDK:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_b8

    iput-boolean v5, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->c:Z

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String;

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->EXTRA_AUDIO_STATE:Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->EXTRA_AUDIO_STATE:Ljava/lang/String;

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->AUDIO_STATE_CONNECTED:I

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->AUDIO_STATE_CONNECTED:I

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;-><init>(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->b:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->d:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_8a

    :try_start_48
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->i:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4f} :catch_6b
    .catchall {:try_start_48 .. :try_end_4f} :catchall_8a

    :cond_4f
    :goto_4f
    :try_start_4f
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->f:Z

    if-nez v0, :cond_8d

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "BluetoothHeadsetOEM reflected service NOT connected in time. Gave up!!!"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->e:Z

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->b()V

    :cond_69
    :goto_69
    monitor-exit v1

    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    sget-object v4, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_4f

    sget-object v4, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "BluetoothHeadsetOEM reflected mHeadsetSyncObj.wait() threw exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V
    :try_end_89
    .catchall {:try_start_4f .. :try_end_89} :catchall_8a

    goto :goto_4f

    :catchall_8a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8d
    :try_start_8d
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "BluetoothHeadsetOEM reflected service connection took "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V
    :try_end_b7
    .catchall {:try_start_8d .. :try_end_b7} :catchall_8a

    goto :goto_69

    :cond_b8
    iput-boolean v4, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->c:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v1, "android.bluetooth.BluetoothHeadset"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v2, "ACTION_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v2, "EXTRA_STATE"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->EXTRA_AUDIO_STATE:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v2, "STATE_AUDIO_CONNECTED"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->AUDIO_STATE_CONNECTED:I

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->SDK:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_100

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->SDK:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_100

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->SDK:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_178

    :cond_100
    new-array v0, v3, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$2;

    invoke-direct {v2, p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$2;-><init>(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;[Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_10f
    aget-object v1, v0, v4

    if-nez v1, :cond_11b

    const-wide/16 v2, 0xa

    :try_start_115
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_118} :catch_119

    goto :goto_10f

    :catch_119
    move-exception v1

    goto :goto_10f

    :cond_11b
    aget-object v0, v0, v5

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    move-object v1, v0

    :goto_120
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v2, "android.bluetooth.BluetoothProfile$ServiceListener"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Class;

    aput-object v2, v3, v4

    new-instance v4, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;

    invoke-direct {v4, p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;-><init>(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)V

    invoke-static {v0, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->i:Ljava/lang/Object;

    monitor-enter v4

    :try_start_141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v5, "android.bluetooth.BluetoothProfile"

    invoke-virtual {v0, v5}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v8, "android.bluetooth.BluetoothAdapter"

    invoke-virtual {v0, v8}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_156
    .catchall {:try_start_141 .. :try_end_156} :catchall_175

    move-result-object v8

    :try_start_157
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v9, "isEnabled"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v9, v10}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_16f} :catch_17e
    .catchall {:try_start_157 .. :try_end_16f} :catchall_175

    move-result v0

    if-nez v0, :cond_182

    :try_start_172
    monitor-exit v4
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_175

    goto/16 :goto_6a

    :catchall_175
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_178
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    move-object v1, v0

    goto :goto_120

    :catch_17e
    move-exception v0

    :try_start_17f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_182
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v9, "getProfileProxy"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const/4 v2, 0x2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v2

    invoke-virtual {v0, v8, v9, v10}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_19a
    .catchall {:try_start_17f .. :try_end_19a} :catchall_175

    move-result-object v0

    const/4 v2, 0x3

    :try_start_19c
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v2, v8

    const/4 v8, 0x1

    aput-object v3, v2, v8

    const/4 v3, 0x2

    iget-object v8, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v9, "HEADSET"

    invoke-virtual {v8, v5, v9}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1b3} :catch_1d4
    .catchall {:try_start_19c .. :try_end_1b3} :catchall_175

    :goto_1b3
    :try_start_1b3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->i:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1ba
    .catch Ljava/lang/InterruptedException; {:try_start_1b3 .. :try_end_1ba} :catch_1d9
    .catchall {:try_start_1b3 .. :try_end_1ba} :catchall_175

    :cond_1ba
    :goto_1ba
    :try_start_1ba
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->f:Z

    if-nez v0, :cond_1f8

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1ce

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "BluetoothHeadsetOEM native service NOT connected in time. Gave up!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_1ce
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->e:Z

    :cond_1d1
    :goto_1d1
    monitor-exit v4

    goto/16 :goto_6a

    :catch_1d4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b3

    :catch_1d9
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1ba

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BluetoothHeadsetOEM native mHeadsetSyncObj.wait() threw exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_1ba

    :cond_1f8
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "BluetoothHeadsetOEM native service connection took "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V
    :try_end_221
    .catchall {:try_start_1ba .. :try_end_221} :catchall_175

    goto :goto_1d1
.end method

.method static synthetic a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;
    .registers 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->g:Ljava/lang/Object;

    return-object p1
.end method

.method private a(Ljava/lang/Object;)V
    .registers 10

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v1, "android.bluetooth.BluetoothProfile"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v2, "android.bluetooth.BluetoothAdapter"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v3, "closeProfileProxy"

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {v2, v1, v3, v4}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethodOrNull(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const/4 v3, 0x2

    :try_start_2b
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v6, "HEADSET"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_41} :catch_42

    :goto_41
    return-void

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->f:Z

    return v0
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->d:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->d:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->d:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    :cond_c
    return-void
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->b()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->c:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->b()V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->g:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->g:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->g:Ljava/lang/Object;

    goto :goto_7
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->d:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->d:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->c:Z

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->g:Ljava/lang/Object;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v2, "android.bluetooth.BluetoothProfile"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->h:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    const-string/jumbo v3, "getConnectedDevices"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3, v4}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethodOrNull(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :try_start_2d
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->g:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_47

    :goto_38
    if-eqz v0, :cond_4d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4d

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    goto :goto_10

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_38

    :cond_4d
    move-object v0, v1

    goto :goto_10

    :cond_4f
    move-object v0, v1

    goto :goto_10
.end method

.method public startVoiceRecognition()Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->c:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->d:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->d:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->startVoiceRecognition()Z

    move-result v0

    goto :goto_9

    :cond_11
    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "BluetoothHeadsetOEM startVoiceRecognition() called on native headset!!!"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public stopVoiceRecognition()Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->c:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->d:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->d:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->stopVoiceRecognition()Z

    move-result v0

    goto :goto_9

    :cond_11
    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "BluetoothHeadsetOEM stopVoiceRecognition() called on native headset!!!"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_9
.end method
