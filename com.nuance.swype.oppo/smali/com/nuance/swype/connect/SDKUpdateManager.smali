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
.field public static OUT_OF_SPACE_ERROR:I = 0x0

.field private static final UPDATE_NOTIFICATION_ID:I = 0x2a9cefc3

.field private static UPGRADE_STORAGE_FREE_SPACE_THRESHOLD:I

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
    .line 41
    const/high16 v0, 0x1200000

    sput v0, Lcom/nuance/swype/connect/SDKUpdateManager;->UPGRADE_STORAGE_FREE_SPACE_THRESHOLD:I

    .line 42
    const/16 v0, -0x3e7

    sput v0, Lcom/nuance/swype/connect/SDKUpdateManager;->OUT_OF_SPACE_ERROR:I

    .line 49
    const-string v0, "SDKUpdateManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swype/connect/Connect;)V
    .locals 3
    .param p1, "connect"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    .line 53
    invoke-virtual {p1}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 54
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getUpdateNotificationSent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateNotificationSent:Z

    .line 56
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getUpdateFilePath()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "updatePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 58
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    .line 59
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloaded:Z

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->sendUpgradeAvailableNotification()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swype/connect/Connect;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getUpdateService()Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/swype/connect/SDKUpdateManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager;
    .param p1, "x1"    # Z

    .prologue
    .line 30
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
    .line 539
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

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

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    sget-object v1, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Connect not available"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 205
    const/4 v1, 0x0

    goto :goto_0

    .line 209
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    const-string v2, "PACKAGE_UPDATER_SERVICE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    iput-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_2
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

    if-eq v1, v2, :cond_2

    .line 212
    sget-object v1, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting update service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private sendInstallAvailableNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 478
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "sendInstallAvailableNotification() "

    iget-boolean v6, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    iget-boolean v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloaded:Z

    if-nez v4, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "sendInstallAvailableNotification() "

    const-string v6, " sending..."

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 485
    new-instance v1, Lcom/nuance/android/compat/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 486
    .local v1, "notification":Lcom/nuance/android/compat/NotificationCompat$Builder;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/nuance/swype/input/settings/UpdatesDispatch;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 488
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 494
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 495
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/nuance/swype/input/R$string;->notification_default_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->update_install_title:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 502
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x2a9cefc3

    invoke-virtual {v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 504
    iput-boolean v7, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateNotificationSent:Z

    .line 505
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
    .locals 7

    .prologue
    .line 453
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "sendOutOfSpaceNotification() "

    const-string v6, " sending..."

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 455
    new-instance v1, Lcom/nuance/android/compat/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 456
    .local v1, "notification":Lcom/nuance/android/compat/NotificationCompat$Builder;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/nuance/swype/input/settings/UpdatesDispatch;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 458
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 464
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 465
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/nuance/swype/input/R$string;->notification_default_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->error_out_of_disc_space:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 471
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x2a9cefc3

    invoke-virtual {v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 472
    return-void
.end method

.method private sendSDCardNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 512
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "sendSDCardNotification() "

    const-string v6, " sending..."

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 514
    new-instance v1, Lcom/nuance/android/compat/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 515
    .local v1, "notification":Lcom/nuance/android/compat/NotificationCompat$Builder;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/nuance/swype/input/settings/UpdatesDispatch;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 517
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 523
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 524
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/nuance/swype/input/R$string;->notification_default_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->upgrade_inserted:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 531
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x2a9cefc3

    invoke-virtual {v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 533
    iput-boolean v7, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateNotificationSent:Z

    .line 534
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nuance/swype/input/AppPreferences;->setUpdateNotificationSent(Z)V

    .line 536
    return-void
.end method

.method private sendUpgradeAvailableNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 417
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "sendUpgradeAvailableNotification() "

    iget-boolean v6, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, " "

    iget-boolean v8, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateNotificationSent:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 418
    iget-boolean v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateNotificationSent:Z

    if-eqz v4, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "sendUpgradeAvailableNotification() "

    const-string v6, " sending..."

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    new-instance v1, Lcom/nuance/android/compat/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v1, "notification":Lcom/nuance/android/compat/NotificationCompat$Builder;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/nuance/swype/input/settings/UpdatesDispatch;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 427
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 433
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 434
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/nuance/swype/input/R$string;->update_download_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->notification_language_update:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 441
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x2a9cefc3

    invoke-virtual {v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 443
    iput-boolean v9, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateNotificationSent:Z

    .line 444
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/nuance/swype/input/AppPreferences;->setUpdateNotificationSent(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->cancel()V

    .line 69
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
    .line 72
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getUpdateService()Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->showNoSpaceNotificationIfShortStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z

    .line 79
    new-instance v0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;-><init>(Lcom/nuance/swype/connect/SDKUpdateManager;Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->downloadUpdate(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 404
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
    .locals 19

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->isUpdateDownloaded()Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "fileName":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/download/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "downloadExternalStorage":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_2

    .line 144
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v16

    .line 146
    if-nez v16, :cond_2

    .line 147
    sget-object v16, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Unable to create download directory: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "; Can\'t upgrade this build"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->sendSDCardNotification()V

    goto :goto_0

    .line 154
    :cond_2
    new-instance v14, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v14, "upgradeSDAPK":Ljava/io/File;
    const/4 v6, 0x1

    .line 159
    .local v6, "fileWorked":Z
    const/4 v7, 0x0

    .line 160
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 162
    .local v11, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 165
    .end local v11    # "is":Ljava/io/FileInputStream;
    .local v12, "is":Ljava/io/FileInputStream;
    const/16 v16, 0x400

    :try_start_2
    move/from16 v0, v16

    new-array v1, v0, [B

    .line 166
    .local v1, "buffer":[B
    const/4 v13, 0x0

    .line 167
    .local v13, "len1":I
    :goto_1
    invoke-virtual {v12, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v13

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_3

    .line 168
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v1, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 172
    .end local v1    # "buffer":[B
    .end local v13    # "len1":I
    :catchall_0
    move-exception v16

    move-object v11, v12

    .end local v12    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "is":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 173
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    throw v16
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 179
    :catch_0
    move-exception v3

    .line 176
    .local v3, "ex":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v6, 0x0

    .line 181
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    if-eqz v6, :cond_4

    .line 182
    invoke-virtual {v14}, Ljava/io/File;->deleteOnExit()V

    .line 186
    new-instance v10, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v10, "installIntent":Landroid/content/Intent;
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    .line 188
    .local v15, "uri":Landroid/net/Uri;
    const-string v16, "application/vnd.android.package-archive"

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const/high16 v16, 0x10800000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/nuance/swype/input/IMEApplication;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 172
    .end local v10    # "installIntent":Landroid/content/Intent;
    .end local v11    # "is":Ljava/io/FileInputStream;
    .end local v15    # "uri":Landroid/net/Uri;
    .restart local v1    # "buffer":[B
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "len1":I
    :cond_3
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 173
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v11, v12

    .line 174
    .end local v12    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 177
    .end local v11    # "is":Ljava/io/FileInputStream;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    move-object v11, v12

    .end local v12    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "is":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 178
    .end local v1    # "buffer":[B
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "len1":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .local v9, "iex":Ljava/io/IOException;
    :goto_5
    const/4 v6, 0x0

    goto :goto_4

    .line 193
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "iex":Ljava/io/IOException;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->sendSDCardNotification()V

    .line 194
    sget-object v16, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v17, "Unable to create download file on SDCARD when it was missing, we can\'t upgrade this build"

    invoke-virtual/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 177
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    goto :goto_5

    .line 179
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "buffer":[B
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "len1":I
    :catch_3
    move-exception v3

    move-object v11, v12

    .end local v12    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "is":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 172
    .end local v1    # "buffer":[B
    .end local v13    # "len1":I
    :catchall_1
    move-exception v16

    goto :goto_2

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v16

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getUpdateService()Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    .line 106
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    if-eqz v0, :cond_0

    .line 107
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setUpdateAvailable(Z)V

    .line 109
    iput-boolean v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    .line 110
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->sendUpgradeAvailableNotification()V

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->available:Z

    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->isDownloading()Z

    move-result v0

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
    .line 97
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z

    return v0
.end method

.method public isUpdateDownloaded()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloaded:Z

    return v0
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getUpdateService()Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    .line 118
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    .line 121
    :cond_0
    return-void
.end method

.method public resetOutOfSpace()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z

    return v0
.end method

.method public showNoSpaceNotificationIfShortStorage()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    sget v3, Lcom/nuance/swype/connect/SDKUpdateManager;->UPGRADE_STORAGE_FREE_SPACE_THRESHOLD:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->sendOutOfSpaceNotification()V

    .line 89
    iput-boolean v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z

    .line 93
    :goto_0
    return v1

    .line 92
    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z

    move v1, v2

    .line 93
    goto :goto_0
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getUpdateService()Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    .line 128
    :cond_0
    return-void
.end method

.method public updateDownloadCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadCallback:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->updateCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V

    .line 411
    :cond_0
    return-void
.end method

.method public upgrade()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 227
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "SDKUpdateManager.upgrade()"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

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

    const-string v5, "/download/"

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

    const-string v5, "Cleaning up update file from SD card."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not remove update file from SD card. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

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

    const-string v5, "Cleaning up temp file."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 241
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    sget-object v4, Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not remove update file from sd card. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

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
    iput-object v8, p0, Lcom/nuance/swype/connect/SDKUpdateManager;->updateFile:Ljava/io/File;

    .line 250
    invoke-virtual {v2, v7}, Lcom/nuance/swype/input/AppPreferences;->setUpdateNotificationSent(Z)V

    .line 251
    invoke-virtual {v2, v8}, Lcom/nuance/swype/input/AppPreferences;->setUpdateFilePath(Ljava/lang/String;)V

    .line 252
    return-void
.end method
