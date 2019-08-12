.class public Lcom/nuance/connect/internal/LanguageServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;

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

.field private static final languageList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


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

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private final downloadingCallbacks:Ljava/util/Map;
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

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private final languageCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/api/LanguageService$ListCallback;",
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

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

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

    new-instance v0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;

    invoke-direct {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageList:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    new-instance v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/LanguageServiceInternal$1;-><init>(Lcom/nuance/connect/internal/LanguageServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->updateLanguagesData(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->markLanguageInstalled(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->removeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/LanguageServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private cancelDownload(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "cancel download, invalid language: null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_DOWNLOAD_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "STEP"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static findLanguageById(I)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v4, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v5, v1, v2

    if-ne p0, v5, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findLanguageById(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findLanguageFlavorFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static findLanguageIdByName(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static findLanguageIdFromFlavorByName(Ljava/lang/String;)I
    .locals 2

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private installLanguage(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Attempt to install a language that isn\'t available"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static isFlavor(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markLanguageInstalled(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "STEP"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "PROP_VERSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "PROP_INSTALLEDVERSION"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private removeLanguage(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "STEP"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_UNINSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v3, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    :goto_0
    invoke-virtual {p0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->notifyCallbacksOfStatus()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Attempt to uninstall a language that isn\'t available"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateLanguagesData(Ljava/util/Map;)V
    .locals 7
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

    const/4 v3, 0x1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "updateLanguagesData contains no metadata"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "STEP"

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v5, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_3

    const-string v5, "PROP_VERSION"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "PROP_VERSION"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "PROP_VERSION"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "PROP_VERSION"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    if-nez v1, :cond_6

    move v0, v3

    :goto_2
    move v2, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageListNotified:Z

    if-eqz v0, :cond_5

    if-eqz v2, :cond_0

    :cond_5
    iput-boolean v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageListNotified:Z

    invoke-virtual {p0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->notifyCallbacksOfStatus()V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public cancelDownload(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    invoke-static {p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->cancelDownload(Ljava/lang/String;)V

    return-void
.end method

.method public cancelDownload(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->cancelDownload(Ljava/lang/String;)V

    return-void
.end method

.method public downloadLanguage(ILcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    invoke-static {p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadLanguage id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " lang="

    const-string v5, " callback="

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Lcom/nuance/connect/api/ConnectException;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Language currently being canceled, putting into queue once verified."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    invoke-interface {v0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/nuance/connect/internal/LanguageServiceInternal;->installLanguage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadLanguage(ILjava/lang/String;Lcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadLanguage id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " flavor="

    const-string v5, " lang="

    const-string v7, " callback="

    move-object v4, p2

    move-object v8, p3

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Lcom/nuance/connect/api/ConnectException;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Language currently being canceled, putting into queue once verified."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    invoke-interface {v0, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v0, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v6}, Lcom/nuance/connect/internal/LanguageServiceInternal;->installLanguage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadLdbFlavorList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->isFlavor(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdFromFlavorByName(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageFlavorFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v6, "PROP_VERSION"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    new-instance v1, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;

    invoke-direct {v1, v4, v0, v5}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public getDownloadLdbList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/LanguageService$LdbInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v5, "PROP_VERSION"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    new-instance v1, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-direct {v1, v4, v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;-><init>(II)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageListAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageListNotified:Z

    return v0
.end method

.method public languageUninstalled(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    invoke-static {p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->removeLanguage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadStopped(I)V

    :cond_0
    return-void
.end method

.method public languageUninstalled(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->removeLanguage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadStopped(I)V

    :cond_0
    return-void
.end method

.method public notifyCallbacksOfStatus()V
    .locals 3

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService$ListCallback;->languageListUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public registerCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUsingBaseline()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_USING_BASELINES:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterCallbacks()V
    .locals 2

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
