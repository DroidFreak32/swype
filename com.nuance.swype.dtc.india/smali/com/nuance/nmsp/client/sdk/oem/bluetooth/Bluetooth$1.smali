.class final Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->startBluetoothSco()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->EXTRA_AUDIO_STATE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BluetoothHeadset BroadcastReceiver "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->AUDIO_STATE_CONNECTED:I

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    const-string/jumbo v2, "BluetoothHeadset SCO connected. Notify wait lock."

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
