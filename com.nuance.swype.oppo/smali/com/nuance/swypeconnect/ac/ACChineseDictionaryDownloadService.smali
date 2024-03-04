.class public final Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
.super Lcom/nuance/swypeconnect/ac/ACService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;,
        Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;,
        Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    }
.end annotation


# static fields
.field public static final REASON_FAILED_CANCELED:I = 0x2

.field public static final REASON_FAILED_HTTP:I = 0x0

.field public static final REASON_FAILED_MAX_RETRY:I = 0x1

.field public static final REASON_NETWORK_TIMEOUT:I = 0x4

.field public static final REASON_USER_CANCELED:I = 0x3


# instance fields
.field private addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

.field private bInitialized:Z

.field private final dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

.field private final listCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private manager:Lcom/nuance/swypeconnect/ac/ACManager;

.field private final preinstalledDictionaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resourcesService:Lcom/nuance/connect/api/ResourcesService;

.field private final store:Lcom/nuance/connect/store/PersistentDataStore;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation
.end field

.field private supportedLangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/api/AddonDictionariesService;Lcom/nuance/connect/api/ResourcesService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageList;->getChineseLanguages()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;

    invoke-direct {v1, p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->resourcesService:Lcom/nuance/connect/api/ResourcesService;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    invoke-interface {p1, v1}, Lcom/nuance/connect/api/AddonDictionariesService;->registerDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/util/Locale;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->getLocale()Ljava/util/Locale;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V

    invoke-interface {p2, v2, v0}, Lcom/nuance/connect/api/ResourcesService;->subscribe([Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/api/ResourcesService;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->resourcesService:Lcom/nuance/connect/api/ResourcesService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->markPreinstalledDictionaries()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    return v0
.end method

.method static synthetic access$602(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    return p1
.end method

.method static synthetic access$700(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method private markPreinstalledDictionaries()V
    .locals 6

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-direct {v4, p0, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-static {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$800(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/nuance/connect/api/AddonDictionariesService;->markDictionaryInstalled(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final cancelDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "cancelDownload id="

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$800(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ACChineseDictionaryDownloadService.cancelDownload dict is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$800(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/AddonDictionariesService;->cancelDownload(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final downloadDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "downloadDictionary id="

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$800(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ACChineseDictionaryDownloadService.downloadDictionary callback is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ACChineseDictionaryDownloadService.downloadDictionary dict is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadFailed(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$800(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;

    invoke-direct {v2, p0, p2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;)V

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/api/AddonDictionariesService;->installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V

    goto :goto_1
.end method

.method public final getAvailableDictionaries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getLanguage()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->usesXT9Id(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-direct {v1, p0, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final getDownloadedDictionaries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getLanguage()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->usesXT9Id(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->hasUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->isSubscribed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-direct {v1, p0, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CHINESE_DICTIONARY_SERVICE"

    return-object v0
.end method

.method public final getUpdatableDictionaries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getLanguage()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->usesXT9Id(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->hasUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-direct {v1, p0, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final isDictionaryListAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->resourcesService:Lcom/nuance/connect/api/ResourcesService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/connect/api/ResourcesService;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->isDictionaryListAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public final preinstallDictionary(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "preinstallDictionary key is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->markPreinstalledDictionaries()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->notifyDictionariesofStatus()V

    goto :goto_0
.end method

.method public final registerCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->availableDictionaries(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->downloadedDictionaries(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->updatableDictionaries(Ljava/util/List;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final removeDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .locals 3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "removeDictionary id="

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$800(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ACChineseDictionaryDownloadService.removeDictionary dict is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$800(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/AddonDictionariesService;->removeDictionary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->notifyDictionariesofStatus()V

    goto :goto_1
.end method

.method final requireInitialization()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final requiresDocument(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final shutdown()V
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->unregisterCallbacks()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isShutdown:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    return-void
.end method

.method final start()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isShutdown:Z

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;->listUpdated()V

    return-void
.end method

.method public final unregisterCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

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

.method public final unregisterCallbacks()V
    .locals 2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

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
