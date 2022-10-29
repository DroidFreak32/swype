.class public final Lcom/nuance/id/NuanceId;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field public hashingInternal:Lcom/nuance/id/NuanceIdImpl;

.field public id:Ljava/lang/String;

.field private idsUsed:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/id/NuanceId;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    new-instance v0, Lcom/nuance/id/NuanceIdImpl;

    invoke-direct {v0}, Lcom/nuance/id/NuanceIdImpl;-><init>()V

    iput-object v0, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    const/16 v0, 0xf

    iput v0, p0, Lcom/nuance/id/NuanceId;->idsUsed:I

    return-void
.end method

.method private static getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

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
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const/4 v0, 0x0

    goto :goto_14
.end method

.method private isIdIncluded(I)Z
    .registers 3

    iget v0, p0, Lcom/nuance/id/NuanceId;->idsUsed:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final getAndroidId()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v1, :cond_1a

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    if-nez v0, :cond_1f

    const-string/jumbo v0, "00000000000000000"

    :cond_1f
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 0
    iget-object v3, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    if-nez v3, :cond_7b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1000
    iget-object v4, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v4, :cond_84

    invoke-direct {p0, v0}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v4

    if-eqz v4, :cond_84

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    .line 2000
    iget-object v5, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v5, :cond_80

    iget-object v5, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7e

    .line 1000
    :goto_25
    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_36
    if-nez v0, :cond_3b

    const-string/jumbo v0, "00000000000000000"

    .line 0
    :cond_3b
    invoke-static {v0}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3000
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v0

    if-eqz v0, :cond_82

    const-string/jumbo v0, "SERIAL"

    invoke-static {v0}, Lcom/nuance/id/NuanceId;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_51
    if-nez v0, :cond_56

    const-string/jumbo v0, "0000000000000000000000"

    .line 0
    :cond_56
    invoke-static {v0}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4000
    const-string/jumbo v1, "000000000000"

    .line 0
    invoke-static {v1}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    :cond_7b
    iget-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    return-object v0

    :cond_7e
    move v0, v2

    .line 2000
    goto :goto_25

    :cond_80
    move v0, v2

    goto :goto_25

    :cond_82
    move-object v0, v1

    goto :goto_51

    :cond_84
    move-object v0, v1

    goto :goto_36
.end method
