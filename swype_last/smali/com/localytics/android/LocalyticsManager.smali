.class Lcom/localytics/android/LocalyticsManager;
.super Ljava/lang/Object;
.source "LocalyticsManager.java"

# interfaces
.implements Lcom/localytics/android/LocalyticsDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;,
        Lcom/localytics/android/LocalyticsManager$HandlerWrapper;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/localytics/android/LocalyticsManager;

.field private static mActivityCounter:I

.field private static mIsAutoIntegrate:Z


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mAppKey:Ljava/lang/String;

.field private mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

.field private mProxy:Ljava/net/Proxy;

.field private mUseNewCreativeLocation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 37
    new-instance v0, Lcom/localytics/android/LocalyticsManager;

    invoke-direct {v0}, Lcom/localytics/android/LocalyticsManager;-><init>()V

    sput-object v0, Lcom/localytics/android/LocalyticsManager;->INSTANCE:Lcom/localytics/android/LocalyticsManager;

    .line 45
    sput v1, Lcom/localytics/android/LocalyticsManager;->mActivityCounter:I

    .line 46
    sput-boolean v1, Lcom/localytics/android/LocalyticsManager;->mIsAutoIntegrate:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/localytics/android/LocalyticsManager;)Lcom/localytics/android/MarketingHandler;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/LocalyticsManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    return-object v0
.end method

.method private classInManifest([Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "infoArray"    # [Landroid/content/pm/ActivityInfo;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 965
    if-eqz p1, :cond_16

    .line 967
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v2, :cond_16

    aget-object v3, v0, v1

    .line 969
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 971
    const/4 v3, 0x1

    .line 976
    .end local v0    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :goto_12
    return v3

    .line 967
    .restart local v0    # "arr$":[Landroid/content/pm/ActivityInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 976
    .end local v0    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_16
    const/4 v3, 0x0

    goto :goto_12
.end method

.method private getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;
    .registers 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    if-nez v0, :cond_b

    .line 909
    new-instance v0, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/LocalyticsManager$1;)V

    throw v0

    .line 912
    :cond_b
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    iget-object v0, v0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->analyticsHandler:Lcom/localytics/android/AnalyticsHandler;

    return-object v0
.end method

.method private getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 987
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 989
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 996
    return-object v0
.end method

.method static getInstance()Lcom/localytics/android/LocalyticsManager;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/localytics/android/LocalyticsManager;->INSTANCE:Lcom/localytics/android/LocalyticsManager;

    return-object v0
.end method

.method private getLocationHandler()Lcom/localytics/android/LocationHandler;
    .registers 3

    .prologue
    .line 947
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    if-nez v0, :cond_b

    .line 949
    new-instance v0, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/LocalyticsManager$1;)V

    throw v0

    .line 952
    :cond_b
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    iget-object v0, v0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->locationHandler:Lcom/localytics/android/LocationHandler;

    return-object v0
.end method

.method private getManifestHandler()Lcom/localytics/android/ManifestHandler;
    .registers 3

    .prologue
    .line 937
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    if-nez v0, :cond_b

    .line 939
    new-instance v0, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/LocalyticsManager$1;)V

    throw v0

    .line 942
    :cond_b
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    iget-object v0, v0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->manifestHandler:Lcom/localytics/android/ManifestHandler;

    return-object v0
.end method

.method private getMarketingHandler()Lcom/localytics/android/MarketingHandler;
    .registers 3

    .prologue
    .line 917
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    if-nez v0, :cond_b

    .line 919
    new-instance v0, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/LocalyticsManager$1;)V

    throw v0

    .line 922
    :cond_b
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    iget-object v0, v0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->marketingHandler:Lcom/localytics/android/MarketingHandler;

    return-object v0
.end method

.method private getProfileHandler()Lcom/localytics/android/ProfileHandler;
    .registers 3

    .prologue
    .line 927
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    if-nez v0, :cond_b

    .line 929
    new-instance v0, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/LocalyticsManager$1;)V

    throw v0

    .line 932
    :cond_b
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    iget-object v0, v0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->profileHandler:Lcom/localytics/android/ProfileHandler;

    return-object v0
