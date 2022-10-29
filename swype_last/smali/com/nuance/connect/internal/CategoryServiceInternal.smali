.class Lcom/nuance/connect/internal/CategoryServiceInternal;
.super Lcom/nuance/connect/internal/AbstractService;

# interfaces
.implements Lcom/nuance/connect/api/AddonDictionariesService;
.implements Lcom/nuance/connect/api/CatalogService;
.implements Lcom/nuance/connect/api/LivingLanguageService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/CategoryServiceInternal$12;,
        Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;,
        Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;,
        Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;,
        Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;,
        Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;
    }
.end annotation


# static fields
.field private static final CATALOG_LABELS_PREF:Ljava/lang/String; = "CATEGORY_SERVICE_CATALOG_LABELS"

.field private static final MESSAGE_IDS:[I

.field private static final SEND_DELAY:I = 0x3a98

.field private static final SEND_DELAY_LIMIT:I = 0xbb8

.field private static final SEND_DELAY_ONE_SECOND:I = 0x3e8

.field private static final SEND_DELAY_SHORT:I = 0xa

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final availableDownloadDictionaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final catalogAllPurchasedSkuSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final catalogAvailableLabelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;"
        }
    .end annotation
.end field

.field private final catalogAvailableSkuSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final catalogDownloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final catalogLabelList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final catalogListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogCallback;",
            ">;"
        }
    .end annotation
.end field

.field private catalogListReceived:Z

.field private final catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final catalogPurchasedSkuList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final catalogRedownloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final catalogSKUListAvailableCheck:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final catalogSKUsChanged:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final catalogSkuForPurchaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;"
        }
    .end annotation
.end field

.field private final catalogSkuPriceList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private catalogStatus:Z

.field private changedCatalogFlagCount:I

.field private final connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private final database:Lcom/nuance/connect/sqlite/CategoryDatabase;

.field private final dictionaryDownloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final dictionaryListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private dictionaryListReceived:Z

.field private final handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private final handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

.field private final lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

.field private livingLanguageAvailable:Z

.field private final livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/connect/api/LivingLanguageService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private livingLanguageHotwordsStatus:Z

.field private livingLanguageStatus:Z

.field private livingLanguageUDAStatus:Z

.field private final mHandler:Landroid/os/Handler;

.field private final oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private final processCatalogSKUListAvailable:Ljava/lang/Runnable;

.field private final redownloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final sendCatalogItemsChangedCallback:Ljava/lang/Runnable;

.field private final sendCatalogPurchasedSKUs:Ljava/lang/Runnable;

.field private final sendCatalogStatus:Ljava/lang/Runnable;

.field private final sendHotwordsStatus:Ljava/lang/Runnable;

.field private final sendMaxLimit:Ljava/lang/Runnable;

.field private final sendSkuListChanged:Ljava/lang/Runnable;

