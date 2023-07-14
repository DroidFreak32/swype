.class public final Lcom/nuance/swype/inapp/CatalogManager;
.super Ljava/lang/Object;
.source "CatalogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;,
        Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;,
        Lcom/nuance/swype/inapp/CatalogManager$PriceMap;,
        Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor;,
        Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field public static final mSerialExecutor:Ljava/util/concurrent/Executor;

.field private static final worker:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

.field private catalogChangedTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public connection:Lcom/nuance/swype/connect/ConnectedStatus;

.field private downloadLocation:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

.field private isPurchaseInfoFetched:Z

.field public mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/input/settings/SettingsV11;",
            ">;"
        }
    .end annotation
.end field

.field mCatalogServiceCallback:Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

.field public mContext:Landroid/content/Context;

.field public mInstalledList:Lcom/nuance/swype/inapp/InstalledList;

.field public mServiceEnabled:Z

.field public purchasedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private skuChangedTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    const-string/jumbo v0, "CatalogManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 142
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/inapp/CatalogManager;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    .line 147
    new-instance v0, Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor;-><init>(B)V

    sput-object v0, Lcom/nuance/swype/inapp/CatalogManager;->mSerialExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->catalogChangedTask:Landroid/os/AsyncTask;

    .line 145
    iput-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->skuChangedTask:Landroid/os/AsyncTask;

    .line 181
    new-instance v0, Lcom/nuance/swype/inapp/CatalogManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/inapp/CatalogManager$1;-><init>(Lcom/nuance/swype/inapp/CatalogManager;)V

    iput-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mCatalogServiceCallback:Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

    .line 570
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    .line 571
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->skuChangedTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/nuance/swype/inapp/CatalogManager;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager;->skuChangedTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1100$233151b0(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # Ljava/util/List;

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/nuance/swype/inapp/CatalogManager;->logItems(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200$15392457(Lcom/nuance/swype/inapp/CatalogManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;
    .param p1, "x2"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/nuance/swype/inapp/CatalogManager;->installPath$7157d249(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/InstalledList;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mInstalledList:Lcom/nuance/swype/inapp/InstalledList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->downloadLocation:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    return-object v0
.end method

.method static synthetic access$1500$6a1fb329(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V
    .locals 0
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;
    .param p2, "x3"    # Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    .prologue
    .line 109
    .line 34053
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/usagedata/UsageData;->recordDownloadEvent(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V

    .line 109
    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->catalogChangedTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/inapp/CatalogManager;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager;->catalogChangedTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nuance/swype/inapp/CatalogManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/nuance/swype/inapp/CatalogManager;->updateThemesListFromConnect(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/input/settings/SettingsV11;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 109
    .line 30481
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 30482
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SettingsV11;

    :goto_0
    return-object v0

    .line 30484
    :cond_0
    const/4 v0, 0x0

    .line 109
    goto :goto_0
.end method

.method static synthetic access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/inapp/CatalogManager;Ljava/util/List;)Z
    .locals 7
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 109
    .line 31479
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "Checking if theme updates are available"

    aput-object v4, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 31522
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 31523
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;

    .line 31524
    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getSKU()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31535
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->readLastCheckedSkuList()Ljava/util/Set;

    move-result-object v0

    .line 31541
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 31542
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 31543
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 31546
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    .line 31485
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->isPurchaseInfoFetched:Z

    if-eqz v0, :cond_1

    .line 31486
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31554
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/UserPreferences;->setLastCheckedSkuList(Ljava/util/Set;)V

    .line 31487
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32603
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/AppPreferences;->setNewThemeAvailableInStore(Z)V

    .line 32419
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/nuance/swype/input/R$string;->notification_default_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32420
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->checkout_new_themes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 32423
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    .line 32424
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 32425
    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 32426
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 32427
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel$7abcb88d()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 32430
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    const-class v6, Lcom/nuance/swype/input/settings/SettingsDispatch;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32431
    const-string/jumbo v5, "fromNotification"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32432
    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v2, v3, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 33230
    iput-object v0, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 32436
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 32437
    const v2, 0x461ea

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 109
    :cond_1
    return v1

    :cond_2
    move v1, v3

    .line 31546
    goto/16 :goto_1
.end method

.method static synthetic access$700(Lcom/nuance/swype/inapp/CatalogManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->isPurchaseInfoFetched:Z

    return v0
.end method

.method static synthetic access$702$5c4c8ca3(Lcom/nuance/swype/inapp/CatalogManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->isPurchaseInfoFetched:Z

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/inapp/CatalogManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/nuance/swype/inapp/CatalogManager;->fetchPurchaseInfoFromGoogleStore()V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/inapp/CatalogManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->purchasedMap:Ljava/util/Map;

    return-object v0
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 13
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/16 v11, 0x5000

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1100
    sget-object v6, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v10, [Ljava/lang/Object;

    const-string/jumbo v8, "copyFile..."

    aput-object v8, v7, v9

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1101
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1102
    .local v4, "ins":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1103
    .local v0, "bis":Ljava/io/BufferedInputStream;
    sget-object v6, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "copyFile...bis: "

    aput-object v8, v7, v9

    aput-object v0, v7, v10

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1104
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1105
    .local v5, "os":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1106
    .local v1, "bos":Ljava/io/OutputStream;
    sget-object v6, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "copyFile...bos: "

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1107
    new-array v3, v11, [B

    .line 1108
    .local v3, "fileDataBuffer":[B
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 1109
    invoke-virtual {v1, v3, v9, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1111
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1112
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1114
    return-void
.end method

.method private static deleteFile(Ljava/lang/String;)Z
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1136
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Deleting file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1137
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private fetchPurchaseInfoFromGoogleStore()V
    .locals 2

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->isPurchaseInfoFetched:Z

    if-nez v0, :cond_0

    .line 442
    invoke-static {}, Lcom/nuance/swype/measure/UsecaseStopwatch;->getInstance()Lcom/nuance/swype/measure/UsecaseStopwatch;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/measure/Usecases;->ENABLE_CATALOG_SERVICE:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/measure/UsecaseStopwatch;->stop(Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;)V

    .line 443
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->setUpService()V

    .line 444
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ThemeManager;->refetchPurchaseInfoFromGoogleStore(Landroid/content/Context;)V

    .line 446
    :cond_0
    return-void
.end method

.method private static fileExists(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1158
    const/4 v1, 0x0

    .line 1161
    .local v1, "isThere":Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1167
    :goto_0
    return v1

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v3, "Security exception in file.exists()"

    invoke-interface {v2, v3, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private installPath$7157d249(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 1117
    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/IMEApplication;->getNewThemeApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, "installPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->fileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17147
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17148
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1123
    :cond_0
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "install path: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1125
    return-object v1
.end method

.method private static logItems(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 563
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 564
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;

    .line 565
    .local v0, "item":Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "\t"

    aput-object v4, v3, v6

    const-string/jumbo v4, "Added: "

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, " sku: "

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getSKU()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "...category list: "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getCategoryList()Ljava/util/List;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 567
    .end local v0    # "item":Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;
    :cond_0
    return-void
.end method

.method public static logSkus$7dc49990()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 743
    return-void
.end method

.method private declared-synchronized updateThemesListFromConnect(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;>;"
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 2510
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v9

    .line 2511
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v10

    .line 2512
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;

    .line 2514
    invoke-interface {v5}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getCategoryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2515
    invoke-interface {v5}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v1

    sget-object v3, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    if-ne v1, v3, :cond_6

    instance-of v1, v5, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemBundle;

    if-eqz v1, :cond_6

    .line 2516
    move-object v0, v5

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemBundle;

    move-object v1, v0

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemBundle;->getBundledCatalogItemList()Ljava/util/List;

    move-result-object v4

    .line 2518
    invoke-interface {v10, v2}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2519
    if-nez v6, :cond_2

    .line 2520
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Localized category name not found"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :catch_0
    move-exception v1

    :try_start_1
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Offline Themes update failed"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 2522
    :cond_2
    :try_start_2
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "add seed to cache, category key:"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-interface {v1, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2523
    new-instance v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/nuance/swype/util/storage/ThemeItemSeed;-><init>(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;Ljava/util/List;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;Ljava/lang/String;)V

    .line 2524
    invoke-virtual {v9}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 3023
    invoke-static {v1}, Lcom/nuance/swype/util/storage/ThemeData;->syncToCache(Lcom/nuance/swype/util/storage/ThemeItemSeed;)Z

    .line 3206
    iget-boolean v1, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 2526
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;

    .line 2527
    invoke-interface {v7}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getCategoryList()Ljava/util/List;

    move-result-object v3

    .line 2529
    if-eqz v3, :cond_3

    .line 2531
    const-string/jumbo v8, "no_category_id_DLT"

    .line 2532
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2533
    invoke-interface {v10, v2}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2536
    :cond_4
    new-instance v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;

    const/4 v6, 0x0

    move-object v4, v2

    invoke-direct/range {v3 .. v8}, Lcom/nuance/swype/util/storage/ThemeItemSeed;-><init>(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;Ljava/util/List;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;Ljava/lang/String;)V

    .line 2537
    if-eqz v1, :cond_5

    .line 2540
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->purchasedMap:Ljava/util/Map;

    if-eqz v4, :cond_5

    .line 2541
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->purchasedMap:Ljava/util/Map;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2542
    :try_start_3
    iget-object v6, p0, Lcom/nuance/swype/inapp/CatalogManager;->purchasedMap:Ljava/util/Map;

    .line 4162
    iget-object v7, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 2542
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v6, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2543
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2546
    :cond_5
    :try_start_4
    sget-object v4, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v14, "in bundle, theme sku:"

    aput-object v14, v6, v7

    const/4 v7, 0x1

    .line 5162
    iget-object v14, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 2546
    aput-object v14, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v14, " purchased:"

    aput-object v14, v6, v7

    const/4 v7, 0x3

    .line 5206
    iget-boolean v14, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 2546
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v14, " category:"

    aput-object v14, v6, v7

    const/4 v7, 0x5

    aput-object v8, v6, v7

    invoke-interface {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2547
    invoke-virtual {v9}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 6023
    invoke-static {v3}, Lcom/nuance/swype/util/storage/ThemeData;->syncToCache(Lcom/nuance/swype/util/storage/ThemeItemSeed;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 464
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2543
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .line 2551
    :cond_6
    invoke-interface {v10, v2}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2552
    new-instance v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/nuance/swype/util/storage/ThemeItemSeed;-><init>(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;Ljava/util/List;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;Ljava/lang/String;)V

    .line 2553
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "not in bundle, theme sku:"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    .line 6162
    iget-object v7, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 2553
    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string/jumbo v7, " purchased:"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    .line 6206
    iget-boolean v7, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 2553
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string/jumbo v7, " categroy:"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    aput-object v2, v4, v6

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2554
    invoke-virtual {v9}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 7023
    invoke-static {v1}, Lcom/nuance/swype/util/storage/ThemeData;->syncToCache(Lcom/nuance/swype/util/storage/ThemeItemSeed;)Z

    .line 2557
    :cond_7
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v6, "add seed to cache, category label:"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    const-string/jumbo v4, " sku:"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    invoke-interface {v5}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getSKU()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-interface {v1, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 468
    :cond_8
    const-string/jumbo v1, "Items added"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/nuance/swype/inapp/CatalogManager;->logItems(Ljava/lang/String;Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public final addWordListFromApk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "apkFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1172
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Adding word list from apk for sku: "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " file: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1173
    new-instance v0, Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;

    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1176
    return-void
.end method

.method public final cancelDownloadTheme(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "sku"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 807
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "cancelDownloadTheme...theme: "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 808
    move v1, p1

    .line 809
    .local v1, "themeViewIndex":I
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v6

    .line 810
    .local v6, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v6, :cond_0

    .line 811
    invoke-virtual {v6, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    .line 812
    invoke-virtual {v6, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    .line 813
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALL_CANCELED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    invoke-virtual {v0, p3, v2}, Lcom/nuance/swype/input/ThemeManager;->updateThemeStatus(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    const/4 v2, 0x0

    .line 13120
    iget-object v3, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 816
    sget-object v5, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALL_CANCELED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;->onCatalogItemStatusChanged(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 819
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->cancelDownloadCatalogItem(Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method public final downloadTheme(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "theme"    # Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 863
    invoke-virtual {p2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v4

    .line 864
    .local v4, "sku":Ljava/lang/String;
    move-object v2, p2

    .line 865
    .local v2, "downloadingTheme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    move v1, p1

    .line 866
    .local v1, "themeViewIndex":I
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->showNoSpaceNotificationIfShortStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->downloadLocation:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    sget-object v3, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->NO_SPACE:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    .line 16053
    invoke-static {v4, v0, v3}, Lcom/nuance/swype/usagedata/UsageData;->recordDownloadEvent(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V

    .line 1049
    :goto_0
    return-void

    .line 870
    :cond_0
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "Downloading theme with sku: "

    aput-object v5, v3, v7

    aput-object v4, v3, v8

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 872
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v0

    .line 16120
    iget-object v0, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 872
    invoke-virtual {p0, v0, v4}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v6

    .line 873
    .local v6, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v6, :cond_1

    .line 874
    invoke-virtual {v6, v8}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    .line 16239
    iput v7, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->installingPercentage:I

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    .line 878
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 17031
    invoke-static {v4, v0}, Lcom/nuance/swype/util/storage/ThemeData;->update(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)Z

    .line 880
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    if-eqz v0, :cond_2

    .line 881
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    .line 17120
    iget-object v3, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 882
    sget-object v5, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 881
    invoke-interface/range {v0 .. v5}, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;->onCatalogItemStatusChanged(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 885
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v0

    new-instance v3, Lcom/nuance/swype/inapp/CatalogManager$4;

    invoke-direct {v3, p0, v4, v2, v1}, Lcom/nuance/swype/inapp/CatalogManager$4;-><init>(Lcom/nuance/swype/inapp/CatalogManager;Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;I)V

    invoke-interface {v0, v4, v3}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->downloadCatalogItem(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;)V

    goto :goto_0
.end method

.method public final getAllSKUs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1448
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Getting all SKUs"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 28657
    iget-boolean v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mServiceEnabled:Z

    .line 1449
    if-nez v0, :cond_0

    .line 1450
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Service not enabled"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1451
    const/4 v0, 0x0

    .line 1455
    :goto_0
    return-object v0

    .line 1453
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getSKUList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v0

    return-object v0
.end method

.method public final getSKUforPurchase()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1437
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Getting SKUs for purchase"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 27657
    iget-boolean v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mServiceEnabled:Z

    .line 1438
    if-nez v0, :cond_0

    .line 1439
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Service not enabled"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1440
    const/4 v0, 0x0

    .line 1444
    :goto_0
    return-object v0

    .line 1442
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getSKUListForPurchase()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;

    .prologue
    .line 1390
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 23051
    invoke-static {p2, p1}, Lcom/nuance/swype/util/storage/ThemeData;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v0

    .line 1391
    .local v0, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-nez v0, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 24051
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/nuance/swype/util/storage/ThemeData;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v0

    .line 1395
    :cond_0
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "getThemeSeed...sku: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " category key:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1396
    return-object v0
.end method

.method public final getThemesForCategory(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "categoryKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1367
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    .local v5, "themesList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;"
    iget-object v6, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 18043
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->getCache()Ljava/util/HashMap;

    move-result-object v0

    .line 1370
    .local v0, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1371
    .local v1, "categoryId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1374
    .end local v1    # "categoryId":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1375
    .local v4, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 1376
    .local v2, "item":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    sget-object v7, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "item categoryKey label:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 18170
    iget-object v10, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeCategoryLabel:Ljava/lang/String;

    .line 1376
    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " item sku:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 19162
    iget-object v10, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 1376
    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 20120
    iget-object v7, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 1377
    if-eqz v7, :cond_1

    .line 21120
    iget-object v7, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 1377
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1379
    new-instance v3, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-direct {v3, v2, p1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;-><init>(Lcom/nuance/swype/util/storage/ThemeItemSeed;Ljava/lang/String;)V

    .line 1381
    .local v3, "theme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    sget-object v7, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "theme categoryKey label:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v10

    .line 21170
    iget-object v10, v10, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeCategoryLabel:Ljava/lang/String;

    .line 1381
    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " theme sku:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, " theme name:"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 1382
    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v10

    .line 22146
    iget-object v10, v10, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeName:Ljava/lang/String;

    .line 1382
    aput-object v10, v8, v9

    .line 1381
    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1383
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1386
    .end local v2    # "item":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    .end local v3    # "theme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    :cond_2
    return-object v4
.end method

.method public final hasStoredSkuList()Z
    .locals 3

    .prologue
    .line 1565
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getLastCheckedSkuList(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1566
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final installDownloadedFile$14e1ec69(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "sourceFile"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1057
    invoke-direct {p0, p1}, Lcom/nuance/swype/inapp/CatalogManager;->installPath$7157d249(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1058
    .local v2, "finalFileName":Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/inapp/CatalogManager;->fileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1059
    invoke-static {v2}, Lcom/nuance/swype/inapp/CatalogManager;->deleteFile(Ljava/lang/String;)Z

    .line 1062
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v3, "source":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1064
    .local v0, "destination":Ljava/io/File;
    sget-object v6, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "installDownloadedFile...copy "

    aput-object v8, v7, v5

    aput-object p2, v7, v4

    const/4 v8, 0x2

    const-string/jumbo v9, "  to destination: "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1066
    :try_start_0
    invoke-static {v3, v0}, Lcom/nuance/swype/inapp/CatalogManager;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    sget-object v6, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v4, [Ljava/lang/Object;

    const-string/jumbo v8, "installDownloadedFile...succeed."

    aput-object v8, v7, v5

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1072
    :goto_0
    return v4

    .line 1067
    :catch_0
    move-exception v1

    .line 1068
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v6, "installDownloadedFile...fail...e: "

    invoke-interface {v4, v6, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move v4, v5

    .line 1069
    goto :goto_0
.end method

.method public final readLastCheckedSkuList()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/UserPreferences;->getLastCheckedSkuList(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final refetchPurchaseInfoFromGoolgeStore()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->isPurchaseInfoFetched:Z

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->purchasedMap:Ljava/util/Map;

    .line 451
    invoke-direct {p0}, Lcom/nuance/swype/inapp/CatalogManager;->fetchPurchaseInfoFromGoogleStore()V

    .line 452
    return-void
.end method

.method public final refreshOfflineCatalogItemsWhenNetworkOff()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->setUpService()V

    .line 393
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 396
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "Cannot retrieve ACCatalogService"

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 414
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCatalogItems()Ljava/util/List;

    move-result-object v2

    .line 401
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;>;"
    if-eqz v2, :cond_1

    .line 402
    invoke-direct {p0, v2}, Lcom/nuance/swype/inapp/CatalogManager;->updateThemesListFromConnect(Ljava/util/List;)V

    .line 403
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "refreshOfflineCatalogItemsWhenNetworkOff New catalog item list size is: "

    aput-object v5, v4, v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCatalogItemCategories()Ljava/util/List;

    move-result-object v0

    .line 407
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 408
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "categories:"

    aput-object v5, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const-string/jumbo v5, ":"

    aput-object v5, v4, v9

    const/4 v5, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 410
    :cond_2
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "refreshOfflineCatalogItemsWhenNetworkOff refreshOfflineCatalogItemsWhenNetworkOff"

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 412
    iget-object v3, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v3

    .line 413
    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager;->addConnectedThemesToMap()Z

    goto :goto_0
.end method

.method public final sendPurchaseInfoToConnect(Lcom/nuance/swype/inapp/CatalogManager$PriceMap;)V
    .locals 7
    .param p1, "priceMap"    # Lcom/nuance/swype/inapp/CatalogManager$PriceMap;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 761
    .line 8789
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->getInstance(Landroid/content/Context;)Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    move-result-object v0

    .line 9277
    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->mPriceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10204
    iget-object v2, p1, Lcom/nuance/swype/inapp/CatalogManager$PriceMap;->mPriceMap:Ljava/util/Map;

    .line 9277
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 9278
    const-string/jumbo v1, "new price map is: "

    iget-object v2, v0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->mPriceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->logMessage(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 9280
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper$2;

    invoke-direct {v2, v0}, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper$2;-><init>(Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9287
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 8771
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v0

    .line 8772
    if-eqz v0, :cond_2

    .line 11204
    iget-object v1, p1, Lcom/nuance/swype/inapp/CatalogManager$PriceMap;->mPriceMap:Ljava/util/Map;

    .line 11208
    iget-object v2, p1, Lcom/nuance/swype/inapp/CatalogManager$PriceMap;->mPurchasedMap:Ljava/util/Map;

    .line 8774
    iput-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager;->purchasedMap:Ljava/util/Map;

    .line 8775
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8776
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Sending price list to Connect: "

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 8777
    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->setCatalogItemPrices(Ljava/util/Map;)V

    .line 8780
    iput-boolean v6, p0, Lcom/nuance/swype/inapp/CatalogManager;->isPurchaseInfoFetched:Z

    .line 762
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/CatalogManager$PriceMap;->getPurchasedList()Ljava/util/ArrayList;

    move-result-object v0

    .line 12657
    iget-boolean v1, p0, Lcom/nuance/swype/inapp/CatalogManager;->mServiceEnabled:Z

    .line 11793
    if-eqz v1, :cond_1

    .line 11795
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v1

    .line 11796
    if-eqz v1, :cond_1

    .line 11797
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 11798
    invoke-interface {v1, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->setPurchasedSKUList(Ljava/util/List;)V

    :cond_1
    :goto_1
    return-void

    .line 8784
    :cond_2
    iput-boolean v5, p0, Lcom/nuance/swype/inapp/CatalogManager;->isPurchaseInfoFetched:Z

    goto :goto_0

    .line 11800
    :cond_3
    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->resetPurchasedSKU()V

    goto :goto_1
.end method

.method public final setCatalogCallBackListener(Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;)V
    .locals 4
    .param p1, "listener"    # Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    .param p2, "location"    # Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    .prologue
    .line 488
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setCatalogCallBackListener...listener: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 489
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    .line 490
    iput-object p2, p0, Lcom/nuance/swype/inapp/CatalogManager;->downloadLocation:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    .line 491
    return-void
.end method

.method public final setPurchased(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1404
    .line 24657
    iget-boolean v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->mServiceEnabled:Z

    .line 1404
    if-eqz v4, :cond_2

    .line 1405
    sget-object v4, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Notifying connect of purchase for sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1406
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v0

    .line 1407
    .local v0, "oldSeed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v4

    .line 1408
    invoke-interface {v4, p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->setPurchasedSKU(Ljava/lang/String;)V

    .line 25202
    iput-boolean v7, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 1410
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 26035
    invoke-static {v0}, Lcom/nuance/swype/util/storage/ThemeData;->update(Lcom/nuance/swype/util/storage/ThemeItemSeed;)Z

    .line 1412
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->purchasedMap:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 1413
    iget-object v5, p0, Lcom/nuance/swype/inapp/CatalogManager;->purchasedMap:Ljava/util/Map;

    monitor-enter v5

    .line 1414
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1415
    .local v2, "purchasedSkuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26100
    iget-object v4, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->skuList:Ljava/util/List;

    .line 1418
    if-eqz v4, :cond_0

    .line 27100
    iget-object v4, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->skuList:Ljava/util/List;

    .line 1419
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1420
    .local v3, "s":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1427
    .end local v2    # "purchasedSkuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1424
    .restart local v2    # "purchasedSkuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1425
    .local v1, "purchasedSku":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/inapp/CatalogManager;->purchasedMap:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1427
    .end local v1    # "purchasedSku":Ljava/lang/String;
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1430
    .end local v0    # "oldSeed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    .end local v2    # "purchasedSkuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public final setUpService()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 665
    .line 7657
    iget-boolean v1, p0, Lcom/nuance/swype/inapp/CatalogManager;->mServiceEnabled:Z

    .line 665
    if-nez v1, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v0

    .line 667
    .local v0, "catalogService":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    if-eqz v0, :cond_1

    .line 668
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Registering for Catalog service callback"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 670
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager;->mCatalogServiceCallback:Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;)V

    .line 7727
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->enableCatalog()V

    .line 7728
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Service enabled"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 7729
    iput-boolean v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->mServiceEnabled:Z

    .line 677
    .end local v0    # "catalogService":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    :cond_0
    :goto_0
    return-void

    .line 674
    .restart local v0    # "catalogService":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    :cond_1
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Catalog service cannot be registered."

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final showNoSpaceNotificationIfShortStorage()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1570
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "showNoSpaceNotificationIfShortStorage...free space: "

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1571
    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x1200000

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 29582
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "sendOutOfSpaceNotification() "

    aput-object v4, v3, v0

    const-string/jumbo v4, " sending..."

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 29584
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 29585
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/nuance/swype/input/settings/SettingsDispatch;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29586
    const-string/jumbo v4, "fromNotification"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29587
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v0, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 29590
    iget-object v3, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 29591
    sget v4, Lcom/nuance/swype/input/R$string;->notification_default_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->error_out_of_disc_space:I

    .line 29592
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    .line 29593
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 30230
    iput-object v0, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 29595
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel$7abcb88d()Landroid/support/v4/app/NotificationCompat$Builder;

    .line 29596
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 29597
    if-eqz v0, :cond_0

    .line 29598
    const v3, 0x461eb

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    move v0, v1

    .line 1575
    :cond_1
    return v0
.end method

.method public final triggerShowingFreeCategories()V
    .locals 2

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->setUpService()V

    .line 682
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v0

    .line 683
    .local v0, "service":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    if-eqz v0, :cond_0

    .line 684
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    .line 685
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager;->hasPricedThemes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->resetThemeManagedData()V

    .line 688
    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->resetCatalogItemPrice()V

    .line 690
    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->resetPurchasedSKU()V

    .line 693
    :cond_0
    return-void
.end method

.method public final triggerShowingThemesWithoutPrices()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 696
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->setUpService()V

    .line 697
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v3

    .line 698
    .local v3, "service":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    if-eqz v3, :cond_3

    .line 699
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v4

    .line 700
    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager;->hasPricedThemes()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->resetThemeManagedData()V

    .line 703
    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->resetCatalogItemPrice()V

    .line 704
    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->resetPurchasedSKU()V

    .line 707
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 708
    .local v0, "allSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/CatalogManager;->getSKUforPurchase()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 709
    new-instance v2, Lcom/nuance/swype/inapp/CatalogManager$PriceMap;

    invoke-direct {v2}, Lcom/nuance/swype/inapp/CatalogManager$PriceMap;-><init>()V

    .line 710
    .local v2, "priceMap":Lcom/nuance/swype/inapp/CatalogManager$PriceMap;
    sget-object v4, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "triggerShowingThemesWithoutPrice... allSkus.size:"

    aput-object v7, v5, v6

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 711
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 713
    .local v1, "id":Ljava/lang/String;
    const-string/jumbo v5, "  "

    invoke-virtual {v2, v1, v5}, Lcom/nuance/swype/inapp/CatalogManager$PriceMap;->addSkuWithPrice(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8204
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    iget-object v4, v2, Lcom/nuance/swype/inapp/CatalogManager$PriceMap;->mPriceMap:Ljava/util/Map;

    .line 715
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 716
    invoke-virtual {p0, v2}, Lcom/nuance/swype/inapp/CatalogManager;->sendPurchaseInfoToConnect(Lcom/nuance/swype/inapp/CatalogManager$PriceMap;)V

    .line 718
    :cond_2
    iput-boolean v8, p0, Lcom/nuance/swype/inapp/CatalogManager;->isPurchaseInfoFetched:Z

    .line 720
    .end local v0    # "allSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "priceMap":Lcom/nuance/swype/inapp/CatalogManager$PriceMap;
    :cond_3
    return-void
.end method

.method public final uninstallTheme(ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "themeViewIndex"    # I
    .param p2, "categoryKey"    # Ljava/lang/String;
    .param p3, "sku"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 827
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "uninstallTheme...theme: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v15

    .line 830
    .local v15, "themeManager":Lcom/nuance/swype/input/ThemeManager;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v9

    .line 831
    .local v9, "catalogService":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->uninstallCatalogItem(Ljava/lang/String;)V

    .line 14076
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nuance/swype/inapp/CatalogManager;->installPath$7157d249(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14077
    sget-object v4, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "uninstallDownloadedFile...delete themefile: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 14078
    invoke-static {v3}, Lcom/nuance/swype/inapp/CatalogManager;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14079
    invoke-static {v3}, Lcom/nuance/swype/inapp/CatalogManager;->deleteFile(Ljava/lang/String;)Z

    .line 14080
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 14094
    sget-object v5, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Deleting theme background files in: "

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 14095
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "background.png"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/inapp/CatalogManager;->deleteFile(Ljava/lang/String;)Z

    .line 14096
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "background-land.png"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/inapp/CatalogManager;->deleteFile(Ljava/lang/String;)Z

    .line 14081
    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 14082
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 14083
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v4, v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 14084
    sget-object v4, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "uninstallDownloadedFile...delete themeFolder: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 14085
    invoke-static {v3}, Lcom/nuance/swype/inapp/CatalogManager;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 14086
    invoke-static {v3}, Lcom/nuance/swype/inapp/CatalogManager;->deleteFile(Ljava/lang/String;)Z

    .line 14089
    :cond_0
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "uninstallDownloadedFile...done."

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 834
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v14

    .line 835
    .local v14, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v14, :cond_4

    .line 836
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    .line 837
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    .line 838
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/inapp/CatalogManager;->mInstalledList:Lcom/nuance/swype/inapp/InstalledList;

    .line 14162
    iget-object v4, v14, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 15023
    iget-object v5, v3, Lcom/nuance/swype/inapp/InstalledList;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15024
    invoke-virtual {v3}, Lcom/nuance/swype/inapp/InstalledList;->loadAll()V

    .line 839
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_UNINSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v3}, Lcom/nuance/swype/input/ThemeManager;->updateThemeStatus(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 15136
    iget-object v11, v14, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeCategories:Ljava/util/List;

    .line 843
    .local v11, "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_3

    .line 844
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 845
    .local v10, "category":Ljava/lang/String;
    invoke-interface {v9, v10}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 846
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v12

    .line 847
    .local v12, "itemSeed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v12, :cond_2

    .line 848
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    .line 849
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    .line 850
    sget-object v4, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_UNINSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v4}, Lcom/nuance/swype/input/ThemeManager;->updateThemeStatus(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    goto :goto_0

    .line 855
    .end local v10    # "category":Ljava/lang/String;
    .end local v12    # "itemSeed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    .end local v13    # "key":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    if-eqz v3, :cond_4

    .line 856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    const/4 v5, 0x0

    sget-object v8, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_UNINSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    move/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;->onCatalogItemStatusChanged(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 860
    .end local v11    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method