.end method

.method private scaleDownBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "maxSide"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    .line 1013
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1014
    .local v1, "largerSide":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 1017
    .local v0, "aspectRatio":F
    int-to-float v3, v1

    cmpl-float v3, v3, p2

    if-lez v3, :cond_46

    .line 1020
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_3c

    .line 1022
    float-to-int v3, p2

    div-float v4, p2, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p1, v3, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1029
    .local v2, "scaledDown":Landroid/graphics/Bitmap;
    :goto_33
    if-nez v2, :cond_3b

    .line 1031
    const-string/jumbo v3, "Cannot scale down the new dismiss button image."

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1038
    .end local v2    # "scaledDown":Landroid/graphics/Bitmap;
    :cond_3b
    :goto_3b
    return-object v2

    .line 1026
    :cond_3c
    mul-float v3, p2, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    float-to-int v4, p2

    invoke-static {p1, v3, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "scaledDown":Landroid/graphics/Bitmap;
    goto :goto_33

    .end local v2    # "scaledDown":Landroid/graphics/Bitmap;
    :cond_46
    move-object v2, p1

    .line 1038
    goto :goto_3b
.end method


# virtual methods
.method public addProfileAttributesToSet(Ljava/lang/String;[J)V
    .registers 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [J

    .prologue
    .line 383
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->addProfileAttributesToSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 384
    return-void
.end method

.method public addProfileAttributesToSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [J
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->addProfileAttributesToSet(Ljava/lang/String;[JLjava/lang/String;)V

    .line 379
    return-void
.end method

.method public addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [Ljava/lang/String;

    .prologue
    .line 393
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 394
    return-void
.end method

.method public addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [Ljava/lang/String;
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;)V
    .registers 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [Ljava/util/Date;

    .prologue
    .line 403
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 404
    return-void
.end method

.method public addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [Ljava/util/Date;
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public areNotificationsDisabled()Z
    .registers 2

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->areNotificationsDisabled()Z

    move-result v0

    return v0
.end method

.method public autoIntegrate(Landroid/app/Application;Ljava/lang/String;)V
    .registers 4
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "localyticsKey"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/localytics/android/LocalyticsActivityLifecycleCallbacks;

    invoke-direct {v0, p1, p2}, Lcom/localytics/android/LocalyticsActivityLifecycleCallbacks;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 68
    return-void
.end method

.method public clearInAppMessageDisplayActivity()V
    .registers 3

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->setFragmentManager(Landroid/app/FragmentManager;)V

    .line 529
    return-void
.end method

.method public closeSession()V
    .registers 2

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->tagDismissForInboxDetailFragments()V

    .line 190
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->closeSession()V

    .line 191
    return-void
.end method

.method decrementActivityCounter()V
    .registers 2

    .prologue
    .line 864
    sget v0, Lcom/localytics/android/LocalyticsManager;->mActivityCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/localytics/android/LocalyticsManager;->mActivityCounter:I

    .line 865
    return-void
.end method

.method public decrementProfileAttribute(Ljava/lang/String;J)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "decrementValue"    # J

    .prologue
    .line 453
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/localytics/android/LocalyticsManager;->decrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 454
    return-void
.end method

.method public decrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .registers 9
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "decrementValue"    # J
    .param p4, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    const-wide/16 v2, -0x1

    mul-long/2addr v2, p2

    invoke-virtual {p4}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/localytics/android/ProfileHandler;->incrementProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V

    .line 449
    return-void
.end method

.method public deleteProfileAttribute(Ljava/lang/String;)V
    .registers 3
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 463
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/LocalyticsManager;->deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 464
    return-void
.end method

.method public deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .registers 5
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/localytics/android/ProfileHandler;->deleteProfileAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public dismissCurrentInAppMessage()V
    .registers 4

    .prologue
    .line 538
    new-instance v0, Lcom/localytics/android/LocalyticsManager$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocalyticsManager$1;-><init>(Lcom/localytics/android/LocalyticsManager;)V

    .line 553
    .local v0, "dismissInAppRunnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_13

    .line 555
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 561
    :goto_12
    return-void

    .line 559
    :cond_13
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12
.end method

.method public downloadInboxThumbnails(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    .local p1, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->downloadInboxThumbnails(Ljava/util/List;)V

    .line 723
    return-void
.end method

.method public getAndroidVersionInt()I
    .registers 2

    .prologue
    .line 1044
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getAppContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedCustomDimensions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getCachedCustomDimensions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCachedIdentifiers()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getCachedIdentifiers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 1056
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimeMillis()J
    .registers 3

    .prologue
    .line 1050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCustomDimension(I)Ljava/lang/String;
    .registers 3
    .param p1, "dimension"    # I

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->getCustomDimension(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 792
    const-string/jumbo v0, "customer_id"

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocalyticsManager;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerIdFuture()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getCustomerIdFuture()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method public getGeofencesToMonitor(DD)Ljava/util/List;
    .registers 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/localytics/android/LocationHandler;->getGeofencesToMonitor(DD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInAppMessageDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .registers 2

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->getInAppDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    move-result-object v0

    return-object v0
.end method

.method public getInboxCampaigns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->getInboxCampaigns()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInboxCampaignsUnreadCount()I
    .registers 2

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->getInboxCampaignsUnreadCount()I

    move-result v0

    return v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .registers 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getPushRegistrationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getPushRegistrationID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStringForSQLite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1062
    const-string/jumbo v0, "now"

    return-object v0
.end method

.method public handleNotificationReceived(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->handleNotificationReceived(Landroid/os/Bundle;)V

    .line 838
    return-void
.end method

.method public handlePushNotificationOpened(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 602
    return-void
.end method

.method public handleTestMode(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->handleTestModeIntent(Landroid/content/Intent;)V

    .line 612
    return-void
.end method

.method incrementActivityCounter()V
    .registers 2

    .prologue
    .line 853
    sget v0, Lcom/localytics/android/LocalyticsManager;->mActivityCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/localytics/android/LocalyticsManager;->mActivityCounter:I

    .line 854
    return-void
.end method

.method public incrementProfileAttribute(Ljava/lang/String;J)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "incrementValue"    # J

    .prologue
    .line 443
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/localytics/android/LocalyticsManager;->incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 444
    return-void
.end method

.method public incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .registers 7
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "incrementValue"    # J
    .param p4, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p4}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/localytics/android/ProfileHandler;->incrementProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V

    .line 439
    return-void
.end method

.method public declared-synchronized integrate(Landroid/content/Context;Ljava/lang/String;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localyticsKey"    # Ljava/lang/String;

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4d

    if-eqz v0, :cond_7

    .line 143
    .end local p1    # "context":Landroid/content/Context;
    :goto_5
    monitor-exit p0

    return-void

    .line 82
    .restart local p1    # "context":Landroid/content/Context;
    :cond_7
    :try_start_7
    const-string/jumbo v0, "com.localytics.android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.test.IsolatedContext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.test.RenamingDelegatingContext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context.getPackageName() returned %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4d

    .line 72
    .end local p1    # "context":Landroid/content/Context;
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    .restart local p1    # "context":Landroid/content/Context;
    :cond_50
    :try_start_50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.test.RenamingDelegatingContext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 92
    .local v8, "isRenamingDelegatingContext":Z
    if-nez v8, :cond_6e

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_6e

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity context use is not supported. You must call integrate() or registerActivityLifecycleCallbacks() from your Application class (see integration guide). If migrating from 3.0, see https://support.localytics.com/Android_SDK_Migration_3.0_to_3.x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_6e
    if-eqz v8, :cond_95

    .end local p1    # "context":Landroid/content/Context;
    :goto_70
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager;->mAppContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/localytics/android/LocalyticsManager;->mAppKey:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 101
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/localytics/android/DatapointHelper;->getLocalyticsAppKeyOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppKey:Ljava/lang/String;

    .line 103
    :cond_84
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "App key must be declared in a meta data tag in AndroidManifest.xml or passed into integrate(final Context context, final String localyticsKey) or new LocalyticsActivityLifecycleCallbacks(final Context context, final String localyticsKey) (see integration guide)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    .restart local p1    # "context":Landroid/content/Context;
    :cond_95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_98
    .catchall {:try_start_50 .. :try_end_98} :catchall_4d

    move-result-object p1

    goto :goto_70

    .line 111
    .end local p1    # "context":Landroid/content/Context;
    :cond_9a
    :try_start_9a
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/LocalyticsManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 112
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    const-string/jumbo v1, "com.google.android.gms.gcm.GcmReceiver"

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->classInManifest([Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 114
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const-class v1, Lcom/localytics/android/PushTrackingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->classInManifest([Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 116
    const-string/jumbo v0, "PushTrackingActivity is not declared in AndroidManifest.xml (see integration guide)."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_ca
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9a .. :try_end_ca} :catch_149
    .catchall {:try_start_9a .. :try_end_ca} :catchall_4d

    .line 125
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_ca
    :goto_ca
    :try_start_ca
    new-instance v2, Lcom/localytics/android/AnalyticsHandler;

    const-class v0, Lcom/localytics/android/AnalyticsHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/LocalyticsManager;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/localytics/android/AnalyticsHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 126
    .local v2, "analyticsHandler":Lcom/localytics/android/AnalyticsHandler;
    new-instance v3, Lcom/localytics/android/MarketingHandler;

    const-class v0, Lcom/localytics/android/MarketingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/LocalyticsManager;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/localytics/android/MarketingHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 127
    .local v3, "marketingHandler":Lcom/localytics/android/MarketingHandler;
    new-instance v4, Lcom/localytics/android/ProfileHandler;

    const-class v0, Lcom/localytics/android/ProfileHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/LocalyticsManager;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/localytics/android/ProfileHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 128
    .local v4, "profileHandler":Lcom/localytics/android/ProfileHandler;
    new-instance v5, Lcom/localytics/android/ManifestHandler;

    const-class v0, Lcom/localytics/android/ManifestHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/LocalyticsManager;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, p0, v0}, Lcom/localytics/android/ManifestHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 129
    .local v5, "manifestHandler":Lcom/localytics/android/ManifestHandler;
    new-instance v6, Lcom/localytics/android/LocationHandler;

    const-class v0, Lcom/localytics/android/LocationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/LocalyticsManager;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lcom/localytics/android/LocationHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 131
    .local v6, "locationHandler":Lcom/localytics/android/LocationHandler;
    new-instance v0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;-><init>(Lcom/localytics/android/LocalyticsManager;Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/ProfileHandler;Lcom/localytics/android/ManifestHandler;Lcom/localytics/android/LocationHandler;Lcom/localytics/android/LocalyticsManager$1;)V

    iput-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    .line 133
    invoke-virtual {v2, v3}, Lcom/localytics/android/AnalyticsHandler;->addListener(Lcom/localytics/android/AnalyticsListener;)V

    .line 134
    invoke-virtual {v2, v5}, Lcom/localytics/android/AnalyticsHandler;->addListener(Lcom/localytics/android/AnalyticsListener;)V

    .line 135
    invoke-virtual {v5, v3}, Lcom/localytics/android/ManifestHandler;->addListener(Lcom/localytics/android/ManifestListener;)V

    .line 136
    invoke-virtual {v5, v6}, Lcom/localytics/android/ManifestHandler;->addListener(Lcom/localytics/android/ManifestListener;)V

    .line 137
    invoke-virtual {v6, v2}, Lcom/localytics/android/LocationHandler;->addListener(Lcom/localytics/android/LocationListener;)V

    .line 138
    invoke-virtual {v6, v5}, Lcom/localytics/android/LocationHandler;->addListener(Lcom/localytics/android/LocationListener;)V

    .line 139
    invoke-virtual {v6, v3}, Lcom/localytics/android/LocationHandler;->addListener(Lcom/localytics/android/LocationListener;)V

    goto/16 :goto_5

    .line 122
    .end local v2    # "analyticsHandler":Lcom/localytics/android/AnalyticsHandler;
    .end local v3    # "marketingHandler":Lcom/localytics/android/MarketingHandler;
    .end local v4    # "profileHandler":Lcom/localytics/android/ProfileHandler;
    .end local v5    # "manifestHandler":Lcom/localytics/android/ManifestHandler;
    .end local v6    # "locationHandler":Lcom/localytics/android/LocationHandler;
    :catch_149
    move-exception v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/Throwable;)I
    :try_end_14d
    .catchall {:try_start_ca .. :try_end_14d} :catchall_4d

    goto/16 :goto_ca
.end method

.method public isAppInForeground()Z
    .registers 2

    .prologue
    .line 877
    sget v0, Lcom/localytics/android/LocalyticsManager;->mActivityCounter:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isAutoIntegrate()Z
    .registers 2

    .prologue
    .line 891
    sget-boolean v0, Lcom/localytics/android/LocalyticsManager;->mIsAutoIntegrate:Z

    return v0
.end method

.method public isLocationMonitoringEnabled()Z
    .registers 2

    .prologue
    .line 746
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocationHandler;->isLocationMonitoringEnabled()Z

    move-result v0

    return v0
.end method

.method public isOptedOut()Z
    .registers 2

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->isOptedOut()Z

    move-result v0

    return v0
.end method

.method public isTestModeEnabled()Z
    .registers 2

    .prologue
    .line 629
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isUsingNewCreativeLocation()Z
    .registers 2

    .prologue
    .line 1085
    iget-boolean v0, p0, Lcom/localytics/android/LocalyticsManager;->mUseNewCreativeLocation:Z

    return v0
.end method

.method public openSession()V
    .registers 2

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->openSession()V

    .line 185
    return-void
.end method

.method public priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    .registers 4
    .param p1, "campaign"    # Lcom/localytics/android/InboxCampaign;
    .param p2, "firstDownloadedCallback"    # Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/MarketingHandler;->priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V

    .line 728
    return-void
.end method

.method public refreshInboxCampaigns(Lcom/localytics/android/InboxRefreshListener;)V
    .registers 3
    .param p1, "callback"    # Lcom/localytics/android/InboxRefreshListener;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->canRefreshInbox()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 696
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->setInboxRefreshCallback(Lcom/localytics/android/InboxRefreshListener;)V

    .line 697
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getManifestHandler()Lcom/localytics/android/ManifestHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/ManifestHandler;->refreshManifest()V

    .line 703
    :goto_18
    return-void

    .line 701
    :cond_19
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->getInboxCampaignsAsync(Lcom/localytics/android/InboxRefreshListener;)V

    goto :goto_18
.end method

.method public registerPush(Ljava/lang/String;)V
    .registers 6
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->registerPush(Ljava/lang/String;J)V

    .line 566
    return-void
.end method

.method public registerPush(Ljava/lang/String;J)V
    .registers 6
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->registerPush(Ljava/lang/String;J)V

    .line 571
    return-void
.end method

.method public removeProfileAttributesFromSet(Ljava/lang/String;[J)V
    .registers 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [J

    .prologue
    .line 413
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->removeProfileAttributesFromSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 414
    return-void
.end method

.method public removeProfileAttributesFromSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [J
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->removeProfileAttributesFromSet(Ljava/lang/String;[JLjava/lang/String;)V

    .line 409
    return-void
.end method

.method public removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [Ljava/lang/String;

    .prologue
    .line 423
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 424
    return-void
.end method

.method public removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [Ljava/lang/String;
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;)V
    .registers 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [Ljava/util/Date;

    .prologue
    .line 433
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 434
    return-void
.end method

.method public removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [Ljava/util/Date;
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public retrieveTokenFromInstanceId()V
    .registers 2

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->retrieveTokenFromInstanceId()V

    .line 576
    return-void
.end method

.method public setAnalyticsListener(Lcom/localytics/android/AnalyticsListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/localytics/android/AnalyticsListener;

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->setDeveloperListener(Lcom/localytics/android/AnalyticsListener;)V

    .line 300
    return-void
.end method

.method public setCustomDimension(ILjava/lang/String;)V
    .registers 4
    .param p1, "dimension"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/AnalyticsHandler;->setCustomDimension(ILjava/lang/String;)V

    .line 289
    return-void
.end method

.method setCustomer(Lcom/localytics/android/Customer;)V
    .registers 4
    .param p1, "customer"    # Lcom/localytics/android/Customer;

    .prologue
    .line 468
    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 470
    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocalyticsManager;->setCustomerId(Ljava/lang/String;)V

    .line 472
    :cond_d
    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getFirstName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 474
    const-string/jumbo v0, "first_name"

    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_1d
    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getLastName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 478
    const-string/jumbo v0, "last_name"

    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_2d
    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 482
    const-string/jumbo v0, "full_name"

    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_3d
    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 486
    const-string/jumbo v0, "email"

    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_4d
    return-void
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .registers 3
    .param p1, "customerId"    # Ljava/lang/String;

    .prologue
    .line 787
    const-string/jumbo v0, "customer_id"

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/LocalyticsManager;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/AnalyticsHandler;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public setInAppMessageDismissButtonImage(Landroid/content/res/Resources;I)V
    .registers 10
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    const/4 v6, 0x1

    .line 637
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 638
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 639
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 640
    invoke-static {p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 641
    .local v3, "source":Landroid/graphics/Bitmap;
    if-nez v3, :cond_21

    .line 643
    const-string/jumbo v4, "Cannot load the new dismiss button image. Is the resource id corrected?"

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 644
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/localytics/android/MarketingHandler;->setDismissButtonImage(Landroid/graphics/Bitmap;)V

    .line 660
    :goto_20
    return-void

    .line 649
    :cond_21
    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 650
    .local v0, "maxSide":F
    invoke-direct {p0, v3, v0}, Lcom/localytics/android/LocalyticsManager;->scaleDownBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 653
    .local v1, "newImage":Landroid/graphics/Bitmap;
    if-eq v1, v3, :cond_34

    .line 655
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 659
    :cond_34
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/localytics/android/MarketingHandler;->setDismissButtonImage(Landroid/graphics/Bitmap;)V

    goto :goto_20
.end method

.method public setInAppMessageDismissButtonImage(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 664
    const/4 v1, 0x0

    .line 666
    .local v1, "newImage":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1b

    .line 669
    const/4 v2, 0x1

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 670
    .local v0, "maxSide":F
    invoke-direct {p0, p2, v0}, Lcom/localytics/android/LocalyticsManager;->scaleDownBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 673
    if-ne v1, p2, :cond_1b

    .line 675
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 679
    .end local v0    # "maxSide":F
    :cond_1b
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/localytics/android/MarketingHandler;->setDismissButtonImage(Landroid/graphics/Bitmap;)V

    .line 680
    return-void
.end method

.method public setInAppMessageDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V
    .registers 3
    .param p1, "buttonLocation"    # Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->setInAppDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V

    .line 819
    return-void
.end method

.method public setInAppMessageDisplayActivity(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 510
    if-nez p1, :cond_b

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "attached activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_29

    .line 517
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->setFragmentManager(Landroid/app/FragmentManager;)V

    .line 519
    invoke-virtual {p0}, Lcom/localytics/android/LocalyticsManager;->isTestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 521
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->showMarketingTest()V

    .line 524
    :cond_29
    return-void
.end method

.method public setInboxCampaignRead(JZ)V
    .registers 5
    .param p1, "campaignId"    # J
    .param p3, "read"    # Z

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/localytics/android/MarketingHandler;->setInboxCampaignRead(JZ)V

    .line 708
    return-void
.end method

.method public setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V
    .registers 4
    .param p1, "fragment"    # Ljava/lang/Object;
    .param p2, "displaying"    # Z

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/MarketingHandler;->setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V

    .line 718
    return-void
.end method

.method setIsAutoIntegrate(Z)V
    .registers 2
    .param p1, "autoIntegrate"    # Z

    .prologue
    .line 902
    sput-boolean p1, Lcom/localytics/android/LocalyticsManager;->mIsAutoIntegrate:Z

    .line 903
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->setLocation(Landroid/location/Location;)V

    .line 803
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getManifestHandler()Lcom/localytics/android/ManifestHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/ManifestHandler;->locationUpdated()V

    .line 804
    return-void
.end method

.method public setLocationListener(Lcom/localytics/android/LocationListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/localytics/android/LocationListener;

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/LocationHandler;->setDeveloperListener(Lcom/localytics/android/LocationListener;)V

    .line 774
    return-void
.end method

.method public setLocationMonitoringEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 736
    invoke-static {}, Lcom/localytics/android/PlayServicesUtils;->isLocationAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 738
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "You must include the Play Services Location dependency to use this API."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_f
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/LocationHandler;->setLocationMonitoringEnabled(Z)V

    .line 742
    return-void
.end method

.method public setMessagingListener(Lcom/localytics/android/MessagingListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/localytics/android/MessagingListener;

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->setDeveloperListener(Lcom/localytics/android/MessagingListener;)V

    .line 685
    return-void
.end method

.method public setNotificationsDisabled(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->setNotificationsDisabled(Z)V

    .line 592
    return-void
.end method

.method public setOptedOut(Z)V
    .registers 3
    .param p1, "newOptOut"    # Z

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->setOptedOut(Z)V

    .line 175
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;J)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # J

    .prologue
    .line 323
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 324
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .registers 7
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # J
    .param p4, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p4}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V

    .line 319
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 343
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 344
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;Ljava/util/Date;)V
    .registers 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/util/Date;

    .prologue
    .line 363
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 364
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/util/Date;
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;[J)V
    .registers 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [J

    .prologue
    .line 333
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 334
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [J
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;[JLjava/lang/String;)V

    .line 329
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [Ljava/lang/String;

    .prologue
    .line 353
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 354
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [Ljava/lang/String;
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;)V
    .registers 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [Ljava/util/Date;

    .prologue
    .line 373
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 374
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .registers 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # [Ljava/util/Date;
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .registers 2
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager;->mProxy:Ljava/net/Proxy;

    .line 1074
    return-void
.end method

.method public setPushRegistrationId(Ljava/lang/String;)V
    .registers 3
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->setPushRegistrationId(Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method public setReferrerId(Ljava/lang/String;)V
    .registers 3
    .param p1, "referrerId"    # Ljava/lang/String;

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->setReferrerId(Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "attributeKey":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 495
    sget-object v1, Lcom/localytics/android/Localytics$ProfileScope;->ORGANIZATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, v0, p2, v1}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 501
    :goto_1b
    invoke-virtual {p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void

    .line 499
    :cond_1f
    sget-object v1, Lcom/localytics/android/Localytics$ProfileScope;->ORGANIZATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    goto :goto_1b
.end method

.method public setTestModeEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 617
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 619
    invoke-static {p1}, Lcom/localytics/android/Constants;->setTestModeEnabled(Z)V

    .line 620
    if-eqz p1, :cond_12

    .line 622
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->showMarketingTest()V

    .line 625
    :cond_12
    return-void
.end method

.method public stoppedMonitoringAllGeofences()V
    .registers 2

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocationHandler;->stoppedMonitoringAllGeofences()V

    .line 763
    return-void
.end method

.method public tagAddedToCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .registers 12
    .param p1, "itemName"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "itemPrice"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p5, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHandler;->tagAddedToCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 219
    return-void
.end method

.method public tagCompletedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .registers 5
    .param p1, "totalPrice"    # Ljava/lang/Long;
    .param p2, "itemCount"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->tagCompletedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    .line 229
    return-void
.end method

.method public tagContentRated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .registers 12
    .param p1, "contentName"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "rating"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p5, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHandler;->tagContentRated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 249
    return-void
.end method

.method public tagContentViewed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p1, "contentName"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/localytics/android/AnalyticsHandler;->tagContentViewed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    return-void
.end method

.method public tagCustomerLoggedIn(Lcom/localytics/android/Customer;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p1, "customer"    # Lcom/localytics/android/Customer;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/Customer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_5

    .line 264
    invoke-virtual {p0, p1}, Lcom/localytics/android/LocalyticsManager;->setCustomer(Lcom/localytics/android/Customer;)V

    .line 266
    :cond_5
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->tagLoggedIn(Ljava/lang/String;Ljava/util/Map;)V

    .line 267
    return-void
.end method

.method public tagCustomerLoggedOut(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocalyticsManager;->setCustomerId(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->tagLoggedOut(Ljava/util/Map;)V

    .line 273
    return-void
.end method

.method public tagCustomerRegistered(Lcom/localytics/android/Customer;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p1, "customer"    # Lcom/localytics/android/Customer;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/Customer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_5

    .line 255
    invoke-virtual {p0, p1}, Lcom/localytics/android/LocalyticsManager;->setCustomer(Lcom/localytics/android/Customer;)V

    .line 257
    :cond_5
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->tagRegistered(Ljava/lang/String;Ljava/util/Map;)V

    .line 258
    return-void
.end method

.method public tagEvent(Ljava/lang/String;)V
    .registers 6
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/localytics/android/LocalyticsManager;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 197
    return-void
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/localytics/android/LocalyticsManager;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 203
    return-void
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .registers 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p3, "customerValueIncrease"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 209
    return-void
.end method

.method public tagInvited(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/AnalyticsHandler;->tagInvited(Ljava/lang/String;Ljava/util/Map;)V

    .line 278
    return-void
.end method

.method public tagPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .registers 12
    .param p1, "itemName"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "itemPrice"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p5, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHandler;->tagPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 214
    return-void
.end method

.method public tagPushReceivedEvent(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->tagPushReceivedEvent(Landroid/os/Bundle;)V

    .line 607
    return-void
.end method

.method public tagScreen(Ljava/lang/String;)V
    .registers 3
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->tagScreen(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public tagSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .registers 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "resultCount"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/localytics/android/AnalyticsHandler;->tagSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 239
    return-void
.end method

.method public tagShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .param p1, "contentName"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p5, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHandler;->tagShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 244
    return-void
.end method

.method public tagStartedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .registers 5
    .param p1, "totalPrice"    # Ljava/lang/Long;
    .param p2, "itemCount"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->tagStartedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    .line 224
    return-void
.end method

.method public triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "triggerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/MarketingHandler;->displayInAppMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 534
    return-void
.end method

.method public triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V
    .registers 4
    .param p1, "region"    # Lcom/localytics/android/Region;
    .param p2, "event"    # Lcom/localytics/android/Region$Event;

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/LocationHandler;->triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V

    .line 752
    return-void
.end method

.method public triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .registers 4
    .param p2, "event"    # Lcom/localytics/android/Region$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 756
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/LocationHandler;->triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    .line 757
    return-void
.end method

.method public upload()V
    .registers 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/localytics/android/LocalyticsManager;->mAppKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 162
    invoke-virtual {p0}, Lcom/localytics/android/LocalyticsManager;->getCustomerIdFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 163
    .local v0, "customerIdFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/localytics/android/ProfileHandler;->upload(Ljava/util/concurrent/Future;)V

    .line 164
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/localytics/android/AnalyticsHandler;->upload(Ljava/util/concurrent/Future;)V

    .line 166
    .end local v0    # "customerIdFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :cond_1a
    return-void
.end method

.method public useNewCreativeLocation(Z)V
    .registers 2
    .param p1, "useNewLocation"    # Z

    .prologue
    .line 1079
    iput-boolean p1, p0, Lcom/localytics/android/LocalyticsManager;->mUseNewCreativeLocation:Z

    .line 1080
    return-void
.end method
