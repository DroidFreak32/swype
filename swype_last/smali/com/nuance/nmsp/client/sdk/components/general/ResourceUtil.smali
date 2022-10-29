.class public Lcom/nuance/nmsp/client/sdk/components/general/ResourceUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->getInstance()Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceSubModel()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->getInstance()Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;->getDeviceSubModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSType()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->getInstance()Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;->getOSType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->getInstance()Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
