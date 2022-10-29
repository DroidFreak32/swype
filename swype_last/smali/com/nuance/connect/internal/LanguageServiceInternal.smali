.class public Lcom/nuance/connect/internal/LanguageServiceInternal;
.super Lcom/nuance/connect/internal/AbstractService;

# interfaces
.implements Lcom/nuance/connect/api/LanguageService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/LanguageServiceInternal$3;
    }
.end annotation


# static fields
.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final SEND_PREINSTALL_LIST:I


# instance fields
.field private final canceledDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private final downloadingCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/LanguageService$DownloadCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final existingLanguages:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private final languageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/connect/api/LanguageService$ListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final languageIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private languageListNotified:Z

.field private final languageMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private final oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private final redownload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/LanguageService$DownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private shouldSend:Z

.field private final supportedLanguages:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final weakReferenceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_LANGUAGES_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_UNINSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/LanguageServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 4

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstractService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageIdMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->existingLanguages:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->supportedLanguages:Ljava/util/TreeSet;

    new-instance v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/LanguageServiceInternal$1;-><init>(Lcom/nuance/connect/internal/LanguageServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->handlerCallback:Landroid/os/Handler$Callback;

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/connect/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->weakReferenceHandler:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/LanguageServiceInternal$2;-><init>(Lcom/nuance/connect/internal/LanguageServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/TreeSet;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->existingLanguages:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/TreeSet;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->supportedLanguages:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100()[Lcom/nuance/connect/internal/common/InternalMessages;
    .registers 1

    sget-object v0, Lcom/nuance/connect/internal/LanguageServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->updateLanguagesData(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdFromFlavorByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->markLanguageInstalled(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->removeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private cancelDownload(Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cancel download, invalid language: null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_22
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_DOWNLOAD_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_35
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v2, "STEP"

    const-string/jumbo v3, "8"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    monitor-exit v1

    goto :goto_b

    :catchall_50
    move-exception v0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_35 .. :try_end_52} :catchall_50

    throw v0
.end method

.method private findLanguageById(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1b

    const-string/jumbo v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private findLanguageFlavorFromName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private findLanguageIdByName(Ljava/lang/String;)I
    .registers 5

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_24

    const-string/jumbo v2, "146"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->getLanguageIds(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_24

    array-length v2, v0

    if-lez v2, :cond_24

    const/4 v2, 0x0

    aget v0, v0, v2

    monitor-exit v1

    :goto_23
    return v0

    :cond_24
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_23

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method private findLanguageIdFromFlavorByName(Ljava/lang/String;)I
    .registers 4

    if-eqz p1, :cond_11

    :goto_2
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_11
    const-string/jumbo p1, ""

    goto :goto_2
.end method

.method private getLanguageIds(Ljava/lang/String;)[I
    .registers 6

    if-eqz p1, :cond_2b

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_13
    array-length v3, v2

    if-ge v1, v3, :cond_2c

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_1e} :catch_21

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catch_21
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_2b
    const/4 v0, 0x0

    :cond_2c
    return-object v0
.end method

.method private hasFlavors(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private installLanguage(Ljava/lang/String;)V
    .registers 7

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, p1, v3, v4}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    :goto_18
    monitor-exit v1

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Attempt to install a language that isn\'t available"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_18

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private markLanguageInstalled(Ljava/lang/String;I)V
    .registers 7

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v2, "STEP"

    const-string/jumbo v3, "7"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v2, "PROP_INSTALLEDVERSION"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    monitor-exit v1

    return-void

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private removeLanguage(Ljava/lang/String;)V
    .registers 7

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v2, "STEP"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_UNINSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, p1, v3, v4}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_37

    invoke-virtual {p0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->notifyCallbacksOfStatus()V

    return-void

    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Attempt to uninstall a language that isn\'t available"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_29

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_37

    throw v0
.end method

.method private updateLanguagesData(Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_a
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "updateLanguagesData contains no metadata"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v8, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_1b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v4

    :goto_24
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    const-string/jumbo v3, "STEP"

    const-string/jumbo v10, "8"

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    iget-object v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-eqz v3, :cond_af

    const-string/jumbo v10, "PROP_VERSION"

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_af

    const-string/jumbo v10, "PROP_VERSION"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_af

    const-string/jumbo v10, "PROP_VERSION"

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v10, "PROP_VERSION"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    move v3, v5

    :goto_80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string/jumbo v6, "146"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->getLanguageIds(Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_b3

    array-length v10, v6

    move v2, v4

    :goto_97
    if-ge v2, v10, :cond_b3

    aget v11, v6, v2

    const-string/jumbo v12, "-"

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    :cond_af
    if-nez v3, :cond_e5

    move v3, v5

    goto :goto_80

    :cond_b3
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v3

    goto/16 :goto_24

    :cond_c3
    monitor-exit v8
    :try_end_c4
    .catchall {:try_start_1b .. :try_end_c4} :catchall_df

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageIdMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_c7
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_d2
    .catchall {:try_start_c7 .. :try_end_d2} :catchall_e2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageListNotified:Z

    if-eqz v0, :cond_d8

    if-eqz v6, :cond_12

    :cond_d8
    iput-boolean v5, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageListNotified:Z

    invoke-virtual {p0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->notifyCallbacksOfStatus()V

    goto/16 :goto_12

    :catchall_df
    move-exception v0

    :try_start_e0
    monitor-exit v8
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v0

    :catchall_e2
    move-exception v0

    :try_start_e3
    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v0

    :cond_e5
    move v3, v6

    goto :goto_80
.end method


# virtual methods
.method public addSupportedLanguage(IZ)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-eqz p2, :cond_31

    iget-boolean v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->shouldSend:Z

    if-nez v3, :cond_17

    iget-object v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->existingLanguages:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    :cond_17
    :goto_17
    iput-boolean v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->shouldSend:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->existingLanguages:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_1e
    iget-boolean v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->shouldSend:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->weakReferenceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->weakReferenceHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    :cond_2f
    move v0, v1

    goto :goto_17

    :cond_31
    iget-boolean v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->shouldSend:Z

    if-nez v3, :cond_3d

    iget-object v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->supportedLanguages:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    :cond_3d
    :goto_3d
    iput-boolean v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->shouldSend:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->supportedLanguages:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_45
    move v0, v1

    goto :goto_3d
.end method

.method public cancelDownload(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->cancelDownload(Ljava/lang/String;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Attempting to cancel a download on a language that is currently not being processed. Language: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public cancelDownload(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const/4 v1, 0x0

    const-string/jumbo v2, "Method is currently unimplemented, implement prior to release."

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/api/ConnectException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public downloadLanguage(ILcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "downloadLanguage id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " lang="

    const-string/jumbo v5, " callback="

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1a
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const/16 v2, 0x6e

    invoke-direct {v0, v2}, Lcom/nuance/connect/api/ConnectException;-><init>(I)V

    throw v0

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Language currently being canceled, putting into queue once verified."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    invoke-interface {v0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/nuance/connect/internal/LanguageServiceInternal;->installLanguage(Ljava/lang/String;)V

    goto :goto_43
.end method

.method public downloadLanguage(ILjava/lang/String;Lcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "downloadLanguage id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " flavor="

    const-string/jumbo v5, " lang="

    const-string/jumbo v7, " callback="

    move-object v4, p2

    move-object v8, p3

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1e
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const/16 v2, 0x6e

    invoke-direct {v0, v2}, Lcom/nuance/connect/api/ConnectException;-><init>(I)V

    throw v0

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Language currently being canceled, putting into queue once verified."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    invoke-interface {v0, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_47
    return-void

    :cond_48
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v6, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v6}, Lcom/nuance/connect/internal/LanguageServiceInternal;->installLanguage(Ljava/lang/String;)V

    goto :goto_47
.end method

.method public findLanguageById(I)Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageIdMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadLdbList()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/LanguageService$LdbInfo;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_8
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_12
    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->hasFlavors(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdFromFlavorByName(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageFlavorFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v11, v3

    move-object v3, v2

    move v2, v11

    :goto_42
    if-lez v2, :cond_12

    const/4 v6, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object v5, v0
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_86

    :try_start_4d
    const-string/jumbo v1, "PROP_VERSION"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_5d} :catch_96
    .catchall {:try_start_4d .. :try_end_5d} :catchall_86

    move-result v6

    :goto_5e
    :try_start_5e
    const-string/jumbo v1, "146"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->getLanguageIds(Ljava/lang/String;)[I

    move-result-object v2

    new-instance v1, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    const-string/jumbo v4, "124"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v10, "122"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/nuance/connect/api/LanguageService$LdbInfo;-><init>([ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_86
    move-exception v1

    monitor-exit v8
    :try_end_88
    .catchall {:try_start_5e .. :try_end_88} :catchall_86

    throw v1

    :cond_89
    :try_start_89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v2

    goto :goto_42

    :cond_94
    monitor-exit v8
    :try_end_95
    .catchall {:try_start_89 .. :try_end_95} :catchall_86

    return-object v7

    :catch_96
    move-exception v1

    goto :goto_5e
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getPrimaryLanguageId(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return p1

    :cond_7
    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdByName(Ljava/lang/String;)I

    move-result p1

    goto :goto_6
.end method

.method getServiceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageListAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageListNotified:Z

    return v0
.end method

.method public languageUninstalled(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->removeLanguage(Ljava/lang/String;)V

    if-eqz v0, :cond_43

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadStopped(I)V

    :cond_43
    return-void
.end method

.method public languageUninstalled(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const/4 v1, 0x0

    const-string/jumbo v2, "Method is currently unimplemented, implement prior to release."

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/api/ConnectException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public notifyCallbacksOfStatus()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-array v2, v1, [Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/LanguageService$ListCallback;

    array-length v2, v0

    :goto_c
    if-ge v1, v2, :cond_16

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/nuance/connect/api/LanguageService$ListCallback;->languageListUpdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method public registerCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
