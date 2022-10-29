.class public Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/BluetoothSystem;


# instance fields
.field private a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->b:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->c:Z

    if-eqz p1, :cond_91

    move v1, v2

    :goto_17
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_91

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v5

    sget-object v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v5, v6, :cond_5f

    const-string/jumbo v5, "Android_Context"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValueRaw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "NMSP_DEFINES_ANDROID_CONTEXT is passed in as"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_5f
    :goto_5f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_63
    const-string/jumbo v5, "Disable_Bluetooth"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "TRUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v4, "Disable_Bluetooth is true."

    invoke-virtual {v0, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_8e
    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->c:Z

    goto :goto_5f

    :cond_91
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->b:Landroid/content/Context;

    if-eqz v0, :cond_a3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a1

    move v2, v3

    :cond_a1
    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->c:Z

    :cond_a3
    return-void
.end method


# virtual methods
.method public isBluetoothHeadsetConnected()Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->c:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->b:Landroid/content/Context;

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "ANDROID_CONTEXT parameter is not passed in!!!"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_5

    :cond_1b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->createInstance(Landroid/content/Context;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->isHeadsetConnected()Z

    move-result v0

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->close()V

    goto :goto_5
.end method
