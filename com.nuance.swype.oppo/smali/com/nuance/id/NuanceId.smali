.class public final Lcom/nuance/id/NuanceId;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field public hashingInternal:Lcom/nuance/id/NuanceIdImpl;

.field public id:Ljava/lang/String;

.field private idsUsed:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/id/NuanceId;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    new-instance v0, Lcom/nuance/id/NuanceIdImpl;

    invoke-direct {v0}, Lcom/nuance/id/NuanceIdImpl;-><init>()V

    iput-object v0, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    const/16 v0, 0xf

    iput v0, p0, Lcom/nuance/id/NuanceId;->idsUsed:I

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v1, Landroid/os/Build;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIdIncluded(I)Z
    .locals 1

    iget v0, p0, Lcom/nuance/id/NuanceId;->idsUsed:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getAndroidId()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "00000000000000000"

    :cond_1
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/nuance/id/NuanceId;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "00000000000000000"

    :cond_0
    invoke-static {v0}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "SERIAL"

    invoke-static {v0}, Lcom/nuance/id/NuanceId;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    const-string v0, "0000000000000000000000"

    :cond_1
    invoke-static {v0}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v0}, Lcom/nuance/id/NuanceId;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ":"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    const-string v0, "000000000000"

    :cond_3
    invoke-static {v0}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method
