.class public Lcom/nuance/swype/connect/SDKUpdateManager;
.super Ljava/lang/Object;
.source "SDKUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;
    }
.end annotation


# static fields
.field public static final OUT_OF_SPACE_ERROR:I = -0x3e7

.field private static final UPDATE_NOTIFICATION_ID:I = 0x2a9cefc3

.field public static final UPGRADE_STORAGE_FREE_SPACE_THRESHOLD:I = 0x1200000

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private available:Z

.field private connect:Lcom/nuance/swype/connect/Connect;

.field private downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

.field private isDownloaded:Z

.field private isOutOfSpace:Z

.field private updateFile:Ljava/io/File;

.field private updateNotificationSent:Z

.field private updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "SDKUpdateManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swype/connect/Connect;)V
    .locals 3
    .param p1, "connect"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    .line 54
    invoke-virtual {p1}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 55
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getUpdateNotificationSent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateNotificationSent:Z

    .line 57
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getUpdateFilePath()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "updatePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 59
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloaded:Z

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->sendUpgradeAvailableNotification()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swype/connect/Connect;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getUpdateService()Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/swype/connect/SDKUpdateManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z

    return p1
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getUpdates()Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getUpdateService()Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;
    .locals 4

    .prologue
    .line 200
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    .line 215
    :goto_0
    return-object v1

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 204
    :cond_1
    sget-object v1, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Connect not available"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 205
    const/4 v1, 0x0

    goto :goto_0

    .line 209
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    const-string/jumbo v2, "PACKAGE_UPDATER_SERVICE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    iput-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x68

    if-eq v1, v2, :cond_3

    .line 212
    sget-object v1, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error getting update service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private sendInstallAvailableNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 482
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "sendInstallAvailableNotification() "

    aput-object v6, v5, v8

    iget-boolean v6, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 483
    iget-boolean v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloaded:Z

    if-nez v4, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "sendInstallAvailableNotification() "

    aput-object v6, v5, v8

    const-string/jumbo v6, " sending..."

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 489
    new-instance v1, Lcom/nuance/android/compat/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 490
    .local v1, "notification":Lcom/nuance/android/compat/NotificationCompat$Builder;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/nuance/swype/input/settings/UpdatesDispatch;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    .line 491
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 492
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-static {v4, v8, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 498
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 499
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/nuance/swype/input/R$string;->notification_default_title:I

    .line 500
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->update_install_title:I

    .line 501
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    .line 502
    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 503
    invoke-virtual {v4, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 504
    invoke-virtual {v4, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 506
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x2a9cefc3

    invoke-virtual {v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 508
    iput-boolean v7, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateNotificationSent:Z

    .line 509
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nuance/swype/input/AppPreferences;->setUpdateNotificationSent(Z)V

    goto/16 :goto_0
.end method

.method private sendOutOfSpaceNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 457
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "sendOutOfSpaceNotification() "

    aput-object v6, v5, v7

    const-string/jumbo v6, " sending..."

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 459
    new-instance v1, Lcom/nuance/android/compat/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 460
    .local v1, "notification":Lcom/nuance/android/compat/NotificationCompat$Builder;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/nuance/swype/input/settings/UpdatesDispatch;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    .line 461
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 462
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-static {v4, v7, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 468
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 469
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/nuance/swype/input/R$string;->notification_default_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->error_out_of_disc_space:I

    .line 470
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    .line 471
    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 472
    invoke-virtual {v4, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 473
    invoke-virtual {v4, v8}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 475
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x2a9cefc3

    invoke-virtual {v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 476
    return-void
.end method

.method private sendSDCardNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 516
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "sendSDCardNotification() "

    aput-object v6, v5, v8

    const-string/jumbo v6, " sending..."

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 518
    new-instance v1, Lcom/nuance/android/compat/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 519
    .local v1, "notification":Lcom/nuance/android/compat/NotificationCompat$Builder;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/nuance/swype/input/settings/UpdatesDispatch;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    .line 520
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 521
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-static {v4, v8, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 527
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 528
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/nuance/swype/input/R$string;->notification_default_title:I

    .line 529
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->upgrade_inserted:I

    .line 530
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    .line 531
    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 532
    invoke-virtual {v4, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 533
    invoke-virtual {v4, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 535
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x2a9cefc3

    invoke-virtual {v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 537
    iput-boolean v7, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateNotificationSent:Z

    .line 538
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nuance/swype/input/AppPreferences;->setUpdateNotificationSent(Z)V

    .line 540
    return-void
.end method

.method private sendUpgradeAvailableNotification()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 421
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "sendUpgradeAvailableNotification() "

    aput-object v6, v5, v9

    iget-boolean v6, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, " "

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-boolean v7, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateNotificationSent:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 422
    iget-boolean v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateNotificationSent:Z

    if-eqz v4, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "sendUpgradeAvailableNotification() "

    aput-object v6, v5, v9

    const-string/jumbo v6, " sending..."

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 428
    new-instance v1, Lcom/nuance/android/compat/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 429
    .local v1, "notification":Lcom/nuance/android/compat/NotificationCompat$Builder;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/nuance/swype/input/settings/UpdatesDispatch;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    .line 430
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-static {v4, v9, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 437
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 438
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/nuance/swype/input/R$string;->update_download_title:I

    .line 439
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->notification_language_update:I

    .line 440
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    .line 441
    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 442
    invoke-virtual {v4, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 443
    invoke-virtual {v4, v8}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 445
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x2a9cefc3

    invoke-virtual {v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 447
    iput-boolean v8, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateNotificationSent:Z

    .line 448
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 449
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    .line 450
    invoke-virtual {v4, v8}, Lcom/nuance/swype/input/AppPreferences;->setUpdateNotificationSent(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->cancel()V

    .line 70
    :cond_0
    return-void
.end method

.method public downloadComplete(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloaded:Z

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    .line 258
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setUpdateFilePath(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->sendInstallAvailableNotification()V

    .line 260
    return-void
.end method

.method public downloadUpdate(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getUpdateService()Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    .line 74
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->showNoSpaceNotificationIfShortStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z

    .line 80
    new-instance v0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;-><init>(Lcom/nuance/swype/connect/SDKUpdateManager;Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->downloadUpdate(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->getProgress()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public installUpdate()V
    .locals 17

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->isUpdateDownloaded()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    if-nez v14, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "fileName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/download/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "downloadExternalStorage":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 145
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v14

    .line 147
    if-nez v14, :cond_2

    .line 148
    sget-object v14, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Unable to create download directory: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "; Can\'t upgrade this build"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 150
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->sendSDCardNotification()V

    goto :goto_0

    .line 155
    :cond_2
    new-instance v12, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v12, "upgradeSDAPK":Ljava/io/File;
    const/4 v5, 0x1

    .line 160
    .local v5, "fileWorked":Z
    const/4 v6, 0x0

    .line 161
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 163
    .local v9, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 166
    .end local v9    # "is":Ljava/io/FileInputStream;
    .local v10, "is":Ljava/io/FileInputStream;
    const/16 v14, 0x400

    :try_start_2
    new-array v1, v14, [B

    .line 168
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v10, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    .local v11, "len1":I
    const/4 v14, -0x1

    if-eq v11, v14, :cond_5

    .line 169
    const/4 v14, 0x0

    invoke-virtual {v7, v1, v14, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 173
    .end local v1    # "buffer":[B
    .end local v11    # "len1":I
    :catchall_0
    move-exception v14

    move-object v9, v10

    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 174
    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw v14
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 177
    :catch_0
    move-exception v14

    :goto_3
    const/4 v5, 0x0

    .line 182
    :goto_4
    if-eqz v5, :cond_6

    .line 183
    invoke-virtual {v12}, Ljava/io/File;->deleteOnExit()V

    .line 187
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v14, "android.intent.action.VIEW"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v8, "installIntent":Landroid/content/Intent;
    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 189
    .local v13, "uri":Landroid/net/Uri;
    const-string/jumbo v14, "application/vnd.android.package-archive"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const/high16 v14, 0x10800000

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v14}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/nuance/swype/input/IMEApplication;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 173
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "installIntent":Landroid/content/Intent;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .end local v13    # "uri":Landroid/net/Uri;
    .restart local v1    # "buffer":[B
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "len1":I
    :cond_5
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 174
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v9, v10

    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 179
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v14

    move-object v9, v10

    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v1    # "buffer":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "len1":I
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_5
    const/4 v5, 0x0

    goto :goto_4

    .line 194
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->sendSDCardNotification()V

    .line 195
    sget-object v14, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v15, "Unable to create download file on SDCARD when it was missing, we can\'t upgrade this build"

    invoke-interface {v14, v15}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 179
    :catch_2
    move-exception v14

    goto :goto_5

    .line 177
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "buffer":[B
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "len1":I
    :catch_3
    move-exception v14

    move-object v9, v10

    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 173
    .end local v1    # "buffer":[B
    .end local v11    # "len1":I
    :catchall_1
    move-exception v14

    goto :goto_2

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v14

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getUpdateService()Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    if-eqz v0, :cond_0

    .line 108
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setUpdateAvailable(Z)V

    .line 110
    iput-boolean v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    .line 111
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->sendUpgradeAvailableNotification()V

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLegalAccepted()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutOfSpace()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z

    return v0
.end method

.method public isUpdateDownloaded()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloaded:Z

    return v0
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getUpdateService()Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    .line 122
    :cond_0
    return-void
.end method

.method public resetOutOfSpace()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z

    return v0
.end method

.method public showNoSpaceNotificationIfShortStorage()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x1200000

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->sendOutOfSpaceNotification()V

    .line 90
    iput-boolean v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z

    .line 94
    :goto_0
    return v1

    .line 93
    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z

    move v1, v2

    .line 94
    goto :goto_0
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getUpdateService()Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    .line 126
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    .line 129
    :cond_0
    return-void
.end method

.method public updateDownloadCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->updateCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V

    .line 415
    :cond_0
    return-void
.end method

.method public upgrade()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 227
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "SDKUpdateManager.upgrade()"

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 229
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    if-eqz v4, :cond_1

    .line 230
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/download/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "downloadExternalStorage":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v3, "sdFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "Cleaning up update file from SD card."

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Could not remove update file from SD card. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 239
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "Cleaning up temp file."

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 241
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Could not remove update file from sd card. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 246
    .end local v0    # "downloadExternalStorage":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "sdFile":Ljava/io/File;
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    .line 247
    .local v2, "prefs":Lcom/nuance/swype/input/AppPreferences;
    iput-boolean v7, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloaded:Z

    .line 248
    iput-boolean v7, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    .line 249
    iput-object v9, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    .line 250
    invoke-virtual {v2, v7}, Lcom/nuance/swype/input/AppPreferences;->setUpdateNotificationSent(Z)V

    .line 251
    invoke-virtual {v2, v9}, Lcom/nuance/swype/input/AppPreferences;->setUpdateFilePath(Ljava/lang/String;)V

    .line 252
    return-void
.end method
