.class final Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected()V
    .locals 3

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    const-string v1, "BluetoothHeadsetOEM reflected onServiceConnected()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;Z)Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->c(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceDisconnected()V
    .locals 3

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    const-string v1, "BluetoothHeadsetOEM reflected onServiceDisconnected()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->c(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;Z)Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
