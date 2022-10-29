.class public final Lcom/nuance/swypeconnect/ac/ACScannerApplications;
.super Lcom/nuance/swypeconnect/ac/ACScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;
    }
.end annotation


# static fields
.field private static final MAX_DEFAULT:I = 0x64

.field private static final SCANNER_APPLICATION_LAST_RUN_CALENDAR:Ljava/lang/String; = "SCANNER_APPLICATION_LAST_RUN_CALENDAR"

.field static final TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private scanTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACScannerApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->APPLICATION:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V
    .registers 5

    const-string/jumbo v0, "SCANNER_APPLICATION_LAST_RUN_CALENDAR"

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACScanner;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;->NON_SYSTEM:Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->setScanType([Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->maxToProcess:I

    return-void
.end method


# virtual methods
.method final fail(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected final getInstalledTime(Landroid/content/pm/PackageInfo;)Ljava/util/Calendar;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "firstInstallTime: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    :goto_1f
    return-object v0

    :catch_20
    move-exception v1

    goto :goto_1f
.end method

.method final getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .registers 2

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method final scan()V
    .registers 11

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->startScan()V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "scan"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->scanCoreList:[I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v9}, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v3

    const/16 v0, 0x80

    :try_start_1f
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_27

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x0

    sget-object v6, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "checking application: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->scanTypes:Ljava/util/ArrayList;

    sget-object v7, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;->NON_SYSTEM:Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_27

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_6d
    .catchall {:try_start_1f .. :try_end_6d} :catchall_b9

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_27

    :cond_71
    :try_start_71
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x1000

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->getInstalledTime(Landroid/content/pm/PackageInfo;)Ljava/util/Calendar;
    :try_end_7c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71 .. :try_end_7c} :catch_be
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7c} :catch_c1
    .catchall {:try_start_71 .. :try_end_7c} :catchall_b9

    move-result-object v0

    :goto_7d
    if-eqz v0, :cond_8b

    :try_start_7f
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->lastRunCalendar:Ljava/util/Calendar;

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->lastRunCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_8b
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->currentProcess:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->currentProcess:I

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->currentProcess:I

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->maxToProcess:I

    if-gt v0, v1, :cond_c4

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "added application: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_7f .. :try_end_b7} :catchall_b9

    goto/16 :goto_27

    :catchall_b9
    move-exception v0

    invoke-interface {v3}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    throw v0

    :catch_be
    move-exception v0

    move-object v0, v1

    goto :goto_7d

    :catch_c1
    move-exception v0

    move-object v0, v1

    goto :goto_7d

    :cond_c4
    invoke-interface {v3}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    invoke-virtual {p0, v9}, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->endScan(Z)V

    return-void
.end method

.method public final setScanType([Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;)V
    .registers 4

    if-nez p1, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->scanTypes:Ljava/util/ArrayList;

    :goto_5
    return-void

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->scanTypes:Ljava/util/ArrayList;

    goto :goto_5
.end method

.method public final start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.GET_TASKS"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x64

    const-string/jumbo v2, "Application Scanner needs Manifest.permission.GET_TASKS"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1d
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
