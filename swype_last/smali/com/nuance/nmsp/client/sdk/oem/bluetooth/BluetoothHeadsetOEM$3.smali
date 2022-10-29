.class final Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


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
    .registers 2

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    const-string/jumbo v1, "BluetoothHeadsetOEM native onServiceConnected()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    :cond_21
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_28
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;Z)Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_47
    monitor-exit v1

    :cond_48
    :goto_48
    const/4 v0, 0x0

    return-object v0

    :cond_4a
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_28 .. :try_end_52} :catchall_53

    goto :goto_47

    :catchall_53
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_56
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    const-string/jumbo v1, "BluetoothHeadsetOEM native onServiceDisconnected()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    :cond_77
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7e
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Z

    move-result v0

    if-nez v0, :cond_95

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;Z)Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM$3;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_7e .. :try_end_96} :catchall_97

    goto :goto_48

    :catchall_97
    move-exception v0

    monitor-exit v1

    throw v0
.end method