.field private final skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-string/jumbo v1, "CategoryService"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const/16 v0, 0x12

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ON_DICTIONARIES_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_UNINSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LIVING_LANGUAGE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ADD_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPDATE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_REMOVE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_NOTIFY_LIVING_LANGUAGE_UPDATE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LIVING_LANGUAGE_MAX_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATALOG_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATALOG_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CATALOG_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATALOG_LOCATION_CHANGED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->MESSAGE_IDS:[I

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstractService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable:Z

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$1;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$2;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendMaxLimit:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogStatus:Z

    iput v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->changedCatalogFlagCount:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableSkuSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUsChanged:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableLabelMap:Ljava/util/Map;

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUListAvailableCheck:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$3;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendCatalogStatus:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$4;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendCatalogItemsChangedCallback:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$5;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$5;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendCatalogPurchasedSKUs:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$6;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$6;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendSkuListChanged:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$7;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->processCatalogSKUListAvailable:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$8;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$8;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->listener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$9;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isLivingLanguageEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isCatalogEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogStatus:Z

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    monitor-enter v1

    :try_start_10c
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/UserSettings;->getCatalogPurchasedSKUList()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_10c .. :try_end_11c} :catchall_16c

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "CATEGORY_SERVICE_CATALOG_LABELS"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_12a
    invoke-static {v0}, Lcom/nuance/connect/util/MapMarshal;->toStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_133} :catch_16f

    :goto_133
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string/jumbo v1, "USER_ALLOW_USAGE_COLLECTION"

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->listener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->start()V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogStatus:Z

    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16b

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->process(ILjava/lang/Object;)V

    :cond_16b
    return-void

    :catchall_16c
    move-exception v0

    :try_start_16d
    monitor-exit v1
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16c

    throw v0

    :catch_16f
    move-exception v1

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Could not process the catalog labels list: "

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_133
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUListAvailableCheck:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCurrentDeviceCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .registers 2

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdsForSKUs()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdForSKU(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCatalogItem(Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setLivingLanguageStatus(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->onDictionariesUpdated()V

    return-void
.end method

.method static synthetic access$2000(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getSKUFromCategoryId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/nuance/connect/internal/CategoryServiceInternal;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->isCategoryLivingLanguage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendMaxLimit:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->onCatalogsChanged()V

    return-void
.end method

.method static synthetic access$3000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    return-void
.end method

.method static synthetic access$3200(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackOfSkusChanged()V

    return-void
.end method

.method static synthetic access$3300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->processCatalogSKUListAvailable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->saveDeviceCountry(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/sqlite/CategoryDatabase;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    return-object v0
.end method

.method static synthetic access$3700()[I
    .registers 1

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->MESSAGE_IDS:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->onCatalogsPricesSet(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->onCatalogPricesReset()V

    return-void
.end method

.method static synthetic access$600()Lcom/nuance/connect/util/Logger$Log;
    .registers 1

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogStatus:Z

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    return-object v0
.end method

.method private getCatalogItem(Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
    .registers 5

    if-eqz p1, :cond_b

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    goto :goto_c

    :cond_1e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    monitor-enter v1

    :try_start_26
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_31

    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCatalogItem(Ljava/lang/String;Ljava/util/Map;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    move-result-object v0

    goto :goto_c

    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method private getCatalogItem(Ljava/lang/String;Ljava/util/Map;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_f
    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUsChanged:Ljava/util/Set;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->loadCatalogItemFromProperties(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    move-result-object v0

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_20
    move-exception v0

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private getCategoryIdForSKU(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_39

    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v3, "130"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_38
    return-object v0

    :cond_39
    const/4 v0, 0x0

    goto :goto_38
.end method

.method private getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_b

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_1c
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdsForSKUs()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdForSKU(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private getCategoryIdsForSKUs()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "130"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allWithProperty(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getCategoryListFromKeySet(Ljava/util/Set;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_28
    move-exception v0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    return-object v1
.end method

.method private getCurrentDeviceCountry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getLocationCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSKUFromCategoryId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "130"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCategoryLivingLanguage(I)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, v1, :cond_7

    const/4 v2, 0x3

    if-ne p1, v2, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    return v0
.end method

.method private loadCatalogItemFromProperties(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;"
        }
    .end annotation

    if-eqz p2, :cond_8

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_8
    sget-object v2, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "empty catalog item: "

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    :cond_13
    :goto_13
    return-object v2

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPendingPrice()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_32
    :try_start_32
    const-string/jumbo v3, "PROP_TYPE"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v7

    const-string/jumbo v3, "133"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/nuance/connect/util/MapMarshal;->toStringIntegerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v3, "128"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v3, "113"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setDateToEPOC(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v13

    const-string/jumbo v3, "26"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setDateToEPOC(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v14

    const-string/jumbo v3, "27"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setDateToEPOC(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v15

    const-string/jumbo v3, "135"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setDateToEPOC(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v16

    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setDateToEPOC(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v17

    const-string/jumbo v3, "136"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    const-string/jumbo v3, "137"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->stringToList(Ljava/lang/String;)Ljava/util/List;
    :try_end_cf
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_cf} :catch_1d5
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_cf} :catch_358

    move-result-object v21

    const/high16 v4, -0x80000000

    :try_start_d2
    const-string/jumbo v3, "STEP"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e0
    .catch Ljava/lang/NumberFormatException; {:try_start_d2 .. :try_end_e0} :catch_1ca
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e0} :catch_358

    move-result v3

    move v4, v3

    :goto_e2
    :try_start_e2
    const-string/jumbo v3, "STATUS_AVAILABLE"

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1f2

    if-lez v4, :cond_1f2

    const-string/jumbo v3, "STATUS_DOWNLOADING"

    :cond_ed
    :goto_ed
    const-string/jumbo v4, "UNSUBSCRIBE_PENDING"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_409

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UNSUBSCRIBE_PENDING"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_409

    const-string/jumbo v3, "STATUS_UNINSTALL_PENDING"

    move-object/from16 v24, v3

    :goto_112
    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$api$CatalogService$CatalogItem$Type:[I

    invoke-virtual {v7}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_40e

    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Unsupported catalog type: "

    invoke-interface {v3, v4, v7}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v2

    :goto_126
    if-eqz v3, :cond_1c7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    monitor-enter v4
    :try_end_12d
    .catch Ljava/lang/NumberFormatException; {:try_start_e2 .. :try_end_12d} :catch_1d5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_12d} :catch_358

    :try_start_12d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setPrice(Ljava/lang/String;)V

    :cond_14c
    monitor-exit v4
    :try_end_14d
    .catchall {:try_start_12d .. :try_end_14d} :catchall_3e4

    :try_start_14d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    monitor-enter v4
    :try_end_152
    .catch Ljava/lang/NumberFormatException; {:try_start_14d .. :try_end_152} :catch_1d5
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_152} :catch_358

    :try_start_152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_163

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setPurchased()V

    :cond_163
    monitor-exit v4
    :try_end_164
    .catchall {:try_start_152 .. :try_end_164} :catchall_3e7

    :try_start_164
    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchased()Z

    move-result v2

    if-eqz v2, :cond_3f5

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v2

    sget-object v4, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    if-ne v2, v4, :cond_3ea

    move-object v0, v3

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getAllChildrenSKUs()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_17f
    :goto_17f
    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isFree()Z

    move-result v2

    if-nez v2, :cond_1a4

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchased()Z

    move-result v2

    if-nez v2, :cond_1a4

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchaseLookupAble()Z

    move-result v2

    if-eqz v2, :cond_1a4

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableNow()Z
    invoke-static {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->access$3900(Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a4
    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPendingPrice()Z

    move-result v2

    if-eqz v2, :cond_1b3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c7
    move-object v2, v3

    goto/16 :goto_13

    :catch_1ca
    move-exception v3

    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "Could not parse step"

    invoke-interface {v3, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_1d3
    .catch Ljava/lang/NumberFormatException; {:try_start_164 .. :try_end_1d3} :catch_1d5
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_1d3} :catch_358

    goto/16 :goto_e2

    :catch_1d5
    move-exception v2

    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error Processing Catalog Item Number: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_1ef
    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_1f2
    const/4 v5, 0x7

    if-ne v4, v5, :cond_26f

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/high16 v8, -0x8000000000000000L

    :try_start_1f9
    const-string/jumbo v3, "LAST_UPDATE_FETCHED"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v3, "LAST_UPDATE_AVAILABLE"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_216
    .catch Ljava/lang/NumberFormatException; {:try_start_1f9 .. :try_end_216} :catch_25b
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_216} :catch_358

    move-result-wide v8

    move-wide/from16 v25, v8

    move-wide v8, v4

    move-wide/from16 v4, v25

    :goto_21c
    cmp-long v3, v8, v4

    if-gez v3, :cond_26a

    :try_start_220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Catalog item has update -- key: ["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] lastFetched: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] lastAvailable: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v3, "STATUS_INSTALLED_WITH_UPDATE"

    goto/16 :goto_ed

    :catch_25b
    move-exception v3

    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, "Could not read times."

    invoke-interface {v3, v10}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move-wide/from16 v25, v8

    move-wide v8, v4

    move-wide/from16 v4, v25

    goto :goto_21c

    :cond_26a
    const-string/jumbo v3, "STATUS_INSTALLED"

    goto/16 :goto_ed

    :cond_26f
    const/16 v5, 0x8

    if-ne v4, v5, :cond_278

    const-string/jumbo v3, "STATUS_CANCELED"

    goto/16 :goto_ed

    :cond_278
    const/16 v5, 0xa

    if-ne v4, v5, :cond_ed

    const-string/jumbo v3, "STATUS_UNINSTALL_PENDING"

    goto/16 :goto_ed

    :pswitch_281
    new-instance v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    const-string/jumbo v3, "16"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v3, "130"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v3, "17"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v3, "132"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v3, "18"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v3, "129"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v3, "127"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v3, "98"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string/jumbo v3, "PROP_BUNDLED_THEMES_CDB"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string/jumbo v3, "PROP_BUNDLED_THEMES_SKUS"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v3, p1

    move-object/from16 v19, p3

    invoke-direct/range {v2 .. v23}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setStatus(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getBundledCatalogItemCategoryIdList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_406

    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "bundle.getBundledCatalogItemCategoryIdList()"

    invoke-virtual {v10}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getBundledCatalogItemCategoryIdList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getBundledCatalogItemCategoryIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_31f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_374

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v3, v4}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/nuance/connect/internal/CategoryServiceInternal;->loadCatalogItemFromProperties(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    :cond_34a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v10, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->addBundledItem(Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;)V
    :try_end_357
    .catch Ljava/lang/NumberFormatException; {:try_start_220 .. :try_end_357} :catch_1d5
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_357} :catch_358

    goto :goto_31f

    :catch_358
    move-exception v2

    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error Processing Catalog Item: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_1ef

    :cond_374
    move-object v3, v2

    goto/16 :goto_126

    :pswitch_377
    :try_start_377
    new-instance v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    const-string/jumbo v3, "16"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v3, "130"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v3, "17"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v3, "132"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v3, "18"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v3, "129"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v3, "127"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v3, "98"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v3, p1

    move-object/from16 v19, p3

    invoke-direct/range {v2 .. v21}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setStatus(Ljava/lang/String;)V
    :try_end_3e1
    .catch Ljava/lang/NumberFormatException; {:try_start_377 .. :try_end_3e1} :catch_1d5
    .catch Ljava/lang/Exception; {:try_start_377 .. :try_end_3e1} :catch_358

    move-object v3, v2

    goto/16 :goto_126

    :catchall_3e4
    move-exception v2

    :try_start_3e5
    monitor-exit v4
    :try_end_3e6
    .catchall {:try_start_3e5 .. :try_end_3e6} :catchall_3e4

    :try_start_3e6
    throw v2
    :try_end_3e7
    .catch Ljava/lang/NumberFormatException; {:try_start_3e6 .. :try_end_3e7} :catch_1d5
    .catch Ljava/lang/Exception; {:try_start_3e6 .. :try_end_3e7} :catch_358

    :catchall_3e7
    move-exception v2

    :try_start_3e8
    monitor-exit v4
    :try_end_3e9
    .catchall {:try_start_3e8 .. :try_end_3e9} :catchall_3e7

    :try_start_3e9
    throw v2

    :cond_3ea
    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17f

    :cond_3f5
    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17f

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setPurchased()V
    :try_end_404
    .catch Ljava/lang/NumberFormatException; {:try_start_3e9 .. :try_end_404} :catch_1d5
    .catch Ljava/lang/Exception; {:try_start_3e9 .. :try_end_404} :catch_358

    goto/16 :goto_17f

    :cond_406
    move-object v3, v2

    goto/16 :goto_126

    :cond_409
    move-object/from16 v24, v3

    goto/16 :goto_112

    nop

    :pswitch_data_40e
    .packed-switch 0x1
        :pswitch_281
        :pswitch_377
    .end packed-switch
.end method

.method private notifyCatalogCallbackOfSkusChanged()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendSkuListChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendSkuListChanged:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private notifyCatalogCallbackofInstalledUpdates(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CatalogItem notifyCatalogCallbackofInstalledUpdates called"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/connect/internal/CategoryServiceInternal$10;

    invoke-direct {v1, p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$10;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyCatalogCallbackofItemsChanged()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendCatalogItemsChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendCatalogItemsChangedCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onCatalogPricesReset()V
    .registers 4

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_44

    const/4 v0, 0x1

    move v1, v0

    :goto_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_47

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "resetCatalogItemPrice()"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1f
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->resetPrice()V
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_39

    goto :goto_29

    :catchall_39
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_44
    const/4 v0, 0x0

    move v1, v0

    goto :goto_d

    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    :cond_4a
    :try_start_4a
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->rebuildSkuAvailableList()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_39

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    monitor-enter v2

    :try_start_59
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_68

    if-eqz v1, :cond_67

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackOfSkusChanged()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    :cond_67
    return-void

    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0
.end method

.method private onCatalogsChanged()V
    .registers 15

    const/4 v2, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "PROP_TYPE"

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allWithProperty(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "onCatalogsChanged: "

    invoke-interface {v1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1ab

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1ab

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_39
    new-instance v5, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v6, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUsChanged:Ljava/util/Set;

    invoke-direct {v6, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_4e
    .catchall {:try_start_39 .. :try_end_4e} :catchall_da

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    monitor-enter v1

    :try_start_5e
    iget-object v7, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_df

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_76
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_82
    sget-object v12, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$api$CatalogService$CatalogItem$Type:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v13, "PROP_TYPE"

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v1

    aget v1, v12, v1

    packed-switch v1, :pswitch_data_1c0

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v12, "Unsupported catalog type: "

    invoke-interface {v1, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_a8} :catch_a9

    goto :goto_76

    :catch_a9
    move-exception v1

    sget-object v12, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Type is not correct for "

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v13, "; contents="

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_f2

    const-string/jumbo v0, "null"

    :goto_ce
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_76

    :catchall_da
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_df
    move-exception v0

    :try_start_e0
    monitor-exit v1
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v0

    :pswitch_e2
    :try_start_e2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_76

    :pswitch_ea
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f1} :catch_a9

    goto :goto_76

    :cond_f2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_ce

    :cond_f7
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v7, v2

    :goto_fc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->loadCatalogItemFromProperties(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    if-eqz v0, :cond_1bc

    sget-object v2, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "bundle cat: "

    const-string/jumbo v12, ", bundledItem: "

    iget-object v13, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundleItems:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v2, v7, v1, v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getBundledCatalogItemCategoryIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->isUpdateAvailable()Z

    move-result v1

    if-eqz v1, :cond_138

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_138
    move v0, v8

    :goto_139
    move v7, v0

    goto :goto_fc

    :cond_13b
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_13f
    :goto_13f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_163

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->loadCatalogItemFromProperties(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    move-result-object v0

    if-eqz v0, :cond_13f

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isUpdateAvailable()Z

    move-result v1

    if-eqz v1, :cond_161

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_161
    move v7, v8

    goto :goto_13f

    :cond_163
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_16c
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->rebuildSkuAvailableList()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUsChanged:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_188
    .catchall {:try_start_16c .. :try_end_188} :catchall_1b7

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iput-boolean v8, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListReceived:Z

    if-eqz v7, :cond_1a2

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/connect/internal/CategoryServiceInternal$11;

    invoke-direct {v1, p0, v6}, Lcom/nuance/connect/internal/CategoryServiceInternal$11;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1ab

    invoke-direct {p0, v9}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofInstalledUpdates(Ljava/util/List;)V

    :cond_1ab
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string/jumbo v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string/jumbo v2, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    return-void

    :catchall_1b7
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1bc
    move v0, v7

    goto/16 :goto_139

    nop

    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_e2
        :pswitch_ea
    .end packed-switch
.end method

.method private onCatalogsPricesSet(Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_7
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    monitor-enter v1

    :try_start_a
    new-instance v5, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_72

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1c
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "changing price for sku: "

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, " to: "

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v2, v7, v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5c

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    :cond_5c
    if-eqz v1, :cond_64

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_75

    :cond_64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->resetPrice()V
    :try_end_70
    .catchall {:try_start_1c .. :try_end_70} :catchall_a7

    move v4, v3

    goto :goto_24

    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v0

    :cond_75
    :try_start_75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_b5

    invoke-virtual {v2, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setPrice(Ljava/lang/String;)V

    move v0, v3

    :goto_82
    move v4, v0

    goto :goto_24

    :cond_84
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->rebuildSkuAvailableList()V
    :try_end_87
    .catchall {:try_start_75 .. :try_end_87} :catchall_a7

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    monitor-enter v1

    :try_start_93
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_93 .. :try_end_9e} :catchall_b2

    if-eqz v4, :cond_a6

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackOfSkusChanged()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    :cond_a6
    return-void

    :catchall_a7
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v0

    :cond_b5
    move v0, v4

    goto :goto_82
.end method

.method private onDictionariesUpdated()V
    .registers 15

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allCategoryIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "onDictionariesUpdated count="

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_21
    :goto_21
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_21

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    :try_start_3b
    const-string/jumbo v0, "116"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v0, :cond_4b

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_4a} :catch_12b

    move-result v6

    :cond_4b
    const/high16 v2, -0x80000000

    :try_start_4d
    const-string/jumbo v0, "STEP"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_59} :catch_147

    move-result v0

    move v2, v0

    :goto_5b
    :try_start_5b
    const-string/jumbo v0, "STATUS_AVAILABLE"

    const/4 v3, 0x7

    if-ge v2, v3, :cond_152

    if-lez v2, :cond_152

    const-string/jumbo v0, "STATUS_DOWNLOADING"

    move-object v9, v0

    :goto_67
    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    const-string/jumbo v2, "78"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "16"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "18"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "13"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v7, "124"

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v11, "125"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1da

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "STATUS_CANCELED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d7

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d7

    const/4 v3, 0x1

    move v2, v3

    :goto_d5
    const-string/jumbo v3, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "STATUS_AVAILABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ec

    const/4 v2, 0x1

    :cond_ec
    :goto_ec
    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getCategory()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_112

    const-string/jumbo v3, ""

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_112

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_112

    const-string/jumbo v3, ""

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    :cond_112
    sget-object v2, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Chinese Dictionary being filtered ("

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getDictionary()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    :cond_122
    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_129
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_129} :catch_12b

    goto/16 :goto_21

    :catch_12b
    move-exception v0

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error Processing Chinese Dictionaries: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_21

    :catch_147
    move-exception v0

    :try_start_148
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Could not parse step"

    invoke-interface {v0, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_150
    .catch Ljava/lang/NumberFormatException; {:try_start_148 .. :try_end_150} :catch_12b

    goto/16 :goto_5b

    :cond_152
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1dd

    const-wide/high16 v2, -0x8000000000000000L

    const-wide/high16 v4, -0x8000000000000000L

    :try_start_159
    const-string/jumbo v0, "LAST_UPDATE_FETCHED"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v0, "LAST_UPDATE_AVAILABLE"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_172
    .catch Ljava/lang/NumberFormatException; {:try_start_159 .. :try_end_172} :catch_1b2

    move-result-wide v4

    move-wide v12, v4

    move-wide v4, v2

    move-wide v2, v12

    :goto_176
    cmp-long v0, v4, v2

    if-gez v0, :cond_1bf

    :try_start_17a
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Chinese dictionary has update -- key: ["

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "] lastFetched: ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] lastAvailable: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v0, "STATUS_INSTALLED_WITH_UPDATE"

    move-object v9, v0

    goto/16 :goto_67

    :catch_1b2
    move-exception v0

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "Could not read times."

    invoke-interface {v0, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move-wide v12, v4

    move-wide v4, v2

    move-wide v2, v12

    goto :goto_176

    :cond_1bf
    const-string/jumbo v0, "STATUS_INSTALLED"
    :try_end_1c2
    .catch Ljava/lang/NumberFormatException; {:try_start_17a .. :try_end_1c2} :catch_12b

    move-object v9, v0

    goto/16 :goto_67

    :cond_1c5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListReceived:Z

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyDictionariesofStatus()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string/jumbo v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string/jumbo v2, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    return-void

    :cond_1d7
    move v2, v3

    goto/16 :goto_d5

    :cond_1da
    move v2, v3

    goto/16 :goto_ec

    :cond_1dd
    move-object v9, v0

    goto/16 :goto_67
.end method

.method private rebuildSkuAvailableList()V
    .registers 8

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableSkuSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableLabelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCurrentDeviceCountry()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableSkuSet:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableLabelMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_9 .. :try_end_59} :catchall_5a

    goto :goto_44

    :catchall_5a
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_65
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private saveDeviceCountry(Ljava/lang/String;J)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setLocationCountry(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/nuance/connect/internal/UserSettings;->setLocationCountryTimestamp(J)V

    return-void
.end method

.method private savePurchasedSkuList()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/UserSettings;->setCatalogPurchasedSKUList(Ljava/util/Set;)V

    return-void
.end method

.method private setDateToEPOC(Ljava/lang/String;)Ljava/util/Calendar;
    .registers 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string/jumbo v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return-object v0

    :cond_20
    :try_start_20
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b

    goto :goto_1f

    :catch_2b
    move-exception v1

    sget-object v2, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error Creating creating calendar"

    const-string/jumbo v4, " error: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, p1, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1f
.end method

.method private setLivingLanguageStatus(Z)V
    .registers 6

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "setLivingLanguageStatus("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p1, 0x0

    :cond_16
    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setLivingLanguageEnabled(Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stringToList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    return-object v0

    :cond_8
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_7
.end method

.method private subscribe(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    return-void
.end method

.method private subscribeNoDownload(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_NO_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    return-void
.end method

.method private subscribeNoDownload(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v0, ","

    invoke-static {p1, v0}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_NO_DOWNLOAD_LIST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0, v3, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    return-void
.end method

.method private unsubscribe(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_UNSUBSCRIBE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cannot cancel dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_11
    return-void

    :cond_12
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    monitor-enter v2

    :try_start_15
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_4c

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    const-string/jumbo v2, "STATUS_CANCELED"

    invoke-virtual {v0, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->wasInstalled()Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x7

    :goto_40
    invoke-interface {v2, v3, p1, v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "canceling unsubscribing dict="

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0

    :cond_4f
    move v0, v1

    goto :goto_40
.end method

.method public cancelDownloadCatalogItem(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CategoryServiceInternal.cancelDownloadCatalogItem("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_17

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_17
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CatalogItem cannot cancel catalog download for empty sku"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_1f
    return-void

    :cond_20
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_23
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "CatalogItem cannot cancel catalog download for sku not being downloaded: "

    invoke-interface {v0, v2, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_1f

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_3c
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_62

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    :cond_59
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CatalogItem cannot cancel catalog download for empty ID"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1f

    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0

    :cond_65
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v2, "STEP"

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATALOG_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0, v4, v4}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CatalogItem canceling sku="

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1f
.end method

.method public cancelLivingDownloads()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public disableCatalog()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/UserSettings;->setCatalogEnabled(Z)V

    iput-boolean v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogStatus:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendCatalogStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendCatalogStatus:Ljava/lang/Runnable;

    iget v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->changedCatalogFlagCount:I

    mul-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->changedCatalogFlagCount:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->changedCatalogFlagCount:I

    return-void
.end method

.method public disableLivingLanguage()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setLivingLanguageStatus(Z)V

    return-void
.end method

.method public downloadCatalogItem(Ljava/lang/String;Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;)V
    .registers 16

    const/16 v12, 0x9

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CategoryServiceInternal.downloadCatalogItem("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_18

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_18
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CatalogItem cannot download catalog for empty sku"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_20
    return-void

    :cond_21
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_24
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "CatalogItem cannot download SKU already downloading: "

    invoke-interface {v0, v2, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_20

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_36

    throw v0

    :cond_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_36

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    :cond_49
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CatalogItem cannot download catalog for empty ID"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_20

    :cond_52
    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCatalogItem(Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getStatus()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "install CatalogItem dict="

    const-string/jumbo v3, " status="

    const-string/jumbo v5, " type="

    invoke-virtual {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v6

    const-string/jumbo v7, " downloadable="

    invoke-virtual {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isDownloadable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v9, " catId="

    invoke-virtual {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryId()Ljava/lang/String;

    move-result-object v10

    move-object v2, p1

    invoke-interface/range {v0 .. v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {p2, v12}, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;->downloadStopped(I)V

    goto :goto_20

    :cond_8f
    invoke-virtual {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isDownloadable()Z

    move-result v0

    if-nez v0, :cond_99

    invoke-interface {p2, v12}, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;->downloadStopped(I)V

    goto :goto_20

    :cond_99
    const-string/jumbo v0, "STATUS_AVAILABLE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    const-string/jumbo v0, "STATUS_CANCELED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_ae
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto/16 :goto_20

    :catchall_b6
    move-exception v0

    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_ae .. :try_end_b8} :catchall_b6

    throw v0

    :cond_b9
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_bc
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_c2
    .catchall {:try_start_bc .. :try_end_c2} :catchall_ce

    invoke-virtual {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->download()V

    invoke-virtual {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->subscribe(Ljava/lang/String;)V

    goto/16 :goto_20

    :catchall_ce
    move-exception v0

    :try_start_cf
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v0
.end method

.method public enableCatalog()V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/UserSettings;->setCatalogEnabled(Z)V

    iput-boolean v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogStatus:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendCatalogStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendCatalogStatus:Ljava/lang/Runnable;

    iget v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->changedCatalogFlagCount:I

    mul-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->changedCatalogFlagCount:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->changedCatalogFlagCount:I

    return-void
.end method

.method public enableLivingLanguage()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setLivingLanguageStatus(Z)V

    return-void
.end method

.method public forcePendingLivingToForeground()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_FOREGROUND:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public getAvailableDictionaries()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCatalogItemByCategory(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_e
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdsForSKUs()Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableSkuSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdForSKU(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_38

    sget-object v5, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Could not find SKU: "

    invoke-interface {v5, v6, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_33

    goto :goto_18

    :catchall_33
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_38
    :try_start_38
    invoke-direct {p0, v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCatalogItem(Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    move-result-object v0

    if-eqz v0, :cond_18

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->inCategory(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->access$3800(Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_33

    goto :goto_18

    :cond_48
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1
.end method

.method public getCatalogItemCategories()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableLabelMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_22

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryListFromKeySet(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_22
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getCatalogItemCategoriesByType(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_e
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableLabelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_36

    goto :goto_18

    :catchall_36
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_41
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1
.end method

.method public getCatalogItems()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_e
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableSkuSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    sget-object v4, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "SKU: "

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, " is available."

    invoke-interface {v4, v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_4b

    goto :goto_18

    :catchall_4b
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_50
    :try_start_50
    sget-object v4, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "SKU: "

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v6, " is NOT available."

    invoke-interface {v4, v5, v0, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_50 .. :try_end_5f} :catchall_4b

    goto :goto_18

    :cond_60
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCatalogItemsByType(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_e
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableSkuSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItem;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_38

    goto :goto_14

    :catchall_38
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3d
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1
.end method

.method public getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v2

    goto :goto_4

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

    move-object v0, v1

    goto :goto_4
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getMaxNumberOfLivingEvents()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getMaxNumberOfEvents()I

    move-result v0

    return v0
.end method

.method public getSKUList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "CategoryServiceInternal.getSKUList()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_16
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableSkuSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1f

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_1f
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getSKUListForPurchase()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "CategoryServiceInternal.getSKUListForPurchase()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_16
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_29

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getSKUListForPurchaseByType(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "catalogSkuForPurchaseMap: "

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_2b

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez p1, :cond_36

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CategoryServiceInternal.getSKUListForPurchaseByType() given null list"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2a
    return-object v0

    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_44
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4e
    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catchall {:try_start_44 .. :try_end_6b} :catchall_6c

    goto :goto_4e

    :catchall_6c
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_77
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    goto :goto_2a
.end method

.method getServiceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V
    .registers 7

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cannot install dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getStatus()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "installDictionary dict="

    const-string/jumbo v3, " status="

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "STATUS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string/jumbo v1, "STATUS_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_3d
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_10

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_44

    throw v0

    :cond_47
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_4a
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_5f

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->download()V

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->subscribe(Ljava/lang/String;)V

    goto :goto_10

    :catchall_5f
    move-exception v0

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method public installedCatalogItem(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "installedCatalogItem sku="

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v2, "STEP"

    const/4 v3, 0x7

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCatalogItem(Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    move-result-object v0

    if-eqz v0, :cond_3c

    const-string/jumbo v1, "STATUS_INSTALLED"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setStatus(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isSubscribable()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isSubscribed()Z

    move-result v1

    if-nez v1, :cond_3c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->subscribeNoDownload(Ljava/util/List;)V

    :cond_3c
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    return-void
.end method

.method public isCatalogEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogStatus:Z

    return v0
.end method

.method public isCatalogListAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListReceived:Z

    return v0
.end method

.method public isDictionaryListAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListReceived:Z

    return v0
.end method

.method public isHotWordsEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    return v0
.end method

.method public isLivingLanguageEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    return v0
.end method

.method public isUDAEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    return v0
.end method

.method public livingLanguageAllowed()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->isLivingLanguageEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public livingLanguageAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable:Z

    return v0
.end method

.method public markDictionaryInstalled(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "dictionary is not available to mark as installed.  Dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->isSubscribed()Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "STATUS_INSTALLED"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->subscribeNoDownload(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public notifyDictionariesofStatus()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-array v2, v1, [Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    array-length v2, v0

    :goto_c
    if-ge v1, v2, :cond_16

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;->listUpdated()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method public registerCatalogCallback(Lcom/nuance/connect/api/CatalogService$CatalogCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "registerDictionaryListCallback callback already added"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public registerLivingCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDictionary(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cannot install dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "dictionary is not installed cannot uninstall.  Dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :cond_28
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    const-string/jumbo v1, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->unsubscribe(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public resetCatalogItemPrice()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOG_PRICES_RESET:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->process(ILjava/lang/Object;)V

    return-void
.end method

.method public resetPurchasedSKU()V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    monitor-enter v4

    :try_start_5
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    move v3, v2

    :goto_e
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->savePurchasedSkuList()V

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_52

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_20
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->resetPurchased()V
    :try_end_44
    .catchall {:try_start_20 .. :try_end_44} :catchall_45

    goto :goto_2f

    :catchall_45
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_50
    move v3, v1

    goto :goto_e

    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0

    :cond_55
    if-nez v3, :cond_5f

    :try_start_57
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_45

    move-result v0

    if-nez v0, :cond_7d

    :cond_5f
    move v0, v2

    :goto_60
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "resetPurchasedSKU()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-eqz v0, :cond_7c

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->rebuildSkuAvailableList()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackOfSkusChanged()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    :cond_7c
    return-void

    :cond_7d
    move v0, v1

    goto :goto_60
.end method

.method public setCatalogItemPrices(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOG_PRICES_SET:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->removeMessages(I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOG_PRICES_SET:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->process(ILjava/lang/Object;)V

    return-void
.end method

.method public setLivingLanguageAvailable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable:Z

    return-void
.end method

.method public setLivingLanguageStatus(ZZ)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_5

    if-eqz p2, :cond_d

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    iput-boolean p2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    :goto_c
    return-void

    :cond_d
    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    goto :goto_c
.end method

.method public setMaxNumberOfLivingEvents(I)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setMaxNumberOfEvents(I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendMaxLimit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendMaxLimit:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setPurchasedSKU(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setPurchasedSKUList(Ljava/util/List;)V

    :cond_d
    return-void
.end method

.method public setPurchasedSKUList(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    if-eqz p1, :cond_63

    :goto_3
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_68

    :cond_16
    move v0, v2

    :goto_17
    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_6a

    if-eqz v0, :cond_8b

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCurrentDeviceCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_30
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setPurchased()V

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    invoke-virtual {v1, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getAllAvailableSKUs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_57
    .catchall {:try_start_2c .. :try_end_57} :catchall_58

    goto :goto_30

    :catchall_58
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_68
    const/4 v0, 0x0

    goto :goto_17

    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0

    :cond_6d
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->rebuildSkuAvailableList()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->savePurchasedSkuList()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackOfSkusChanged()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendCatalogPurchasedSKUs:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->processDelayed(Ljava/lang/Runnable;JZ)V

    :cond_8b
    return-void
.end method

.method public skuListAvailable(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CategoryServiceInternal.skuListAvailable() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUListAvailableCheck:Ljava/util/List;

    monitor-enter v1

    :try_start_25
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUListAvailableCheck:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->processCatalogSKUListAvailable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xa

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->processDelayed(Ljava/lang/Runnable;JZ)V

    monitor-exit v1

    goto :goto_8

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public uninstallCatalogItem(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CategoryServiceInternal.uninstallCatalogItem("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_16

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_16
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "uninstallCatalogItem has empty sku"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_1e
    return-void

    :cond_1f
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_2e
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "uninstallCatalogItem for empty ID"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_37
    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->unsubscribe(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "STEP"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1e
.end method

.method public unregisterCatalogCallback(Lcom/nuance/connect/api/CatalogService$CatalogCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCatalogCallbacks()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method

.method public unregisterDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "registerDictionaryListCallback callback does not exist"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public unregisterDictionaryListCallbacks()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method

.method public unregisterLivingCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterLivingCallbacks()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
