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
    .locals 3

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
    .locals 3

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

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/UserSettings;->getCatalogPurchasedSKUList()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "CATEGORY_SERVICE_CATALOG_LABELS"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lcom/nuance/connect/util/MapMarshal;->toStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
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

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->process(ILjava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Could not process the catalog labels list: "

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUListAvailableCheck:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCurrentDeviceCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdsForSKUs()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdForSKU(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCatalogItem(Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setLivingLanguageStatus(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->onDictionariesUpdated()V

    return-void
.end method

.method static synthetic access$2000(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getSKUFromCategoryId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/nuance/connect/internal/CategoryServiceInternal;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->isCategoryLivingLanguage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendMaxLimit:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->onCatalogsChanged()V

    return-void
.end method

.method static synthetic access$3000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    return-void
.end method

.method static synthetic access$3200(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackOfSkusChanged()V

    return-void
.end method

.method static synthetic access$3300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->processCatalogSKUListAvailable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->saveDeviceCountry(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/sqlite/CategoryDatabase;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    return-object v0
.end method

.method static synthetic access$3700()[I
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->MESSAGE_IDS:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->onCatalogsPricesSet(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->onCatalogPricesReset()V

    return-void
.end method

.method static synthetic access$600()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogStatus:Z

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    return-object v0
.end method

.method private getCatalogItem(Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCatalogItem(Ljava/lang/String;Ljava/util/Map;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getCatalogItem(Ljava/lang/String;Ljava/util/Map;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
    .locals 8
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

    :try_start_0
    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUsChanged:Ljava/util/Set;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->loadCatalogItemFromProperties(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private getCategoryIdForSKU(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
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

    if-eqz p2, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

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

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdsForSKUs()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdForSKU(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCategoryIdsForSKUs()Ljava/util/Map;
    .locals 6
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
    .locals 5
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

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method private getCurrentDeviceCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getLocationCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSKUFromCategoryId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "130"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCategoryLivingLanguage(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, v1, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private loadCatalogItemFromProperties(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
    .locals 27
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

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v2, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "empty catalog item: "

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPendingPrice()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v21

    const/high16 v4, -0x80000000

    :try_start_1
    const-string/jumbo v3, "STEP"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    move v4, v3

    :goto_1
    :try_start_2
    const-string/jumbo v3, "STATUS_AVAILABLE"

    const/4 v5, 0x7

    if-ge v4, v5, :cond_b

    if-lez v4, :cond_b

    const-string/jumbo v3, "STATUS_DOWNLOADING"

    :cond_4
    :goto_2
    const-string/jumbo v4, "UNSUBSCRIBE_PENDING"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UNSUBSCRIBE_PENDING"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string/jumbo v3, "STATUS_UNINSTALL_PENDING"

    move-object/from16 v24, v3

    :goto_3
    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$api$CatalogService$CatalogItem$Type:[I

    invoke-virtual {v7}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Unsupported catalog type: "

    invoke-interface {v3, v4, v7}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setPrice(Ljava/lang/String;)V

    :cond_5
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setPurchased()V

    :cond_6
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchased()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v2

    sget-object v4, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    if-ne v2, v4, :cond_11

    move-object v0, v3

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getAllChildrenSKUs()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_5
    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isFree()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchased()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchaseLookupAble()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->access$3900(Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPendingPrice()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object v2, v3

    goto/16 :goto_0

    :catch_0
    move-exception v3

    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "Could not parse step"

    invoke-interface {v3, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catch_1
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

    :goto_6
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x7

    if-ne v4, v5, :cond_d

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/high16 v8, -0x8000000000000000L

    :try_start_7
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
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-wide v8

    move-wide/from16 v25, v8

    move-wide v8, v4

    move-wide/from16 v4, v25

    :goto_7
    cmp-long v3, v8, v4

    if-gez v3, :cond_c

    :try_start_8
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

    goto/16 :goto_2

    :catch_2
    move-exception v3

    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, "Could not read times."

    invoke-interface {v3, v10}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move-wide/from16 v25, v8

    move-wide v8, v4

    move-wide/from16 v4, v25

    goto :goto_7

    :cond_c
    const-string/jumbo v3, "STATUS_INSTALLED"

    goto/16 :goto_2

    :cond_d
    const/16 v5, 0x8

    if-ne v4, v5, :cond_e

    const-string/jumbo v3, "STATUS_CANCELED"

    goto/16 :goto_2

    :cond_e
    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    const-string/jumbo v3, "STATUS_UNINSTALL_PENDING"

    goto/16 :goto_2

    :pswitch_0
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

    if-eqz v3, :cond_13

    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "bundle.getBundledCatalogItemCategoryIdList()"

    invoke-virtual {v10}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getBundledCatalogItemCategoryIdList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getBundledCatalogItemCategoryIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

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

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v10, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->addBundledItem(Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_8

    :catch_3
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

    goto/16 :goto_6

    :cond_10
    move-object v3, v2

    goto/16 :goto_4

    :pswitch_1
    :try_start_9
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
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object v3, v2

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :catchall_1
    move-exception v2

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v2

    :cond_11
    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setPurchased()V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_5

    :cond_13
    move-object v3, v2

    goto/16 :goto_4

    :cond_14
    move-object/from16 v24, v3

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyCatalogCallbackOfSkusChanged()V
    .locals 4

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
    .locals 2
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
    .locals 4

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
    .locals 3

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "resetCatalogItemPrice()"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->resetPrice()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->rebuildSkuAvailableList()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackOfSkusChanged()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    :cond_2
    return-void

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private onCatalogsChanged()V
    .locals 14

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

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v6, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUsChanged:Ljava/util/Set;

    invoke-direct {v6, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v7, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_2
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

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v12, "Unsupported catalog type: "

    invoke-interface {v1, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
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

    if-nez v13, :cond_0

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_0
    :try_start_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v7, v2

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

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

    if-eqz v0, :cond_9

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

    if-eqz v1, :cond_2

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v8

    :goto_3
    move v7, v0

    goto :goto_2

    :cond_3
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->loadCatalogItemFromProperties(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isUpdateAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move v7, v8

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iput-boolean v8, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListReceived:Z

    if-eqz v7, :cond_7

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/connect/internal/CategoryServiceInternal$11;

    invoke-direct {v1, p0, v6}, Lcom/nuance/connect/internal/CategoryServiceInternal$11;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-direct {p0, v9}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofInstalledUpdates(Ljava/util/List;)V

    :cond_8
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string/jumbo v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string/jumbo v2, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    return-void

    :catchall_2
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_9
    move v0, v7

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCatalogsPricesSet(Ljava/util/Map;)V
    .locals 10
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

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

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

    if-eqz v7, :cond_1

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->resetPrice()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setPrice(Ljava/lang/String;)V

    move v0, v3

    :goto_1
    move v4, v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->rebuildSkuAvailableList()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuPriceList:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackOfSkusChanged()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_6
    move v0, v4

    goto :goto_1
.end method

.method private onDictionariesUpdated()V
    .locals 14

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

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "116"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :cond_1
    const/high16 v2, -0x80000000

    :try_start_1
    const-string/jumbo v0, "STEP"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v2, v0

    :goto_1
    :try_start_2
    const-string/jumbo v0, "STATUS_AVAILABLE"

    const/4 v3, 0x7

    if-ge v2, v3, :cond_5

    if-lez v2, :cond_5

    const-string/jumbo v0, "STATUS_DOWNLOADING"

    move-object v9, v0

    :goto_2
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

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "STATUS_CANCELED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    move v2, v3

    :goto_3
    const-string/jumbo v3, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "STATUS_AVAILABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_4
    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getCategory()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, ""

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, ""

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    sget-object v2, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Chinese Dictionary being filtered ("

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getDictionary()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
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

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Could not parse step"

    invoke-interface {v0, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x7

    if-ne v2, v3, :cond_a

    const-wide/high16 v2, -0x8000000000000000L

    const-wide/high16 v4, -0x8000000000000000L

    :try_start_4
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
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-wide v4

    move-wide v12, v4

    move-wide v4, v2

    move-wide v2, v12

    :goto_5
    cmp-long v0, v4, v2

    if-gez v0, :cond_6

    :try_start_5
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

    goto/16 :goto_2

    :catch_2
    move-exception v0

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "Could not read times."

    invoke-interface {v0, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move-wide v12, v4

    move-wide v4, v2

    move-wide v2, v12

    goto :goto_5

    :cond_6
    const-string/jumbo v0, "STATUS_INSTALLED"
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v9, v0

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListReceived:Z

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyDictionariesofStatus()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string/jumbo v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string/jumbo v2, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    return-void

    :cond_8
    move v2, v3

    goto/16 :goto_3

    :cond_9
    move v2, v3

    goto/16 :goto_4

    :cond_a
    move-object v9, v0

    goto/16 :goto_2
.end method

.method private rebuildSkuAvailableList()V
    .locals 7

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
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

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableSkuSet:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableLabelMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private saveDeviceCountry(Ljava/lang/String;J)V
    .locals 2

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
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/UserSettings;->setCatalogPurchasedSKUList(Ljava/util/Set;)V

    return-void
.end method

.method private setDateToEPOC(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error Creating creating calendar"

    const-string/jumbo v4, " error: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, p1, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setLivingLanguageStatus(Z)V
    .locals 4

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "setLivingLanguageStatus("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
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
    .locals 1
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

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private subscribe(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    return-void
.end method

.method private subscribeNoDownload(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_NO_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    return-void
.end method

.method private subscribeNoDownload(Ljava/util/List;)V
    .locals 4
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
    .locals 3

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
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cannot cancel dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    :goto_1
    invoke-interface {v2, v3, p1, v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "canceling unsubscribing dict="

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public cancelDownloadCatalogItem(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CategoryServiceInternal.cancelDownloadCatalogItem("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CatalogItem cannot cancel catalog download for empty sku"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "CatalogItem cannot cancel catalog download for sku not being downloaded: "

    invoke-interface {v0, v2, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CatalogItem cannot cancel catalog download for empty ID"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
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

    goto :goto_0
.end method

.method public cancelLivingDownloads()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public disableCatalog()V
    .locals 4

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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setLivingLanguageStatus(Z)V

    return-void
.end method

.method public downloadCatalogItem(Ljava/lang/String;Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;)V
    .locals 13

    const/16 v12, 0x9

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CategoryServiceInternal.downloadCatalogItem("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CatalogItem cannot download catalog for empty sku"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "CatalogItem cannot download SKU already downloading: "

    invoke-interface {v0, v2, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CatalogItem cannot download catalog for empty ID"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
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

    if-eqz v0, :cond_5

    invoke-interface {p2, v12}, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;->downloadStopped(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isDownloadable()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2, v12}, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;->downloadStopped(I)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "STATUS_AVAILABLE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "STATUS_CANCELED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->download()V

    invoke-virtual {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->subscribe(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public enableCatalog()V
    .locals 4

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
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setLivingLanguageStatus(Z)V

    return-void
.end method

.method public forcePendingLivingToForeground()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_FOREGROUND:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public getAvailableDictionaries()Ljava/util/List;
    .locals 2
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
    .locals 7
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

    :try_start_0
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdsForSKUs()Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableSkuSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdForSKU(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Could not find SKU: "

    invoke-interface {v5, v6, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    invoke-direct {p0, v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCatalogItem(Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->access$3800(Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1
.end method

.method public getCatalogItemCategories()Ljava/util/List;
    .locals 2
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

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableLabelMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryListFromKeySet(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getCatalogItemCategoriesByType(Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableLabelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1
.end method

.method public getCatalogItems()Ljava/util/List;
    .locals 8
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

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableSkuSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    sget-object v4, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "SKU: "

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v6, " is NOT available."

    invoke-interface {v4, v5, v0, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCatalogItemsByType(Ljava/util/List;)Ljava/util/List;
    .locals 5
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

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableSkuSet:Ljava/util/Set;

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

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItem;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1
.end method

.method public getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getMaxNumberOfLivingEvents()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getMaxNumberOfEvents()I

    move-result v0

    return v0
.end method

.method public getSKUList()Ljava/util/List;
    .locals 3
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

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAvailableSkuSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getSKUListForPurchase()Ljava/util/List;
    .locals 3
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

    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getSKUListForPurchaseByType(Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    :try_start_0
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "catalogSkuForPurchaseMap: "

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez p1, :cond_0

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CategoryServiceInternal.getSKUListForPurchaseByType() given null list"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSkuForPurchaseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    goto :goto_0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cannot install dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
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

    if-nez v1, :cond_1

    const-string/jumbo v1, "STATUS_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->download()V

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->subscribe(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public installedCatalogItem(Ljava/lang/String;)V
    .locals 4

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

    if-eqz v0, :cond_0

    const-string/jumbo v1, "STATUS_INSTALLED"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setStatus(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isSubscribable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isSubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->subscribeNoDownload(Ljava/util/List;)V

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    return-void
.end method

.method public isCatalogEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogStatus:Z

    return v0
.end method

.method public isCatalogListAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListReceived:Z

    return v0
.end method

.method public isDictionaryListAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListReceived:Z

    return v0
.end method

.method public isHotWordsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    return v0
.end method

.method public isLivingLanguageEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    return v0
.end method

.method public isUDAEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    return v0
.end method

.method public livingLanguageAllowed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->isLivingLanguageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public livingLanguageAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable:Z

    return v0
.end method

.method public markDictionaryInstalled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "dictionary is not available to mark as installed.  Dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->isSubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "STATUS_INSTALLED"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->subscribeNoDownload(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDictionariesofStatus()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-array v2, v1, [Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;->listUpdated()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerCatalogCallback(Lcom/nuance/connect/api/CatalogService$CatalogCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "registerDictionaryListCallback callback already added"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public registerLivingCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDictionary(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cannot install dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "dictionary is not installed cannot uninstall.  Dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    const-string/jumbo v1, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->unsubscribe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetCatalogItemPrice()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOG_PRICES_RESET:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->process(ILjava/lang/Object;)V

    return-void
.end method

.method public resetPurchasedSKU()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->savePurchasedSkuList()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->resetPurchased()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    move v3, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    if-nez v3, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "resetPurchasedSKU()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->rebuildSkuAvailableList()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackOfSkusChanged()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public setCatalogItemPrices(Ljava/util/Map;)V
    .locals 2
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
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable:Z

    return-void
.end method

.method public setLivingLanguageStatus(ZZ)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    iput-boolean p2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    :goto_0
    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    goto :goto_0
.end method

.method public setMaxNumberOfLivingEvents(I)V
    .locals 4

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
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setPurchasedSKUList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setPurchasedSKUList(Ljava/util/List;)V
    .locals 6
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

    if-eqz p1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCurrentDeviceCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setPurchased()V

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogAllPurchasedSkuSet:Ljava/util/Set;

    invoke-virtual {v1, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getAllAvailableSKUs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
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

    :cond_5
    return-void
.end method

.method public skuListAvailable(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
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

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUListAvailableCheck:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->processCatalogSKUListAvailable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xa

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->processDelayed(Ljava/lang/Runnable;JZ)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uninstallCatalogItem(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CategoryServiceInternal.uninstallCatalogItem("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "uninstallCatalogItem has empty sku"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "uninstallCatalogItem for empty ID"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->unsubscribe(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "STEP"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public unregisterCatalogCallback(Lcom/nuance/connect/api/CatalogService$CatalogCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCatalogCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method

.method public unregisterDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "registerDictionaryListCallback callback does not exist"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unregisterDictionaryListCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method

.method public unregisterLivingCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterLivingCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
