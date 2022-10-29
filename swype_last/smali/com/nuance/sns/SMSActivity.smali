.class public Lcom/nuance/sns/SMSActivity;
.super Lcom/nuance/sns/SocialNetworkActivity;
.source "SMSActivity.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string/jumbo v0, "SMSActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/sns/SMSActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;-><init>()V

    return-void
.end method

.method private init()V
    .registers 6

    .prologue
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getScraperStatusFactory()Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getSMSStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/sns/SMSActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 49
    iget-object v1, p0, Lcom/nuance/sns/SMSActivity;->mScannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    if-eqz v1, :cond_59

    .line 51
    :try_start_16
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/nuance/sns/SMSActivity;->mScannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->SMS:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    .line 52
    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getScanner(Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;)Lcom/nuance/swypeconnect/ac/ACScanner;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nuance/sns/SMSActivity;->mScanner:Ljava/lang/ref/WeakReference;

    .line 53
    iget-object v1, p0, Lcom/nuance/sns/SMSActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 54
    iget-object v1, p0, Lcom/nuance/sns/SMSActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScannerSms;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    const/4 v3, 0x0

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->setScanType([Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;)V

    .line 55
    iget-object v1, p0, Lcom/nuance/sns/SMSActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScannerSms;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->setScanContacts(Z)V

    .line 56
    iget-object v1, p0, Lcom/nuance/sns/SMSActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScanner;

    const/16 v2, 0xf0

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACScanner;->setMaxToProcess(I)V
    :try_end_59
    .catch Lcom/nuance/swypeconnect/ac/ACScannerException; {:try_start_16 .. :try_end_59} :catch_5a

    .line 65
    :cond_59
    :goto_59
    return-void

    .line 58
    :catch_5a
    move-exception v0

    .line 59
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    sget-object v1, Lcom/nuance/sns/SMSActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerException;->printStackTrace()V

    .line 61
    iget-object v1, p0, Lcom/nuance/sns/SMSActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->getStringLastRun()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/sns/SMSActivity;->updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->closing()V

    goto :goto_59
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/nuance/sns/SocialNetworkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/nuance/swype/input/R$layout;->activity_dummy:I

    invoke-virtual {p0, v0}, Lcom/nuance/sns/SMSActivity;->setContentView(I)V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3b

    .line 32
    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    .line 34
    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3b

    .line 36
    :cond_29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v3

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 43
    :goto_3a
    return-void

    .line 39
    :cond_3b
    invoke-direct {p0}, Lcom/nuance/sns/SMSActivity;->init()V

    .line 40
    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->closing()V

    .line 41
    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->startScanningService()Z

    goto :goto_3a
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 95
    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_1a

    .line 97
    aget-object v1, p2, v0

    aget v2, p3, v0

    invoke-static {v1, v2, p0}, Lcom/nuance/swype/usagedata/UsageData;->recordPermissionGrantResult(Ljava/lang/String;ILandroid/app/Activity;)V

    .line 99
    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    .line 100
    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->closing()V

    .line 108
    .end local v0    # "i":I
    :cond_16
    :goto_16
    return-void

    .line 96
    .restart local v0    # "i":I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 104
    :cond_1a
    invoke-direct {p0}, Lcom/nuance/sns/SMSActivity;->init()V

    .line 105
    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->closing()V

    .line 106
    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->startScanningService()Z

    goto :goto_16
.end method

.method protected startScanningService()Z
    .registers 5

    .prologue
    .line 73
    invoke-super {p0}, Lcom/nuance/sns/SocialNetworkActivity;->startScanningService()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/nuance/sns/SMSActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 75
    :try_start_e
    iget-object v1, p0, Lcom/nuance/sns/SMSActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScanner;

    new-instance v2, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;

    invoke-direct {v2, p0}, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;-><init>(Lcom/nuance/sns/SocialNetworkActivity;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    .line 76
    invoke-static {}, Lcom/nuance/swype/usagedata/UsageData;->recordUsingSmsScanner()V

    .line 77
    iget-object v1, p0, Lcom/nuance/sns/SMSActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->getStringDateNow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/sns/SMSActivity;->updateWorkingStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V
    :try_end_2a
    .catch Lcom/nuance/swypeconnect/ac/ACScannerException; {:try_start_e .. :try_end_2a} :catch_2c

    .line 78
    const/4 v1, 0x1

    .line 88
    :goto_2b
    return v1

    .line 79
    :catch_2c
    move-exception v0

    .line 80
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    sget-object v1, Lcom/nuance/sns/SMSActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startScanningService"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 85
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    :cond_46
    iget-object v1, p0, Lcom/nuance/sns/SMSActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->getStringLastRun()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/sns/SMSActivity;->updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/nuance/sns/SMSActivity;->closing()V

    .line 88
    const/4 v1, 0x0

    goto :goto_2b
.end method
