.class public Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

.field private static b:Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;


# instance fields
.field private c:Landroid/telephony/TelephonyManager;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->d:Landroid/content/Context;

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->d:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->c:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;
    .registers 2

    const-class v1, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;

    if-nez v0, :cond_e

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;

    :cond_e
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/DeviceInfo;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSubModel()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public getOSType()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Android"

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string/jumbo v0, ""

    :cond_b
    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string/jumbo v0, ""

    :cond_b
    return-object v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->d:Landroid/content/Context;

    const-string/jumbo v1, "nuance_sdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v0, "NUANCE_NMSP_UID"

    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_46

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2e
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "NUANCE_NMSP_UID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_46

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/DeviceInfoOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "Storing nuance sdk uid has failed"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_46
    if-nez v0, :cond_4b

    const-string/jumbo v0, ""

    :cond_4b
    return-object v0
.end method
