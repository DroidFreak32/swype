.class public Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;
.super Lcom/nuance/swypeconnect/ac/ACService;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;
    }
.end annotation


# static fields
.field private static final ALM_INSTALLED:Ljava/lang/String; = "ALM_INSTALLED"

.field private static final DOWNLOADED_LANGUAGES:Ljava/lang/String; = "AC_Language_Service_Downloaded_Languages"

.field private static final LANGUAGE_DL:Ljava/lang/String; = "LANGUAGE_DL"

.field private static final LANGUAGE_ID:Ljava/lang/String; = "LANGUAGE_ID"

.field private static final PREINSTALLED:Ljava/lang/String; = "PREINSTALLED"

.field private static final VERSION:Ljava/lang/String; = "VERSION"


# instance fields
.field private almsAreUpgrades:Z

.field private bInitialized:Z

.field private customer:Lcom/nuance/connect/util/Logger$Log;

.field private final downloaded:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

.field private languageService:Lcom/nuance/connect/api/LanguageService;

.field private final listCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field protected manager:Lcom/nuance/swypeconnect/ac/ACManager;

.field private store:Lcom/nuance/connect/store/PersistentDataStore;

.field private final supportedLangs:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->listCallbacks:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->almsAreUpgrades:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->save()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->listCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z

    return v0
.end method

.method static synthetic access$402(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z

    return p1
.end method

.method private addSupportedLanguage(Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V
    .locals 5

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "LANGUAGE_DL"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isPreinstalled(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v4

    invoke-direct {p0, v3, v1, v4, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguge(Ljava/lang/Integer;Ljava/util/HashMap;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "VERSION"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v4

    invoke-direct {p0, v3, v1, v4, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguge(Ljava/lang/Integer;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private addSupportedLanguage(Ljava/lang/Integer;[Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    array-length v1, p2

    if-lez v1, :cond_3

    const/4 v2, -0x1

    array-length v5, p2

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, p2, v4

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v1, v7, :cond_4

    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    move v8, v1

    move v1, v0

    move v0, v8

    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguge(Ljava/lang/Integer;Ljava/util/HashMap;)V

    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private addSupportedLanguge(Ljava/lang/Integer;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isLanguageListAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->notifyCallbacksOfStatus()V

    :cond_0
    return-void
.end method

.method private generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "ZIZ)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "LANGUAGE_ID"

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PREINSTALLED"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VERSION"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ALM_INSTALLED"

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private isDownloaded(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_0
.end method

.method private isPreinstalled(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "PREINSTALLED"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isSupported(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUpdateAvailable(II)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v5, "LANGUAGE_DL"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v5, "LANGUAGE_DL"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v5, "LANGUAGE_DL"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v0

    :cond_0
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isPreinstalled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isDownloaded(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->almsAreUpgrades:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "ALM_INSTALLED"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v1

    :cond_1
    :goto_2
    return v2

    :cond_2
    move v3, v2

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v5, "VERSION"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v5, "VERSION"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v5, "VERSION"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v3, v0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_4
    if-le p2, v3, :cond_5

    move v0, v1

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isDownloaded(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez v3, :cond_1

    if-le p2, v3, :cond_7

    :goto_4
    move v2, v1

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_4
.end method

.method private save()V
    .locals 4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string v2, "AC_Language_Service_Downloaded_Languages"

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-interface {v0, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_1

    array-length v0, p2

    new-array v1, v0, [Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget-object v2, p2, v0

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/lang/String;Landroid/content/Context;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Ljava/lang/Integer;[Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V

    :cond_1
    return-void
.end method

.method public addExistingLanguage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/lang/String;Landroid/content/Context;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V

    return-void
.end method

.method public addSupportedLanguage(Ljava/lang/Integer;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguge(Ljava/lang/Integer;Ljava/util/HashMap;)V

    return-void
.end method

.method public cancelDownload(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6f

    const-string v2, "The language you requested is not supported."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/LanguageService;->cancelDownload(I)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Exception canceling download: "

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public convertToDownloadedLanguage(I)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "convertToDownloadedLanguage id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "PREINSTALLED"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->save()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadLanguage id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " callback="

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6f

    const-string v2, "The language you requested is not supported."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, -0x1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Language download requested"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;IILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    invoke-interface {v1, p1, v2}, Lcom/nuance/connect/api/LanguageService;->downloadLanguage(ILcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x6e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The language you requested is not available: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v8, 0x6f

    const/16 v7, 0x6e

    if-nez p2, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const-string v1, "Language flavor cannot be null."

    invoke-direct {v0, v8, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadLanguageFlavor id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " flavor="

    const-string v5, " callback="

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The language "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " you requested is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isFlavorAvailable(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the language flavor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " you requested is not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, -0x1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbFlavorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getXT9LanguageId()I

    move-result v3

    if-ne v3, p1, :cond_3

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getFlavor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getVersion()I

    move-result v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Language download requested"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;IILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    invoke-interface {v1, p1, p2, v2}, Lcom/nuance/connect/api/LanguageService;->downloadLanguage(ILjava/lang/String;Lcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The language you requested is not available: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isPreinstalled(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isDownloaded(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getDownloadedLanguages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    if-lez v3, :cond_0

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isDownloaded(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isUpdateAvailable(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method getName()Ljava/lang/String;
    .locals 1

    const-string v0, "LANGUAGE"

    return-object v0
.end method

.method public getUpdatableLanguages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isUpdateAvailable(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Language not found: "

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected init(Lcom/nuance/connect/api/LanguageService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 3

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v0, "AC_Language_Service_Downloaded_Languages"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-interface {p1, v1}, Lcom/nuance/connect/api/LanguageService;->registerCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isFlavorAvailable(ILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbFlavorList()Ljava/util/List;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbFlavorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getXT9LanguageId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getFlavor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLanguageListAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->isLanguageListAvailable()Z

    move-result v0

    return v0
.end method

.method public languageUninstalled(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6f

    const-string v2, "The language you requested is not supported."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->save()V

    :try_start_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/LanguageService;->languageUninstalled(I)V
    :try_end_1
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "LANGUAGE_DL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;Z)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->listCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getAvailableLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->availableLanguages(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->downloadedLanguages(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->updatableLanguages(Ljava/util/List;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeSupportedLanguage(Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->save()V

    :try_start_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LanguageService;->cancelDownload(I)V
    :try_end_1
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->notifyCallbacksOfStatus()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Error removeSupportedLanguage: "

    const-string v3, " message: "

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method requireInitialization()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected requiresDocument(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shutdown()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isShutdown:Z

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->unregisterCallbacks()V

    return-void
.end method

.method start()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isShutdown:Z

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService$ListCallback;->languageListUpdate()V

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->listCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
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

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->listCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->listCallbacks:Ljava/util/Set;

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

.method public useOnlyVersionForUpdate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->almsAreUpgrades:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService$ListCallback;->languageListUpdate()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->setUsingBaseline()V

    return-void
.end method
