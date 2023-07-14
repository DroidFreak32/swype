.class final Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;->onServiceConnected()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$1;->a:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;->onServiceDisconnected()V

    goto :goto_0
.end method
