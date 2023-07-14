.class public Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;
.super Lcom/nuance/swypeconnect/ac/ACService;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;,
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;,
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;
    }
.end annotation


# static fields
.field private static final DOWNLOADED_LANGUAGES:Ljava/lang/String; = "AC_Language_Service_Downloaded_Languages_v2"

.field private static final FLAVOR_INSTALLED:Ljava/lang/String; = "FLAVOR_INSTALLED"

.field private static final LANGUAGE_DL:Ljava/lang/String; = "LANGUAGE_DL"

.field private static final LANGUAGE_ID:Ljava/lang/String; = "LANGUAGE_ID"

.field private static final MIGRATING_DOWNLOADED_LANGUAGES:Ljava/lang/String; = "AC_Language_Service_Downloaded_Languages"

.field private static final PREINSTALLED:Ljava/lang/String; = "PREINSTALLED"

.field private static final TYPE_INSTALLED:Ljava/lang/String; = "TYPE_INSTALLED"

.field private static final VERSION:Ljava/lang/String; = "VERSION"

.field private static final customer:Lcom/nuance/connect/util/Logger$Log;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private bInitialized:Z

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
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private final languageDatabases:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

.field private final languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private languageService:Lcom/nuance/connect/api/LanguageService;

.field public manager:Lcom/nuance/swypeconnect/ac/ACManager;

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
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->save()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isNewerVersionAvailable(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getInstalledLanguageModel(I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isPreinstalled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isDownloaded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getInstalledFlavor(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Lcom/nuance/connect/api/LanguageService;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    return-object v0
.end method

.method static synthetic access$900()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method private addSupportedLanguage(Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "LANGUAGE_DL"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isPreinstalled(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getType()Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v3

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->generateSupportedHashMap(Ljava/lang/Integer;ZILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Ljava/lang/Integer;Ljava/util/HashMap;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const-string/jumbo v2, "VERSION"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getType()Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v3

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->generateSupportedHashMap(Ljava/lang/Integer;ZILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Ljava/lang/Integer;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private addSupportedLanguage(Ljava/lang/Integer;Ljava/util/HashMap;)V
    .locals 4
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

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LanguageService;->getPrimaryLanguageId(I)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isPreinstalled(I)Z

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/nuance/connect/api/LanguageService;->addSupportedLanguage(IZ)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addSupportedLanguage(Ljava/lang/Integer;[Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V
    .locals 8

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    const/4 v2, -0x1

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    array-length v4, p2

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, p2, v3

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v1, v6, :cond_3

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getType()Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    if-ltz v2, :cond_0

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->generateSupportedHashMap(Ljava/lang/Integer;ZILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Ljava/lang/Integer;Ljava/util/HashMap;)V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private fillExistingLanguage(I)V
    .locals 8

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/api/LanguageService$LdbInfo;-><init>([ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;

    invoke-direct {v2, v0, p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;-><init>(Lcom/nuance/connect/api/LanguageService$LdbInfo;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v6

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isLanguageListAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService$ListCallback;->languageListUpdate()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private generateSupportedHashMap(Ljava/lang/Integer;ZILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "ZI",
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "LANGUAGE_ID"

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PREINSTALLED"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "VERSION"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "TYPE_INSTALLED"

    if-nez p4, :cond_0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FLAVOR_INSTALLED"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    invoke-virtual {p4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getInstalledFlavor(I)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->flavor:Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v2, "FLAVOR_INSTALLED"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getInstalledLanguageModel(I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .locals 3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->fromString(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    const-string/jumbo v2, "TYPE_INSTALLED"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->fromString(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Could not get language model for: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    goto :goto_0
.end method

.method private isDownloaded(I)Z
    .locals 5

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
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    iget v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->version:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private isNewerVersionAvailable(II)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_1
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    iget v3, v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->version:I

    :goto_0
    const-string/jumbo v1, "LANGUAGE_DL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "LANGUAGE_DL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string/jumbo v1, "LANGUAGE_DL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isPreinstalled(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isDownloaded(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    if-le p2, v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    :try_start_3
    const-string/jumbo v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string/jumbo v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private isPreinstalled(I)Z
    .locals 3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
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

    const-string/jumbo v2, "PREINSTALLED"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isSupported(I)Z
    .locals 3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private save()V
    .locals 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->access$1400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string/jumbo v2, "AC_Language_Service_Downloaded_Languages_v2"

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "addExistingLanguage xt9LanguageId is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    array-length v0, p2

    new-array v1, v0, [Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    aget-object v2, p2, v0

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/lang/String;Landroid/content/Context;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Ljava/lang/Integer;[Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->fillExistingLanguage(I)V

    goto :goto_0
.end method

.method public addExistingLanguage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/lang/String;Landroid/content/Context;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->fillExistingLanguage(I)V

    :cond_0
    return-void
.end method

.method public addSupportedLanguage(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "addSupportedLanguage xt9LanguageId is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->generateSupportedHashMap(Ljava/lang/Integer;ZILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Ljava/lang/Integer;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public addSupportedLanguages(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "addSupportedLanguage xt9LanguageId is null"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, -0x1

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->generateSupportedHashMap(Ljava/lang/Integer;ZILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Ljava/lang/Integer;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isLanguageListAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->notifyCallbacksOfStatus()V

    goto :goto_0
.end method

.method public cancelDownload(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/LanguageService;->getPrimaryLanguageId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6f

    const-string/jumbo v2, "The language you requested is not supported."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/LanguageService;->cancelDownload(I)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Exception canceling download: "

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v9, 0x6e

    const/4 v5, 0x0

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "downloadLanguage id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, " callback="

    invoke-interface {v1, v2, v3, v4, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isAuthorized(I)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v1, p1}, Lcom/nuance/connect/api/LanguageService;->getPrimaryLanguageId(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x6f

    const-string/jumbo v3, "The language you requested is not supported."

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x80

    const-string/jumbo v3, "callback cannot be null"

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;

    move-object v2, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The language you requested is not available: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :try_start_2
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Language download requested"

    invoke-interface {v1, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_3

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    move-object v5, v1

    :goto_0
    iget-object v8, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getVersion()I

    move-result v4

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;IILjava/lang/String;Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    invoke-interface {v8, v3, v1}, Lcom/nuance/connect/api/LanguageService;->downloadLanguage(ILcom/nuance/connect/api/LanguageService$DownloadCallback;)V

    return-void

    :cond_3
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    :try_end_2
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The language you requested is not available: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v9, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v9, 0x6f

    const/4 v8, 0x0

    const/16 v10, 0x6e

    invoke-virtual {p0, v8}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isAuthorized(I)V

    if-nez p2, :cond_0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const-string/jumbo v2, "Language type cannot be null."

    invoke-direct {v1, v9, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "downloadLanguage id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, " type="

    const-string/jumbo v6, " callback="

    move-object v5, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v1, p1}, Lcom/nuance/connect/api/LanguageService;->getPrimaryLanguageId(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The language "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " you requested is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    if-nez p3, :cond_2

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x80

    const-string/jumbo v3, "callback cannot be null"

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;

    move-object v2, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The language you requested is not available: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the language type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " you requested is not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_4
    array-length v5, v4

    move v1, v8

    :goto_0
    if-ge v1, v5, :cond_7

    aget-object v6, v4, v1

    if-ne v6, p2, :cond_5

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_6

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the language flavor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " you requested is not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :try_start_2
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Language download requested"

    invoke-interface {v1, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-static {v2, p2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->access$1500(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getVersion()I

    move-result v4

    invoke-virtual {p2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;IILjava/lang/String;Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    invoke-interface {v8, v3, v9, v1}, Lcom/nuance/connect/api/LanguageService;->downloadLanguage(ILjava/lang/String;Lcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    :try_end_2
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The language you requested is not available: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v10, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_7
    move v1, v8

    goto :goto_1
.end method

.method public downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v10, 0x6f

    const/16 v9, 0x6e

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isAuthorized(I)V

    if-nez p2, :cond_0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const-string/jumbo v2, "Language flavor cannot be null."

    invoke-direct {v1, v10, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    if-nez p3, :cond_1

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x80

    const-string/jumbo v3, "callback cannot be null"

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "downloadLanguageFlavor id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, " flavor="

    const-string/jumbo v6, " callback="

    move-object v5, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v1, p1}, Lcom/nuance/connect/api/LanguageService;->getPrimaryLanguageId(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The language "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " you requested is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;

    move-object v2, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The language you requested is not available: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getFlavors()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the language flavor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " you requested is not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_4
    array-length v5, v4

    move v1, v8

    :goto_0
    if-ge v1, v5, :cond_8

    aget-object v6, v4, v1

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_6

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the language flavor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " you requested is not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :try_start_2
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Language download requested"

    invoke-interface {v1, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_7

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    move-object v5, v1

    :goto_2
    iget-object v8, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getVersion()I

    move-result v4

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;IILjava/lang/String;Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    invoke-interface {v8, v3, p2, v1}, Lcom/nuance/connect/api/LanguageService;->downloadLanguage(ILjava/lang/String;Lcom/nuance/connect/api/LanguageService$DownloadCallback;)V

    return-void

    :cond_7
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    :try_end_2
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v1

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The language you requested is not available: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v9, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_8
    move v1, v8

    goto :goto_1
.end method

.method public getDatabase(I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/LanguageService;->getPrimaryLanguageId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The language "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " you requested is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x6e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The language you requested is not available: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getDatabaseList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    monitor-enter v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->getXt9LanguageId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "LANGUAGE"

    return-object v0
.end method

.method protected init(Lcom/nuance/connect/api/LanguageService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 9

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v0, "AC_Language_Service_Downloaded_Languages_v2"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "AC_Language_Service_Downloaded_Languages"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "AC_Language_Service_Downloaded_Languages"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v7, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ALM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v1, v0, v7, v8}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const-string/jumbo v0, "AC_Language_Service_Downloaded_Languages"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-interface {p1, v0}, Lcom/nuance/connect/api/LanguageService;->registerCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    return-void

    :cond_3
    const-string/jumbo v0, "AC_Language_Service_Downloaded_Languages_v2"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "AC_Language_Service_Downloaded_Languages_v2"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->fromJson(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public isAuthorized(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->requiresDocument(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Attempting to download a language before TOS has been accepted."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x68

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Please Accept the TOS before requesting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public isLanguageListAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->isLanguageListAvailable()Z

    move-result v0

    return v0
.end method

.method public languageUninstalled(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/LanguageService;->getPrimaryLanguageId(I)I

    move-result v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v4, "LANGUAGE_DL"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6f

    const-string/jumbo v2, "The language you requested is not supported."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v4, "LANGUAGE_DL"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->save()V

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/LanguageService;->languageUninstalled(I)V
    :try_end_3
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSupportedLanguage(Ljava/lang/Integer;)V
    .locals 4

    if-nez p1, :cond_1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "removeSupportedLanguage xt9LanguageId is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LanguageService;->getPrimaryLanguageId(I)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->save()V

    :try_start_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LanguageService;->cancelDownload(I)V
    :try_end_2
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->notifyCallbacksOfStatus()V

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error removeSupportedLanguage: "

    const-string/jumbo v3, " message: "

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method requireInitialization()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requiresDocument(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->requiresDocument(II)Z

    move-result v0

    return v0
.end method

.method public requiresDocument(II)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
