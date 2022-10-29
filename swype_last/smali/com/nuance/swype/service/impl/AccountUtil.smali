.class public final Lcom/nuance/swype/service/impl/AccountUtil;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# static fields
.field private static isGoogleAccountMissing:Z

.field private static isGoogleAccountSignedIn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing:Z

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountSignedIn:Z

    return-void
.end method

.method public static buildDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v2, "name":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Android device"

    .line 64
    .local v1, "modelName":Ljava/lang/String;
    :try_start_8
    const-class v3, Landroid/os/Build;

    const-string/jumbo v4, "MODEL"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 65
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    const-class v3, Landroid/os/Build;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_45

    move-result-object v1

    .line 70
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_1f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1083
    invoke-static {p0}, Lcom/nuance/swype/service/impl/AccountUtil;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3e

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->TABLET:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    .line 1084
    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    :goto_36
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1084
    :cond_3e
    sget-object v3, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->PHONE:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    .line 1085
    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_36

    :catch_45
    move-exception v3

    goto :goto_1f
.end method

.method public static deviceHasGoogleAccount(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 44
    array-length v0, v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isGoogleAccountMissing()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing:Z

    return v0
.end method

.method public static isGoogleAccountSignedIn()Z
    .registers 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountSignedIn:Z

    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xa0

    const/4 v2, 0x0

    .line 96
    .line 1104
    if-eqz p0, :cond_31

    .line 1105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 1114
    .local v0, "screenLayoutSize":I
    :goto_11
    if-eqz p0, :cond_35

    .line 1115
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1116
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1118
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1119
    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1120
    iget v1, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 98
    :goto_2a
    if-lt v1, v3, :cond_33

    const/4 v1, 0x4

    if-lt v0, v1, :cond_33

    const/4 v1, 0x1

    :goto_30
    return v1

    .end local v0    # "screenLayoutSize":I
    :cond_31
    move v0, v2

    .line 1108
    goto :goto_11

    .restart local v0    # "screenLayoutSize":I
    :cond_33
    move v1, v2

    .line 98
    goto :goto_30

    :cond_35
    move v1, v3

    goto :goto_2a
.end method

.method public static setGoogleAccountMissing(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "missing"    # Z

    .prologue
    .line 48
    sput-boolean p1, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing:Z

    .line 1023
    sget-boolean v0, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 49
    if-eqz v0, :cond_15

    .line 1041
    if-nez p1, :cond_15

    sget-boolean v0, Lcom/nuance/swype/util/AdsUtil;->sTagForChildDirectedTreatment:Z

    if-eq p1, v0, :cond_15

    .line 1042
    sput-boolean p1, Lcom/nuance/swype/util/AdsUtil;->sTagForChildDirectedTreatment:Z

    .line 1043
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/UserPreferences;->setTagForChildDirectedTreatment(Z)V

    .line 52
    :cond_15
    return-void
.end method

.method public static setIsGoogleAccountSignedIn(Z)V
    .registers 1
    .param p0, "isGoogleAccountSignedIn"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountSignedIn:Z

    .line 40
    return-void
.end method
