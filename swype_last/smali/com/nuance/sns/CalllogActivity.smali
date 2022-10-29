.class public Lcom/nuance/sns/CalllogActivity;
.super Lcom/nuance/sns/SocialNetworkActivity;
.source "CalllogActivity.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string/jumbo v0, "CalllogActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/sns/CalllogActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;-><init>()V

    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/nuance/sns/CalllogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getScraperStatusFactory()Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getCalllogScraperStatus()Lcom/nuance/sns/ScraperStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/sns/CalllogActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 45
    iget-object v1, p0, Lcom/nuance/sns/CalllogActivity;->mScannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    if-eqz v1, :cond_32

    .line 47
    :try_start_16
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/nuance/sns/CalllogActivity;->mScannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->CALL_LOG:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    .line 48
    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getScanner(Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;)Lcom/nuance/swypeconnect/ac/ACScanner;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nuance/sns/CalllogActivity;->mScanner:Ljava/lang/ref/WeakReference;

    .line 49
    iget-object v1, p0, Lcom/nuance/sns/CalllogActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScanner;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACScanner;->setMaxToProcess(I)V
    :try_end_32
    .catch Lcom/nuance/swypeconnect/ac/ACScannerException; {:try_start_16 .. :try_end_32} :catch_33

    .line 56
    :cond_32
    :goto_32
    return-void

    .line 50
    :catch_33
    move-exception v0

    .line 51
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    sget-object v1, Lcom/nuance/sns/CalllogActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 52
    iget-object v1, p0, Lcom/nuance/sns/CalllogActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/CalllogActivity;->getStringLastRun()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/sns/CalllogActivity;->updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/nuance/sns/CalllogActivity;->closing()V

    goto :goto_32
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/nuance/sns/SocialNetworkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lcom/nuance/swype/input/R$layout;->activity_dummy:I

    invoke-virtual {p0, v0}, Lcom/nuance/sns/CalllogActivity;->setContentView(I)V

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_29

    .line 31
    invoke-virtual {p0}, Lcom/nuance/sns/CalllogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_29

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 40
    :goto_28
    return-void

    .line 36
    :cond_29
    invoke-direct {p0}, Lcom/nuance/sns/CalllogActivity;->init()V

    .line 37
    invoke-virtual {p0}, Lcom/nuance/sns/CalllogActivity;->closing()V

    .line 38
    invoke-virtual {p0}, Lcom/nuance/sns/CalllogActivity;->startScanningService()Z

    goto :goto_28
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
    .line 82
    const/4 v1, 0x2

    if-ne p1, v1, :cond_16

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_1a

    .line 84
    aget-object v1, p2, v0

    aget v2, p3, v0

    invoke-static {v1, v2, p0}, Lcom/nuance/swype/usagedata/UsageData;->recordPermissionGrantResult(Ljava/lang/String;ILandroid/app/Activity;)V

    .line 85
    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    .line 86
    invoke-virtual {p0}, Lcom/nuance/sns/CalllogActivity;->closing()V

    .line 94
    .end local v0    # "i":I
    :cond_16
    :goto_16
    return-void

    .line 83
    .restart local v0    # "i":I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 90
    :cond_1a
    invoke-direct {p0}, Lcom/nuance/sns/CalllogActivity;->init()V

    .line 91
    invoke-virtual {p0}, Lcom/nuance/sns/CalllogActivity;->closing()V

    .line 92
    invoke-virtual {p0}, Lcom/nuance/sns/CalllogActivity;->startScanningService()Z

    goto :goto_16
.end method

.method protected startScanningService()Z
    .registers 4

    .prologue
    .line 60
    invoke-super {p0}, Lcom/nuance/sns/SocialNetworkActivity;->startScanningService()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/nuance/sns/CalllogActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 62
    :try_start_e
    iget-object v1, p0, Lcom/nuance/sns/CalllogActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScanner;

    new-instance v2, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;

    invoke-direct {v2, p0}, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;-><init>(Lcom/nuance/sns/SocialNetworkActivity;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    .line 63
    invoke-static {}, Lcom/nuance/swype/usagedata/UsageData;->recordUsingCallLogScanner()V

    .line 64
    iget-object v1, p0, Lcom/nuance/sns/CalllogActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/CalllogActivity;->getStringDateNow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/sns/CalllogActivity;->updateWorkingStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V
    :try_end_2a
    .catch Lcom/nuance/swypeconnect/ac/ACScannerException; {:try_start_e .. :try_end_2a} :catch_2c

    .line 65
    const/4 v1, 0x1

    .line 75
    :goto_2b
    return v1

    .line 66
    :catch_2c
    move-exception v0

    .line 67
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    sget-object v1, Lcom/nuance/sns/CalllogActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 72
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    :cond_36
    iget-object v1, p0, Lcom/nuance/sns/CalllogActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/CalllogActivity;->getStringLastRun()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/sns/CalllogActivity;->updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/nuance/sns/CalllogActivity;->closing()V

    .line 75
    const/4 v1, 0x0

    goto :goto_2b
.end method
