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

.field private final listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
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

.field private final store:Lcom/nuance/connect/store/PersistentDataStore;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/api/AddonDictionariesService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .registers 6

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    invoke-interface {p1, v0}, Lcom/nuance/connect/api/AddonDictionariesService;->registerDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->markPreinstalledDictionaries()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    return v0
.end method

.method static synthetic access$302(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/swypeconnect/ac/ACManager;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method private markPreinstalledDictionaries()V
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    monitor-enter v2

    :try_start_10
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_4d

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    array-length v5, v0

    move v2, v3

    :goto_2e
    if-ge v2, v5, :cond_20

    aget-object v6, v0, v2

    new-instance v7, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-direct {v7, v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;-><init>(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V

    invoke-virtual {v7}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;
    invoke-static {v7}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/api/AddonDictionariesService;->markDictionaryInstalled(Ljava/lang/String;)V

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0

    :cond_50
    return-void
.end method


# virtual methods
.method public final cancelDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "cancelDownload id="

    if-eqz p1, :cond_19

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_1b

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ACChineseDictionaryDownloadService.cancelDownload dict is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_18
    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_b

    :cond_1b
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/AddonDictionariesService;->cancelDownload(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public final downloadDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "downloadDictionary id="

    if-eqz p1, :cond_19

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p2, :cond_1b

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ACChineseDictionaryDownloadService.downloadDictionary callback is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_18
    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_b

    :cond_1b
    if-nez p1, :cond_2a

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ACChineseDictionaryDownloadService.downloadDictionary dict is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadFailed(I)V

    goto :goto_18

    :cond_2a
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;

    invoke-direct {v2, p0, p2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;)V

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/api/AddonDictionariesService;->installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V

    goto :goto_18
.end method

.method public final getAvailableDictionaries()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_15

    new-instance v3, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-direct {v3, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;-><init>(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_30
    return-object v1
.end method

.method public final getDownloadedDictionaries()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->hasUpdate()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->isSubscribed()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v3, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-direct {v3, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;-><init>(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_3c
    return-object v1
.end method

.method final getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "CHINESE_DICTIONARY_SERVICE"

    return-object v0
.end method

.method public final getUpdatableDictionaries()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->hasUpdate()Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v3, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-direct {v3, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;-><init>(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_30
    return-object v1
.end method

.method public final isDictionaryListAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->isDictionaryListAvailable()Z

    move-result v0

    return v0
.end method

.method public final preinstallDictionary(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "preinstallDictionary key is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_1d

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->markPreinstalledDictionaries()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->notifyDictionariesofStatus()V

    goto :goto_a

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public final registerCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->availableDictionaries(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->downloadedDictionaries(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->updatableDictionaries(Ljava/util/List;)V

    :cond_1c
    return-void
.end method

.method public final removeDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .registers 5

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "removeDictionary id="

    if-eqz p1, :cond_19

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_1b

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ACChineseDictionaryDownloadService.removeDictionary dict is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_18
    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_b

    :cond_1b
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    monitor-enter v1

    :try_start_1e
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_43

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/AddonDictionariesService;->removeDictionary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->notifyDictionariesofStatus()V

    goto :goto_18

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method final requireInitialization()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final requiresDocument(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method final shutdown()V
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->unregisterCallbacks()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isShutdown:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    return-void
.end method

.method final start()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isShutdown:Z

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;->listUpdated()V

    return-void
.end method

.method public final unregisterCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterCallbacks()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
