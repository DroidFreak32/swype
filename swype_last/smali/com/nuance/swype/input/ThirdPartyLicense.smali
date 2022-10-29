.class public Lcom/nuance/swype/input/ThirdPartyLicense;
.super Ljava/lang/Object;
.source "ThirdPartyLicense.java"


# instance fields
.field private mIsLicensingOn:Z

.field private mLicenseChecker:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mLicenseChecker:Ljava/lang/Object;

    .line 14
    iput-boolean v8, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mIsLicensingOn:Z

    .line 18
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/BuildInfo;->isLicensingOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mIsLicensingOn:Z

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->vendor_licensing:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 22
    .local v4, "vendorCheckerClassName":Ljava/lang/String;
    const-string/jumbo v5, "checker class name: %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    :try_start_2c
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 27
    .local v1, "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "checker class name: %s : get class already"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 30
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 31
    .local v0, "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "Swype"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mLicenseChecker:Ljava/lang/Object;

    .line 35
    iget-object v5, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mLicenseChecker:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "isLicenseValid"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 37
    iget-object v6, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mLicenseChecker:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2c .. :try_end_8b} :catch_8c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_8b} :catch_a6

    .line 45
    .end local v0    # "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    .end local v1    # "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_8b
    return-void

    .line 39
    :catch_8c
    move-exception v3

    .line 40
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v6, "catch InvocationTargetException when invoke \'isLicenseValid\':%s"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a2

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v5

    :goto_9c
    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_8b

    :cond_a2
    const-string/jumbo v5, "no exception message"

    goto :goto_9c

    .line 44
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_a6
    move-exception v5

    goto :goto_8b
.end method


# virtual methods
.method public getActivityIntentForInvalidLicense()Landroid/content/Intent;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mLicenseChecker:Ljava/lang/Object;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 88
    :goto_6
    return-object v0

    .line 81
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mLicenseChecker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getActivityIntentForInvalidLicense"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mLicenseChecker:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_22} :catch_23

    goto :goto_6

    .line 88
    :catch_23
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method

.method isValid()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 49
    iget-boolean v1, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mIsLicensingOn:Z

    if-nez v1, :cond_8

    move v1, v2

    .line 70
    :goto_7
    return v1

    .line 51
    :cond_8
    iget-object v1, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mLicenseChecker:Ljava/lang/Object;

    if-eqz v1, :cond_47

    .line 54
    :try_start_c
    iget-object v1, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mLicenseChecker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v4, "isLicenseValid"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    iget-object v4, p0, Lcom/nuance/swype/input/ThirdPartyLicense;->mLicenseChecker:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_2a} :catch_2c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_2a} :catch_49

    move-result v1

    goto :goto_7

    .line 58
    :catch_2c
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "catch InvocationTargetException when invoke \'isLicenseValid\':%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_3c
    aput-object v1, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_41
    move v1, v3

    .line 65
    goto :goto_7

    .line 59
    .restart local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_43
    const-string/jumbo v1, "no exception message"

    goto :goto_3c

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_47
    move v1, v3

    .line 70
    goto :goto_7

    :catch_49
    move-exception v1

    goto :goto_41
.end method
