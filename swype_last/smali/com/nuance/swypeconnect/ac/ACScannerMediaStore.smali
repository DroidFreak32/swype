.class public final Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;
.super Lcom/nuance/swypeconnect/ac/ACScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$1;,
        Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$MediaStoreReader;,
        Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;
    }
.end annotation


# static fields
.field private static final MEDIA_MAX_DEFAULT:I = -0x1

.field private static final SCANNER_MEDIA_LAST_RUN_CALENDAR:Ljava/lang/String; = "SCANNER_MEDIA_LAST_RUN_CALENDAR"

.field static final TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private scanTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V
    .registers 5

    const-string/jumbo v0, "SCANNER_MEDIA_LAST_RUN_CALENDAR"

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACScanner;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->maxToProcess:I

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->setScanType([Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;)V

    return-void
.end method

.method private processMediaStore(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$MediaStoreReader;Lcom/nuance/connect/api/DLMConnector$ScannerBucket;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;J)V
    .registers 18

    move-object v1, p2

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-wide/from16 v6, p7

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$MediaStoreReader;->read(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_59

    :cond_d
    :try_start_d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_38

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->maxToProcess:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->currentProcess:I

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->maxToProcess:I

    if-le v0, v2, :cond_d

    const/4 v0, 0x0

    :goto_1f
    array-length v2, p5

    if-ge v0, v2, :cond_d

    invoke-static {v1, v0}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$MediaStoreReader;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-interface {p3, v2}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->currentProcess:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->currentProcess:I
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_5a

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_38
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Media Scanner processed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->currentProcess:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " items."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_59
    return-void

    :catchall_5a
    move-exception v0

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Media Scanner processed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->currentProcess:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " items."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method final fail(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method final getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .registers 2

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method final scan()V
    .registers 12

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_MEDIA:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->startScan()V

    const-wide/16 v8, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->scanCoreList:[I

    invoke-virtual {p0, v2, v4, v4}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v4

    new-instance v3, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$MediaStoreReader;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$MediaStoreReader;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$1;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->lastRunCalendar:Ljava/util/Calendar;

    if-eqz v5, :cond_3f

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->lastRunCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    :cond_3f
    sget-object v5, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "begin media store scanning"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v5, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "scan since:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->scanTypes:Ljava/util/ArrayList;

    sget-object v6, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f9

    const-string/jumbo v5, "album"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "artist"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "title"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_78
    :goto_78
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_af

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "is_music"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " != 0"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->processMediaStore(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$MediaStoreReader;Lcom/nuance/connect/api/DLMConnector$ScannerBucket;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;J)V

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->processMediaStore(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$MediaStoreReader;Lcom/nuance/connect/api/DLMConnector$ScannerBucket;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;J)V

    :cond_af
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->scanTypes:Ljava/util/ArrayList;

    sget-object v5, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c5
    :goto_c5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->processMediaStore(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$MediaStoreReader;Lcom/nuance/connect/api/DLMConnector$ScannerBucket;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;J)V

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->processMediaStore(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$MediaStoreReader;Lcom/nuance/connect/api/DLMConnector$ScannerBucket;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;J)V

    :cond_e9
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "end media store scanning"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->endScan(Z)V

    return-void

    :cond_f9
    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->scanTypes:Ljava/util/ArrayList;

    sget-object v6, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->AUDIO_ALBUMS:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_109

    const-string/jumbo v5, "album"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_109
    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->scanTypes:Ljava/util/ArrayList;

    sget-object v6, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->AUDIO_ARTISTS:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    const-string/jumbo v5, "artist"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_119
    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->scanTypes:Ljava/util/ArrayList;

    sget-object v6, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->AUDIO_TITLE:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    const-string/jumbo v5, "title"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_78

    :cond_12b
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->scanTypes:Ljava/util/ArrayList;

    sget-object v5, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->VIDEO_TITLE:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13b
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->scanTypes:Ljava/util/ArrayList;

    sget-object v5, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->VIDEO_DESCRIPTION:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c5
.end method

.method public final setScanType([Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;)V
    .registers 4

    if-nez p1, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->scanTypes:Ljava/util/ArrayList;

    :goto_5
    return-void

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->scanTypes:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->scanTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->scanTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_17

    :cond_f
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_17
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x10

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/util/PermissionUtils;->checkPermission(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x64

    const-string/jumbo v2, "Media Scanner requires permission to read external storage"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_33
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
