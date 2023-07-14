.class public final Lcom/nuance/swypeconnect/ac/ACScannerContacts;
.super Lcom/nuance/swypeconnect/ac/ACScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACScannerContacts$1;,
        Lcom/nuance/swypeconnect/ac/ACScannerContacts$ContactReader;,
        Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;
    }
.end annotation


# static fields
.field private static final CONTACT_MAX_DEFAULT:I = 0x3c

.field private static final SCANNER_CONTACTS_LAST_RUN_CALENDAR:Ljava/lang/String; = "SCANNER_CONTACTS_LAST_RUN_CALENDAR"

.field static final TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private scanTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACScannerContacts;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->CONTACTS:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V
    .locals 3

    const-string/jumbo v0, "SCANNER_CONTACTS_LAST_RUN_CALENDAR"

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACScanner;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->maxToProcess:I

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->setScanType([Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;)V

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method


# virtual methods
.method final fail(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method final getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method final scan()V
    .locals 14

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_CONTACTS:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->startScan()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onStart()V

    const-wide/16 v6, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ContactReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ContactReader;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerContacts$1;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->lastRunCalendar:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->lastRunCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->removeDuplicates:Z

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "begin contact scanning. scan since:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v1, "contact_id"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->scanTypes:Ljava/util/ArrayList;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "data3"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "data2"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "data1"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "data7"

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "data8"

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "data10"

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mimetype"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " = ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "vnd.android.cursor.item/name"

    aput-object v10, v5, v9

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ContactReader;->read(Landroid/net/Uri;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    move-object v9, v1

    :goto_1
    const-string/jumbo v1, "contact_id"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v9, :cond_13

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->scanCoreList:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v13

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->maxToProcess:I

    if-lez v1, :cond_8

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_12

    const/4 v10, 0x0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v1, "contact_id"

    invoke-static {v9, v1}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ContactReader;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v9, v1}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ContactReader;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    invoke-interface {v13, v5}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_4
    move v10, v1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->scanTypes:Ljava/util/ArrayList;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->FAMILY_NAME:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "data3"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->scanTypes:Ljava/util/ArrayList;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->GIVEN_NAME:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "data2"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->scanTypes:Ljava/util/ArrayList;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->DISPLAY_NAME:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "data1"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->scanTypes:Ljava/util/ArrayList;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->CITY:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "data7"

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->scanTypes:Ljava/util/ArrayList;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->REGION:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "data8"

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->scanTypes:Ljava/util/ArrayList;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->COUNTRY:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "data10"

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_9
    const/high16 v1, -0x80000000

    if-eq v3, v1, :cond_d

    :try_start_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mimetype"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " = ? AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "contact_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " = ?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "vnd.android.cursor.item/postal-address_v2"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const-wide/16 v6, 0x0

    move-object v3, v8

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ContactReader;->read(Landroid/net/Uri;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_c

    :goto_5
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    array-length v5, v8

    const/4 v1, 0x0

    move v3, v1

    move v1, v10

    :goto_6
    if-ge v3, v5, :cond_b

    aget-object v6, v8, v3

    invoke-static {v4, v6}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ContactReader;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v1, 0x1

    invoke-interface {v13, v6}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    move v10, v1

    goto :goto_5

    :cond_c
    if-eqz v4, :cond_d

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v10, :cond_e

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->currentProcess:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->currentProcess:I

    :cond_e
    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->currentProcess:I

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->maxToProcess:I

    if-ge v1, v3, :cond_10

    const/4 v1, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_f

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-interface {v13}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    throw v0

    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_12
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-interface {v13}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    :cond_13
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "end contact scanning. Scanned "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->currentProcess:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " contacts."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->endScan(Z)V

    return-void

    :cond_14
    move v1, v10

    goto/16 :goto_4

    :cond_15
    move-object v9, v4

    goto/16 :goto_1
.end method

.method public final setScanType([Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->scanTypes:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->scanTypes:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->scanTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->scanTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x64

    const-string/jumbo v2, "Contacts Scanner Requires permission to read contacts"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
