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
    .registers 1

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
    .registers 2

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
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->save()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;II)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isNewerVersionAvailable(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getInstalledLanguageModel(I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isPreinstalled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isDownloaded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getInstalledFlavor(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Lcom/nuance/connect/api/LanguageService;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    return-object v0
.end method

.method static synthetic access$900()Lcom/nuance/connect/util/Logger$Log;
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method private addSupportedLanguage(Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V
    .registers 7

    const/4 v4, 0x1

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_a
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_43

    if-eqz v0, :cond_1f

    const-string/jumbo v2, "LANGUAGE_DL"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    if-eqz v0, :cond_27

    invoke-direct {p0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isPreinstalled(I)Z

    move-result v2

    if-nez v2, :cond_46

    :cond_27
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

    :cond_42
    :goto_42
    return-void

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    :cond_46
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

    if-ge v0, v2, :cond_42

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

    goto :goto_42
.end method

.method private addSupportedLanguage(Ljava/lang/Integer;Ljava/util/HashMap;)V
    .registers 7
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

    :try_start_d
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

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw v0
.end method

.method private addSupportedLanguage(Ljava/lang/Integer;[Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V
    .registers 11

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_3e

    if-nez v0, :cond_4e

    if-eqz p2, :cond_4e

    array-length v0, p2

    if-lez v0, :cond_4e

    const/4 v2, -0x1

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    array-length v4, p2

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    :goto_18
    if-ge v3, v4, :cond_46

    aget-object v5, p2, v3

    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v1, v6, :cond_4f

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getType()Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    if-ltz v2, :cond_41

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_36
    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :goto_39
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_18

    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0

    :cond_41
    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v0

    goto :goto_36

    :cond_46
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->generateSupportedHashMap(Ljava/lang/Integer;ZILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Ljava/lang/Integer;Ljava/util/HashMap;)V

    :cond_4e
    return-void

    :cond_4f
    move v1, v2

    goto :goto_39
.end method

.method private fillExistingLanguage(I)V
    .registers 10

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_5
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2d

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

    :cond_2d
    monitor-exit v7
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_3c

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isLanguageListAvailable()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService$ListCallback;->languageListUpdate()V

    :cond_3b
    return-void

    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v7
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method private generateSupportedHashMap(Ljava/lang/Integer;ZILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/util/HashMap;
    .registers 8
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

    if-nez p4, :cond_39

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FLAVOR_INSTALLED"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_39
    invoke-virtual {p4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e
.end method

.method private getInstalledFlavor(I)Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->flavor:Ljava/lang/String;

    monitor-exit v1

    :goto_14
    return-object v0

    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_41

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_44

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

    :goto_3c
    monitor-exit v1

    goto :goto_14

    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_19 .. :try_end_40} :catchall_3e

    throw v0

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method private getInstalledLanguageModel(I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .registers 5

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->fromString(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v0

    monitor-exit v1

    :goto_18
    return-object v0

    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3d

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1d
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_40

    const-string/jumbo v2, "TYPE_INSTALLED"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->fromString(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v0

    monitor-exit v1

    goto :goto_18

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_3a

    throw v0

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    :cond_40
    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3a

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Could not get language model for: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    goto :goto_18
.end method

.method private isDownloaded(I)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    monitor-exit v2

    move v0, v1

    :goto_12
    return v0

    :cond_13
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_3a

    :try_start_16
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_3d

    :try_start_21
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_3a

    if-eqz v0, :cond_40

    :try_start_26
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    iget v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->version:I

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    :goto_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_42

    :try_start_38
    monitor-exit v2

    goto :goto_12

    :catchall_3a
    move-exception v0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v0

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3a

    :cond_40
    move v0, v1

    goto :goto_37

    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_3a
.end method

.method private isNewerVersionAvailable(II)Z
    .registers 8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_6e

    if-eqz v0, :cond_a8

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_16
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    iget v3, v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->version:I

    :goto_30
    const-string/jumbo v1, "LANGUAGE_DL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_73

    const-string/jumbo v1, "LANGUAGE_DL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_73

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

    :goto_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_16 .. :try_end_5e} :catchall_a1

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isPreinstalled(I)Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isDownloaded(I)Z

    move-result v1

    if-eqz v1, :cond_a4

    :cond_6a
    if-le p2, v0, :cond_a4

    const/4 v0, 0x1

    :goto_6d
    return v0

    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    :cond_71
    move v3, v2

    goto :goto_30

    :cond_73
    :try_start_73
    const-string/jumbo v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a6

    const-string/jumbo v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a6

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

    goto :goto_5d

    :catchall_a1
    move-exception v0

    monitor-exit v4
    :try_end_a3
    .catchall {:try_start_73 .. :try_end_a3} :catchall_a1

    throw v0

    :cond_a4
    move v0, v2

    goto :goto_6d

    :cond_a6
    move v0, v3

    goto :goto_5d

    :cond_a8
    move v0, v2

    goto :goto_6d
.end method

.method private isPreinstalled(I)Z
    .registers 5

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

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

    :goto_2f
    return v0

    :cond_30
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_2f

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v0
.end method

.method private isSupported(I)Z
    .registers 5

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private save()V
    .registers 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    # invokes: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->toJson()Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->access$1400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :catchall_30
    move-exception v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string/jumbo v2, "AC_Language_Service_Downloaded_Languages_v2"

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_b

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "addExistingLanguage xt9LanguageId is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    if-eqz p2, :cond_a

    array-length v0, p2

    new-array v1, v0, [Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    const/4 v0, 0x0

    :goto_11
    array-length v2, p2

    if-ge v0, v2, :cond_25

    aget-object v2, p2, v0

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/lang/String;Landroid/content/Context;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_25
    invoke-direct {p0, p1, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Ljava/lang/Integer;[Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->fillExistingLanguage(I)V

    goto :goto_a
.end method

.method public addExistingLanguage(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/lang/String;Landroid/content/Context;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->fillExistingLanguage(I)V

    :cond_16
    return-void
.end method

.method public addSupportedLanguage(Ljava/lang/Integer;)V
    .registers 5

    if-nez p1, :cond_b

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "addSupportedLanguage xt9LanguageId is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->generateSupportedHashMap(Ljava/lang/Integer;ZILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Ljava/lang/Integer;Ljava/util/HashMap;)V

    goto :goto_a
.end method

.method public addSupportedLanguages(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_23

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "addSupportedLanguage xt9LanguageId is null"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_c

    :cond_23
    const/4 v2, 0x0

    const/4 v3, -0x1

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->generateSupportedHashMap(Ljava/lang/Integer;ZILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Ljava/lang/Integer;Ljava/util/HashMap;)V

    goto :goto_c

    :cond_2f
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isLanguageListAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->notifyCallbacksOfStatus()V

    goto :goto_2
.end method

.method public cancelDownload(I)V
    .registers 5
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

    if-nez v1, :cond_17

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6f

    const-string/jumbo v2, "The language you requested is not supported."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/LanguageService;->cancelDownload(I)V
    :try_end_1c
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_17 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Exception canceling download: "

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .registers 13
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

    if-nez v1, :cond_2c

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x6f

    const-string/jumbo v3, "The language you requested is not supported."

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2c
    if-nez p2, :cond_39

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x80

    const-string/jumbo v3, "callback cannot be null"

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_39
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_3c
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;

    move-object v2, v0

    monitor-exit v4
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_5f

    if-nez v2, :cond_62

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

    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v4
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1

    :cond_62
    :try_start_62
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Language download requested"

    invoke-interface {v1, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    if-eqz v1, :cond_95

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_95

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    move-object v5, v1

    :goto_7f
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

    :cond_95
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    :try_end_97
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_62 .. :try_end_97} :catch_99

    move-object v5, v1

    goto :goto_7f

    :catch_99
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
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v9, 0x6f

    const/4 v8, 0x0

    const/16 v10, 0x6e

    invoke-virtual {p0, v8}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isAuthorized(I)V

    if-nez p2, :cond_13

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const-string/jumbo v2, "Language type cannot be null."

    invoke-direct {v1, v9, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_13
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

    if-nez v1, :cond_50

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

    :cond_50
    if-nez p3, :cond_5d

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x80

    const-string/jumbo v3, "callback cannot be null"

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_5d
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_60
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;

    move-object v2, v0

    monitor-exit v4
    :try_end_6b
    .catchall {:try_start_60 .. :try_end_6b} :catchall_83

    if-nez v2, :cond_86

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

    :catchall_83
    move-exception v1

    :try_start_84
    monitor-exit v4
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v1

    :cond_86
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v4

    if-nez v4, :cond_a9

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

    :cond_a9
    array-length v5, v4

    move v1, v8

    :goto_ab
    if-ge v1, v5, :cond_111

    aget-object v6, v4, v1

    if-ne v6, p2, :cond_d1

    const/4 v1, 0x1

    :goto_b2
    if-nez v1, :cond_d4

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

    :cond_d1
    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    :cond_d4
    :try_start_d4
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Language download requested"

    invoke-interface {v1, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getFlavorNameForType(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/lang/String;
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
    :try_end_f5
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_d4 .. :try_end_f5} :catch_f6

    return-void

    :catch_f6
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

    :cond_111
    move v1, v8

    goto :goto_b2
.end method

.method public downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v10, 0x6f

    const/16 v9, 0x6e

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isAuthorized(I)V

    if-nez p2, :cond_13

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const-string/jumbo v2, "Language flavor cannot be null."

    invoke-direct {v1, v10, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_13
    if-nez p3, :cond_20

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x80

    const-string/jumbo v3, "callback cannot be null"

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_20
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

    if-nez v1, :cond_5d

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

    :cond_5d
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_60
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;

    move-object v2, v0

    monitor-exit v4
    :try_end_6b
    .catchall {:try_start_60 .. :try_end_6b} :catchall_83

    if-nez v2, :cond_86

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

    :catchall_83
    move-exception v1

    :try_start_84
    monitor-exit v4
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v1

    :cond_86
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getFlavors()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a9

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

    :cond_a9
    array-length v5, v4

    move v1, v8

    :goto_ab
    if-ge v1, v5, :cond_12a

    aget-object v6, v4, v1

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d5

    const/4 v1, 0x1

    :goto_b6
    if-nez v1, :cond_d8

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

    :cond_d5
    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    :cond_d8
    :try_start_d8
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Language download requested"

    invoke-interface {v1, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    if-eqz v1, :cond_10b

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_10b

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    move-object v5, v1

    :goto_f5
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

    :cond_10b
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    :try_end_10d
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_d8 .. :try_end_10d} :catch_10f

    move-object v5, v1

    goto :goto_f5

    :catch_10f
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

    :cond_12a
    move v1, v8

    goto :goto_b6
.end method

.method public getDatabase(I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;
    .registers 7
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

    if-nez v1, :cond_2b

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

    :cond_2b
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_2e
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;

    if-nez v0, :cond_53

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

    :catchall_50
    move-exception v0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_2e .. :try_end_52} :catchall_50

    throw v0

    :cond_53
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_50

    return-object v0
.end method

.method public getDatabaseList()Ljava/util/List;
    .registers 6
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

    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

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

    if-eqz v4, :cond_2d

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_31
    monitor-exit v3

    return-object v2

    :catchall_33
    move-exception v0

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "LANGUAGE"

    return-object v0
.end method

.method protected init(Lcom/nuance/connect/api/LanguageService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .registers 13

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v0, "AC_Language_Service_Downloaded_Languages_v2"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    const-string/jumbo v0, "AC_Language_Service_Downloaded_Languages"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    const-string/jumbo v0, "AC_Language_Service_Downloaded_Languages"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_66

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_24
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

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

    goto :goto_2c

    :catchall_62
    move-exception v0

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_24 .. :try_end_64} :catchall_62

    throw v0

    :cond_65
    :try_start_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_62

    :cond_66
    const-string/jumbo v0, "AC_Language_Service_Downloaded_Languages"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-interface {p1, v0}, Lcom/nuance/connect/api/LanguageService;->registerCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    return-void

    :cond_74
    const-string/jumbo v0, "AC_Language_Service_Downloaded_Languages_v2"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string/jumbo v0, "AC_Language_Service_Downloaded_Languages_v2"

    invoke-interface {p2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_6c

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_8b
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_93
    :goto_93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->fromJson(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    move-result-object v1

    if-eqz v1, :cond_93

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_93

    :catchall_b5
    move-exception v0

    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_8b .. :try_end_b7} :catchall_b5

    throw v0

    :cond_b8
    :try_start_b8
    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b5

    goto :goto_6c
.end method

.method public isAuthorized(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->requiresDocument(II)Z

    move-result v0

    if-eqz v0, :cond_32

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

    :cond_32
    return-void
.end method

.method public isLanguageListAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->isLanguageListAvailable()Z

    move-result v0

    return v0
.end method

.method public languageUninstalled(I)V
    .registers 8
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

    :try_start_b
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v4, "LANGUAGE_DL"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :cond_2a
    :goto_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_58

    if-nez v0, :cond_5b

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6f

    const-string/jumbo v2, "The language you requested is not supported."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_38
    :try_start_38
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v4, "LANGUAGE_DL"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_2a

    :catchall_58
    move-exception v0

    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_38 .. :try_end_5a} :catchall_58

    throw v0

    :cond_5b
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5e
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_71

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->save()V

    :try_start_6b
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/LanguageService;->languageUninstalled(I)V
    :try_end_70
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_6b .. :try_end_70} :catch_74

    :goto_70
    return-void

    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0

    :catch_74
    move-exception v0

    goto :goto_70
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSupportedLanguage(Ljava/lang/Integer;)V
    .registers 6

    if-nez p1, :cond_b

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "removeSupportedLanguage xt9LanguageId is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LanguageService;->getPrimaryLanguageId(I)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_18
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    :goto_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_57

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_36
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloaded:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_5a

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->save()V

    :try_start_43
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LanguageService;->cancelDownload(I)V
    :try_end_48
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_43 .. :try_end_48} :catch_5d

    :goto_48
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->notifyCallbacksOfStatus()V

    goto :goto_a

    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_30

    :catchall_57
    move-exception v0

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_57

    throw v0

    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0

    :catch_5d
    move-exception v0

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error removeSupportedLanguage: "

    const-string/jumbo v3, " message: "

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_48
.end method

.method requireInitialization()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public requiresDocument(I)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->requiresDocument(II)Z

    move-result v0

    return v0
.end method

.method public requiresDocument(II)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_1e

    :cond_5
    :goto_5
    :pswitch_5
    return v0

    :pswitch_6
    if-ne p1, v1, :cond_5

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1c
    move v0, v1

    goto :goto_5

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method shutdown()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isShutdown:Z

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->unregisterCallbacks()V

    return-void
.end method

.method start()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isShutdown:Z

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService$ListCallback;->languageListUpdate()V

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
