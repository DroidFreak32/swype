.class public final Lcom/nuance/swypeconnect/ac/ACScannerSms;
.super Lcom/nuance/swypeconnect/ac/ACScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACScannerSms$1;,
        Lcom/nuance/swypeconnect/ac/ACScannerSms$SMSReader;,
        Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;
    }
.end annotation


# static fields
.field private static final PHONE_LOOKUP_DISPLAY_NAME:[Ljava/lang/String;

.field private static final SCANNER_SMS_LAST_RUN_CALENDAR:Ljava/lang/String; = "SCANNER_SMS_LAST_RUN_CALENDAR"

.field private static final SCANNER_SMS_MAX_MESSAGES:Ljava/lang/String; = "SCANNER_SMS_MAX_MESSAGES"

.field private static final SCANNER_SMS_SCANCONTACTS:Ljava/lang/String; = "SCANNER_SMS_SCANCONTACTS"

.field private static final SMS_MAX_DEFAULT:I = 0x1a4

.field static final TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private scanContacts:Z

.field private scanTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACScannerSms;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->PHONE_LOOKUP_DISPLAY_NAME:[Ljava/lang/String;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->SMS:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "SCANNER_SMS_LAST_RUN_CALENDAR"

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACScanner;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanContacts:Z

    new-array v0, v3, [Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->setScanType([Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string/jumbo v1, "SCANNER_SMS_SCANCONTACTS"

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanContacts:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string/jumbo v1, "SCANNER_SMS_MAX_MESSAGES"

    const/16 v2, 0x1a4

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->maxToProcess:I

    return-void
.end method

.method private processMailbox(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "getting buckets..."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanCoreList:[I

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v6

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanCoreList:[I

    invoke-virtual {p0, v0, v3, v2}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v7

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "done getting buckets..."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->currentProcess:I

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->maxToProcess:I

    if-ge v1, v2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/nuance/swypeconnect/ac/ACScannerSms$SMSReader;->getBody(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v6, v1}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanContacts:Z

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/nuance/swypeconnect/ac/ACScannerSms$SMSReader;->getAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->currentProcess:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->currentProcess:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    invoke-interface {v7}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    invoke-interface {v6}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v7, v1}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerSms;->PHONE_LOOKUP_DISPLAY_NAME:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_5
    :goto_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v7, v0}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_7
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    invoke-interface {v7}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    invoke-interface {v6}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    :cond_8
    return-void
.end method


# virtual methods
.method final fail(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getScanContacts()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanContacts:Z

    return v0
.end method

.method final getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method final scan()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_SMS:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->startScan()V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->lastRunCalendar:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->lastRunCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :cond_0
    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerSms;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "scan since:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACScannerSms$SMSReader;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerSms$SMSReader;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerSms$1;)V

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanTypes:Ljava/util/ArrayList;

    sget-object v5, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerSms$SMSReader;->read(Landroid/content/Context;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->processMailbox(Landroid/content/Context;Landroid/database/Cursor;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->endScan(Z)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanTypes:Ljava/util/ArrayList;

    sget-object v5, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->INBOX:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "inbox"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerSms$SMSReader;->read(Landroid/content/Context;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->processMailbox(Landroid/content/Context;Landroid/database/Cursor;)V

    :cond_3
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanTypes:Ljava/util/ArrayList;

    sget-object v5, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "sent"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerSms$SMSReader;->read(Landroid/content/Context;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->processMailbox(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public final setMaxToProcess(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->setMaxToProcess(I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string/jumbo v1, "SCANNER_SMS_MAX_MESSAGES"

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    return-void
.end method

.method public final setScanContacts(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanContacts:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string/jumbo v1, "SCANNER_SMS_SCANCONTACTS"

    iget-boolean v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanContacts:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    return-void
.end method

.method public final setScanType([Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanTypes:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanTypes:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->scanTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->maxToProcess:I

    if-gez v0, :cond_4

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x68

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Max SMS messages set to an unusable value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->maxToProcess:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerSms;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
