.class public Lcom/nuance/connect/service/manager/CategoryManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/CategoryManager$4;,
        Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;,
        Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;,
        Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;,
        Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;,
        Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;,
        Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;,
        Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;
    }
.end annotation


# static fields
.field private static final CATEGORY_ENABLED_PREF:Ljava/lang/String; = "categoryEnabled"

.field private static final CATEGORY_INSTALLER_PREF:Ljava/lang/String; = "CATEGORY_INSTALLER_DATA"

.field private static final CATEGORY_LAST_CORES_PREF:Ljava/lang/String;

.field private static final CATEGORY_LAST_LANGUAGES_PREF:Ljava/lang/String;

.field private static final CATEGORY_LAST_LOCALE_PREF:Ljava/lang/String;

.field private static final CATEGORY_LIST_LAST_FETCHED:Ljava/lang/String; = "CategoryRecieved"

.field static final CATEGORY_LIST_TYPE_ALL:I = 0x0

.field public static final COMMAND_ACK:Ljava/lang/String; = "ack"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_GET:Ljava/lang/String; = "get"

.field public static final COMMAND_LIST:Ljava/lang/String; = "list"

.field public static final COMMAND_STATUS:Ljava/lang/String; = "status"

.field public static final COMMAND_SUBSCRIBE:Ljava/lang/String; = "subscribe"

.field public static final COMMAND_UNSUBSCRIBE:Ljava/lang/String; = "unsubscribe"

.field public static final COMMAND_VERSION:I = 0x9

.field public static final DOWNLOAD_LIST_STATE:Ljava/lang/String;

.field public static final KOREAN_KEYBOARD_ID:I = 0x12

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[I

.field public static final SUBMANAGER_DOWNLOAD_LIST_STATE:Ljava/lang/String;

.field private static final SUBSCRIBE_PRIORITY:I = 0xa

.field private static final TABLE_PREFIX:Ljava/lang/String; = "TABLE_TYPE_"


# instance fields
.field private final booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

.field final categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

.field private final categoryListState:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;",
            ">;"
        }
    .end annotation
.end field

.field final coresInUse:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field currentCountry:Ljava/lang/String;

.field currentLanguageCodes:[I

.field currentLocale:Ljava/util/Locale;

.field private final languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private stringListener:Lcom/nuance/connect/internal/Property$StringValueListener;

.field private final subManagerTypeLookup:Ljava/util/HashMap;
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
            "Lcom/nuance/connect/service/manager/interfaces/SubManager;",
            ">;"
        }
    .end annotation
.end field

.field private final submanagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;",
            "Lcom/nuance/connect/service/manager/interfaces/SubManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->CATEGORY:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_LAST_LOCALE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_LOCALE_PREF:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_LAST_LANGUAGES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_LANGUAGES_PREF:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_LAST_CORES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_CORES_PREF:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_DOWNLOAD_LIST_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->DOWNLOAD_LIST_STATE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_SUBMANAGER_DOWNLOAD_LIST_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->SUBMANAGER_DOWNLOAD_LIST_STATE:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_LIST_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_PROCESS_CATEGORIES:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CATEGORY_HOTWORD_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_UNSUBSCRIBE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_NO_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD_LIST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_NO_DOWNLOAD_LIST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATALOG_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CATALOG_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->MESSAGES_HANDLED:[I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/CategoryManager$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/CategoryManager$2;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->stringListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/CategoryManager$3;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    const/16 v0, 0x9

    iput v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->version:I

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->commandFamily:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->messages:[I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "list"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "subscribe"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "unsubscribe"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "status"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "get"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "ack"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "download"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-static {}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->values()[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_a4
    if-ge v0, v2, :cond_ae

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    :cond_ae
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/CategoryManager;->updateSubManagerStatus(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/connect/service/manager/CategoryManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    return-void
.end method

.method static synthetic access$1200(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getUnsubscribeTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/CategoryManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->savePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/comm/Response;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/CategoryManager;->processListResponse(Lcom/nuance/connect/comm/Response;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/manager/CategoryManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->checkRefreshCategoryLists()V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    return-object v0
.end method

.method private cancelDownload(Ljava/lang/String;Z)V
    .registers 10

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Category is not available for cancelDownload ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "SUBSCRIBED"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cancelDownload("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") subscribed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, ", preinstalled="

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->isTransactionActiveForId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cancelDownload transaction active: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getActiveTransactionForId(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/nuance/connect/comm/Transaction;->cancel()V

    goto :goto_25

    :cond_7b
    if-eqz p2, :cond_93

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "USER_INITIATED"

    invoke-virtual {v0, p1, v1, v6}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_25

    :cond_93
    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cancel unsubscribing..."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto :goto_25

    :cond_a1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getStep(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_25

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cancel resetting state"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    goto/16 :goto_25
.end method

.method private checkRefreshCategoryLists()V
    .registers 9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_23

    if-eqz v2, :cond_23

    iget-object v6, v2, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->dirty:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    sget-object v7, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->UPDATING:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    if-eq v6, v7, :cond_23

    iget-object v6, v2, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v7, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-eq v6, v7, :cond_59

    iget-object v6, v2, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->dirty:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    sget-object v7, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    if-eq v6, v7, :cond_59

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->categoriesManagedCount()I

    move-result v6

    iget v2, v2, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->categoryCount:I

    if-eq v6, v2, :cond_23

    :cond_59
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_5d
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "checkRefreshCategoryLists list="

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Requesting updated list for the following categories: "

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;Ljava/util/List;)V

    :cond_7b
    return-void
.end method

.method private static concat([I[I)[I
    .registers 6

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getActiveTransactionForId(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getTransactionName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->getActiveTransaction(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;

    move-result-object v0

    return-object v0
.end method

.method private getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    monitor-exit v2

    goto :goto_3

    :catchall_19
    move-exception v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$service$manager$CategoryManager$SubManagerDefinition:[I

    invoke-virtual {p1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_8a

    move-object v1, v0

    :goto_28
    if-eqz v1, :cond_85

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :pswitch_49
    new-instance v1, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->getEnabledByDefault()Z

    move-result v3

    invoke-direct {v1, p0, v0, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V

    goto :goto_28

    :pswitch_55
    new-instance v1, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->getEnabledByDefault()Z

    move-result v3

    invoke-direct {v1, p0, v0, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V

    goto :goto_28

    :pswitch_61
    new-instance v1, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->getEnabledByDefault()Z

    move-result v3

    invoke-direct {v1, p0, v0, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V

    goto :goto_28

    :pswitch_6d
    new-instance v1, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->getEnabledByDefault()Z

    move-result v3

    invoke-direct {v1, p0, v0, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V

    goto :goto_28

    :pswitch_79
    new-instance v1, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->getEnabledByDefault()Z

    move-result v3

    invoke-direct {v1, p0, v0, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V

    goto :goto_28

    :cond_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_1c .. :try_end_86} :catchall_19

    move-object v0, v1

    goto/16 :goto_3

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_49
        :pswitch_55
        :pswitch_61
        :pswitch_6d
        :pswitch_79
    .end packed-switch
.end method

.method private getSubManagerForCategory(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/SubManager;
    .registers 7

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_28
    return-object v0

    :cond_29
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Unknown submanager for category: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_28
.end method

.method private getUnsubscribeTransactionName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UnsubscribeTransaction-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installComplete(Ljava/lang/String;I)V
    .registers 9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "installComplete("

    const-string/jumbo v3, ") status("

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ")"

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "installComplete() - category list is not available ("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "FILE_LOCATION"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Removed downloaded file = "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_4e

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    :goto_4a
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    goto :goto_26

    :cond_4e
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "install failed.  Unwinding... "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto :goto_4a
.end method

.method private isSubscribing(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->activeTransactions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private isTransactionActiveForId(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getTransactionName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isUnsubscribeTransactionActiveForId(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getUnsubscribeTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadCategoryState(Lcom/nuance/connect/store/PersistentDataStore;)V
    .registers 14

    const/4 v11, 0x3

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->SUBMANAGER_DOWNLOAD_LIST_STATE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-interface {p1, v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "loadCategoryState()"

    invoke-interface {v1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_87

    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_22
    if-ge v3, v5, :cond_d1

    aget-object v0, v4, v3

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    if-lt v0, v11, :cond_66

    const/4 v0, 0x0

    :try_start_31
    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    array-length v0, v6

    if-le v0, v11, :cond_6a

    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_42
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->from(Ljava/lang/String;)Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v10

    const/4 v0, 0x2

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7a

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    :goto_60
    invoke-direct {v9, v10, v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;-><init>(Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;I)V

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    :goto_66
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_22

    :cond_6a
    invoke-static {v7}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->from(I)Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    if-eqz v0, :cond_10f

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->categoriesManagedCount()I

    move-result v0

    move v1, v0

    goto :goto_42

    :cond_7a
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->CLEAN:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_7c} :catch_7d

    goto :goto_60

    :catch_7d
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Error converting value "

    invoke-interface {v1, v6, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_66

    :cond_87
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "migrate()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allCategoryIDs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a3
    :goto_a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    invoke-direct {v3}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    :cond_ce
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->saveCategoryState()V

    :cond_d1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_db
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_ef
    :goto_ef
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ef

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    new-instance v4, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    invoke-direct {v4}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;-><init>()V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ef

    :cond_10e
    return-void

    :cond_10f
    move v1, v2

    goto/16 :goto_42
.end method

.method private loadPreferences()V
    .registers 15

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v5

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->DOWNLOAD_LIST_STATE:Ljava/lang/String;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->from(Ljava/lang/String;)Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-direct {p0, v5}, Lcom/nuance/connect/service/manager/CategoryManager;->loadCategoryState(Lcom/nuance/connect/store/PersistentDataStore;)V

    const-string/jumbo v0, "CATEGORY_INSTALLER_DATA"

    invoke-interface {v5, v0}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_135

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "migrating... metadata"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/util/InstallMetadata;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v1

    const-string/jumbo v2, "CATEGORY_INSTALLER_DATA"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;-><init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->getAllMetadata()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_47
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "migrating categoryId="

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_5f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v2, "25"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "STARTED"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "15"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v2, v7}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_90
    :goto_90
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->values()[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    move-result-object v10

    array-length v11, v10

    move v3, v4

    :goto_a2
    if-ge v3, v11, :cond_90

    aget-object v12, v10, v3

    invoke-direct {p0, v12}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v12

    if-eqz v12, :cond_108

    invoke-interface {v12}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_108

    iget-object v10, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v8, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->containsProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_90

    iget-object v10, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown or deprecated property: "

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "; value: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v3, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V
    :try_end_fc
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_fc} :catch_fd

    goto :goto_90

    :catch_fd
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Could not migrate"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_47

    :cond_108
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    :cond_10b
    :try_start_10b
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "adding categoryId="

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v9, " properties="

    invoke-interface {v2, v3, v7, v9, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v8, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->addCategory(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_125
    .catch Ljava/lang/NumberFormatException; {:try_start_10b .. :try_end_125} :catch_fd

    goto/16 :goto_47

    :cond_127
    const-string/jumbo v0, "CATEGORY_INSTALLER_DATA"

    invoke-interface {v5, v0}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "migrating... done"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_135
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_CORES_PREF:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-interface {v5, v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v0, v4

    :goto_147
    if-ge v0, v2, :cond_15b

    aget-object v3, v1, v0

    :try_start_14b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_158
    .catch Ljava/lang/NumberFormatException; {:try_start_14b .. :try_end_158} :catch_1ce

    :goto_158
    add-int/lit8 v0, v0, 0x1

    goto :goto_147

    :cond_15b
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cores in use: "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_LANGUAGES_PREF:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-interface {v5, v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v4

    :goto_17f
    array-length v3, v1

    if-ge v0, v3, :cond_18e

    :try_start_182
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_18b} :catch_1cc

    :goto_18b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17f

    :cond_18e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    :goto_196
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1ad

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_196

    :cond_1ad
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_LOCALE_PREF:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1cb

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    :cond_1cb
    return-void

    :catch_1cc
    move-exception v3

    goto :goto_18b

    :catch_1ce
    move-exception v3

    goto :goto_158
.end method

.method private processListResponse(Lcom/nuance/connect/comm/Response;Ljava/util/Set;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/comm/Response;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "processListResponse()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    if-eqz p2, :cond_16

    move-object/from16 v0, p2

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_16
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v3, "77"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32d

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v3, "77"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v3, v3, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    const-string/jumbo v4, "123"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v5, "134"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v5, "134"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    sget-object v5, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CATALOG:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    invoke-virtual {v5, v4}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->setLabelList(Lorg/json/JSONArray;)V

    :cond_71
    const/4 v4, 0x0

    move v5, v4

    :goto_73
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_ca

    :try_start_79
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    if-eqz v4, :cond_a9

    iget-object v7, v4, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->dirty:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    sget-object v12, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    if-eq v7, v12, :cond_c4

    :cond_a9
    sget-object v7, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->CLEAN:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    :goto_ab
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v13, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    sget-object v14, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-nez v4, :cond_c7

    const/4 v4, 0x0

    :goto_ba
    invoke-direct {v13, v14, v7, v4}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;-><init>(Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;I)V

    invoke-interface {v12, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_73

    :cond_c4
    sget-object v7, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    goto :goto_ab

    :cond_c7
    iget v4, v4, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->categoryCount:I
    :try_end_c9
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_c9} :catch_322

    goto :goto_ba

    :cond_ca
    if-eqz v2, :cond_32d

    const/4 v3, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_d8

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_d8
    const/4 v4, 0x0

    move/from16 v18, v4

    move-object v4, v3

    move/from16 v3, v18

    :goto_de
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1cd

    :try_start_e4
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v5, "15"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const-string/jumbo v6, "78"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32a

    const-string/jumbo v5, "78"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move v6, v5

    :goto_101
    const-string/jumbo v5, "25"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const/4 v5, 0x0

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v14, v11}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_16c

    const/4 v5, 0x1

    const-string/jumbo v14, "LAST_UPDATE_FETCHED"

    const-string/jumbo v15, "0"

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v14, "SUBSCRIBED"

    const-string/jumbo v15, "false"

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v14, "STEP"

    const-string/jumbo v15, "0"

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v14, "LAST_UPDATE_AVAILABLE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_142
    const-string/jumbo v14, "78"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->from(I)Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v6

    if-eqz v6, :cond_1ad

    invoke-interface {v6, v7}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->parseJsonListResponse(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_193

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Ignoring category"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_168
    :goto_168
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_de

    :cond_16c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v15, "Known package id: "

    invoke-interface {v14, v15, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v14, v11}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_181
    .catch Lorg/json/JSONException; {:try_start_e4 .. :try_end_181} :catch_182

    goto :goto_142

    :catch_182
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "Failure processing JSON object: "

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto :goto_168

    :cond_193
    :try_start_193
    invoke-interface {v13, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_196
    if-eqz v5, :cond_1c5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v6, v12}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v11, v6, v13}, Lcom/nuance/connect/sqlite/CategoryDatabase;->addCategory(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    :goto_1a7
    if-eqz v4, :cond_168

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_168

    :cond_1ad
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Could not find a sub manager for type: "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_196

    :cond_1c5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v5, v11, v13}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProps(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1cc
    .catch Lorg/json/JSONException; {:try_start_193 .. :try_end_1cc} :catch_182

    goto :goto_1a7

    :cond_1cd
    if-eqz v4, :cond_22a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allCategoryIDs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_22a

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_22a

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e7
    :goto_1e7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "remove category: "

    invoke-interface {v4, v5, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v4, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->deleteCategory(Ljava/lang/String;)Z

    goto :goto_1e7

    :cond_22a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v3, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-ne v2, v3, :cond_24e

    const/4 v2, 0x1

    move v4, v2

    :goto_234
    sget-object v2, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_251

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v2}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->onDataUpdated()V

    goto :goto_23e

    :cond_24e
    const/4 v2, 0x0

    move v4, v2

    goto :goto_234

    :cond_251
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_255
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->from(I)Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v5

    if-eqz v5, :cond_327

    invoke-interface {v5}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->categoriesManagedCount()I

    move-result v3

    move v5, v3

    :goto_277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    if-eqz v3, :cond_289

    iget-object v3, v3, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->dirty:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    sget-object v7, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    if-eq v3, v7, :cond_29a

    :cond_289
    sget-object v3, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->CLEAN:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    :goto_28b
    new-instance v7, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    sget-object v9, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-direct {v7, v9, v3, v5}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;-><init>(Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-interface {v3, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_255

    :cond_29a
    sget-object v3, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    goto :goto_28b

    :cond_29d
    invoke-interface {v8, v10}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/CategoryManager;->savePreferences()V

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    :goto_2a6
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_313

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "no categories returned in list response! "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2cb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_313

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->from(I)Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v5

    if-eqz v5, :cond_325

    invoke-interface {v5}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->categoriesManagedCount()I

    move-result v3

    move v5, v3

    :goto_2ed
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    if-eqz v3, :cond_2ff

    iget-object v3, v3, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->dirty:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    sget-object v7, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    if-eq v3, v7, :cond_310

    :cond_2ff
    sget-object v3, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->CLEAN:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    :goto_301
    new-instance v7, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    sget-object v8, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-direct {v7, v8, v3, v5}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;-><init>(Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-interface {v3, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2cb

    :cond_310
    sget-object v3, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    goto :goto_301

    :cond_313
    if-eqz v4, :cond_321

    new-instance v2, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    :cond_321
    return-void

    :catch_322
    move-exception v4

    goto/16 :goto_c0

    :cond_325
    move v5, v3

    goto :goto_2ed

    :cond_327
    move v5, v3

    goto/16 :goto_277

    :cond_32a
    move v6, v5

    goto/16 :goto_101

    :cond_32d
    move v4, v6

    goto/16 :goto_2a6
.end method

.method private processNextCategory()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processNextCategory() - state: ["

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    const-string/jumbo v3, "]"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_1c
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processNextCategory() - none exist. done."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_24
    return-void

    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    new-array v2, v4, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v4, "USER_INITIATED"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v4, "SUBSCRIBED"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v3, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_6f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeList(Ljava/util/ArrayList;)V

    :cond_78
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allWithProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_89
    :goto_89
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v4, "UNSUBSCRIBE_PENDING"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto :goto_89

    :cond_b8
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processNextCategory() -- completed "

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_24
.end method

.method private saveCategoryState()V
    .registers 7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_27

    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->dirty:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    sget-object v5, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->CLEAN:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    if-ne v1, v5, :cond_7b

    const/4 v1, 0x0

    :goto_60
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    iget v0, v0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->categoryCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_7b
    const/4 v1, 0x1

    goto :goto_60

    :cond_7d
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "saveCategoryState() "

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->SUBMANAGER_DOWNLOAD_LIST_STATE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private savePreferences()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->DOWNLOAD_LIST_STATE:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_CORES_PREF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    const-string/jumbo v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->genericListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_LANGUAGES_PREF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    const-string/jumbo v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->implode([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    if-eqz v1, :cond_3c

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_LOCALE_PREF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3c
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->saveCategoryState()V

    return-void
.end method

.method private subscribeNoDownloadList(Ljava/util/List;)V
    .registers 9
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

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->isSubscribing(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "subscribeList - Category is already attempting a subscribe ("

    const-string/jumbo v5, ")"

    invoke-interface {v3, v4, v0, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    :cond_3c
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "subscribeList - already active transaction("

    const-string/jumbo v5, ")"

    invoke-interface {v3, v4, v0, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    :cond_4e
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManagerForCategory(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-interface {v3, v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->createSubscribeTransaction(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v0, v6}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->setDownloadAfterSubscribe(Z)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    goto :goto_18

    :cond_61
    return-void
.end method

.method private unsubscribe(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "unsubscribe("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Category is not available for unsubscribe ("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "SUBSCRIBED"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v2, "SUBSCRIBED"

    invoke-virtual {v1, p1, v2, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v2, "LAST_UPDATE_FETCHED"

    invoke-virtual {v1, p1, v2, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v1, p1, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->isTransactionActiveForId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getActiveTransactionForId(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/nuance/connect/comm/Transaction;->cancel()V

    goto :goto_1f

    :cond_4e
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->isUnsubscribeTransactionActiveForId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Already unsubscribing..."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_1f

    :cond_5d
    if-eqz v0, :cond_74

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManagerForCategory(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->unsubscribe(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    goto :goto_1f

    :cond_74
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Already unsubscribed to: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private updateSubManagerStatus(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;Z)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2a

    move v3, v1

    :goto_11
    if-ne p2, v3, :cond_2c

    :goto_13
    invoke-interface {v0, p2}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->setEnabled(Z)V

    if-eqz v1, :cond_29

    if-eqz p2, :cond_22

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->checkRefreshCategoryLists()V

    :cond_22
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_RECALCULATE_POLLING:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_29
    return-void

    :cond_2a
    move v3, v2

    goto :goto_11

    :cond_2c
    move v1, v2

    goto :goto_13
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method cancelActiveTransactions(I)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->activeTransactions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getType()I

    move-result v2

    if-ne v2, p1, :cond_a

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->cancel()V

    goto :goto_a

    :cond_2e
    return-void
.end method

.method public destroy()V
    .registers 1

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->savePreferences()V

    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->CATEGORY:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getDependencies()[Lcom/nuance/connect/internal/common/ManagerService;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_1b

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    return-object v0
.end method

.method public getManagerPollInterval()I
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_POLLING_INTERVAL_NO_FEATURES:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getManagerPollInterval()I

    move-result v3

    if-ge v3, v1, :cond_30

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getManagerPollInterval()I

    move-result v0

    :goto_2d
    move v1, v0

    goto :goto_17

    :cond_2f
    return v1

    :cond_30
    move v0, v1

    goto :goto_2d
.end method

.method public getMessageIDs()[I
    .registers 4

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->MESSAGES_HANDLED:[I

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;->getMessageIDs()[I

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->concat([I[I)[I

    move-result-object v0

    move-object v1, v0

    goto :goto_d

    :cond_25
    return-object v1
.end method

.method getTypeForID(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getCategoryType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTypeForTable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public init()V
    .registers 4

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->loadPreferences()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addLanguageListener(Lcom/nuance/connect/service/manager/interfaces/LanguageListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->init()V

    goto :goto_14

    :cond_24
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->PLATFORM_UPDATE_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POSSIBLE_UPGRADE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_GEO_IP_COUNTRY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->stringListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .registers 12

    const/4 v4, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;->onHandleMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_21
    :goto_21
    return v1

    :cond_22
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_23e

    move v1, v2

    goto :goto_21

    :pswitch_35
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    goto :goto_21

    :pswitch_39
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v3, "USER_INITIATED"

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_54
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribe(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_58
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c6

    :try_start_6b
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v0

    :goto_7d
    if-ge v2, v5, :cond_b2

    aget-object v6, v0, v2

    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v7, v6}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a0

    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v8, "USER_INITIATED"

    const/4 v9, 0x1

    invoke-virtual {v7, v6, v8, v9}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v8, "SUBSCRIBED"

    invoke-virtual {v7, v6, v8}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a0
    :goto_a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    :cond_a3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a6
    .catch Ljava/lang/NullPointerException; {:try_start_6b .. :try_end_a6} :catch_a7

    goto :goto_a0

    :catch_a7
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error splitting list of categories to subscribe to."

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_21

    :cond_b2
    :try_start_b2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_bb

    invoke-virtual {p0, v4}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeList(Ljava/util/ArrayList;)V

    :cond_bb
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {p0, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeList(Ljava/util/ArrayList;)V
    :try_end_c4
    .catch Ljava/lang/NullPointerException; {:try_start_b2 .. :try_end_c4} :catch_a7

    goto/16 :goto_21

    :cond_c6
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error subscribing to empty or null list"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_d0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12c

    :try_start_e3
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v0

    :goto_f0
    if-ge v2, v4, :cond_116

    aget-object v5, v0, v2

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v6, v5}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_105

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v7, "USER_INITIATED"

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v7, v8}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_105
    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v7, "SUBSCRIBED"

    invoke-virtual {v6, v5, v7}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_113

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_113
    add-int/lit8 v2, v2, 0x1

    goto :goto_f0

    :cond_116
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeNoDownloadList(Ljava/util/List;)V
    :try_end_11f
    .catch Ljava/lang/NullPointerException; {:try_start_e3 .. :try_end_11f} :catch_121

    goto/16 :goto_21

    :catch_121
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error splitting list of categories to subscribe to as its null."

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_21

    :cond_12c
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error subscribing to empty or null list"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_136
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_146
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_15b

    move v0, v1

    :goto_156
    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelDownload(Ljava/lang/String;Z)V

    goto/16 :goto_21

    :cond_15b
    move v0, v2

    goto :goto_156

    :pswitch_15d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_16d

    move v2, v1

    :cond_16d
    invoke-direct {p0, v0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelDownload(Ljava/lang/String;Z)V

    goto/16 :goto_21

    :pswitch_172
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "MESSAGE_CLIENT_SET_CATEGORY_HOTWORD_STATUS status: "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-direct {p0, v2, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->updateSubManagerStatus(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;Z)V

    goto/16 :goto_21

    :pswitch_190
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "ACKNOWLEDGEMENT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "CATEGORY_TYPE"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c9

    invoke-virtual {p0, v3, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;I)V

    goto/16 :goto_21

    :cond_1c9
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    sget-object v6, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v7, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->categoriesManagedCount()I

    move-result v0

    invoke-direct {v5, v6, v7, v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;-><init>(Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;I)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21

    :pswitch_1ed
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v2, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v2, :cond_1fd

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    goto/16 :goto_21

    :cond_1fd
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto/16 :goto_21

    :pswitch_208
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->installComplete(Ljava/lang/String;I)V

    goto/16 :goto_21

    :pswitch_21a
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->updateSubManagerStatus(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;Z)V

    goto/16 :goto_21

    :pswitch_22c
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CATALOG:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->updateSubManagerStatus(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;Z)V

    goto/16 :goto_21

    :pswitch_data_23e
    .packed-switch 0x1
        :pswitch_35
        :pswitch_39
        :pswitch_58
        :pswitch_58
        :pswitch_d0
        :pswitch_d0
        :pswitch_136
        :pswitch_146
        :pswitch_15d
        :pswitch_172
        :pswitch_190
        :pswitch_1ed
        :pswitch_208
        :pswitch_21a
        :pswitch_22c
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 2

    return-void
.end method

.method public onUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;Z)V
    .registers 6

    invoke-static {p1, p2}, Lcom/nuance/connect/util/VersionUtils;->isDataCleanupRequiredOnUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    :cond_1c
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->onUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public postStart()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "postStart()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    return-void
.end method

.method requestCategoryList(Ljava/lang/String;I)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method requestCategoryList(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentCountry:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;Ljava/util/List;Ljava/util/Locale;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransactionWithAck(Lcom/nuance/connect/comm/Transaction;)Z

    move-result v0

    if-nez v0, :cond_86

    if-eqz p2, :cond_1f

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_1f
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2e

    :cond_48
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "requestCategoryList in progress; types: "

    invoke-interface {v0, v1, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    if-nez v1, :cond_75

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    new-instance v3, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    invoke-direct {v3}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;-><init>()V

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_75
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;

    new-instance v4, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    iget-object v5, v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v6, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    iget v1, v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->categoryCount:I

    invoke-direct {v4, v5, v6, v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;-><init>(Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;I)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_86
    return-void
.end method

.method public start()V
    .registers 4

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-ne v0, v1, :cond_39

    :cond_10
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "start() "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;I)V

    :goto_1f
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->start()V

    goto :goto_29

    :cond_39
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "check to see if the lists need to be refreshed"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->checkRefreshCategoryLists()V

    goto :goto_1f

    :cond_45
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->managerStartComplete()V

    return-void
.end method

.method subscribe(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManagerForCategory(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->createSubscribeTransaction(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    :cond_d
    return-void
.end method

.method subscribeList(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "subscribeList: "

    const-string/jumbo v2, ","

    invoke-static {p1, v2}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v3, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_47

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "subscribeList - Category is not available for subscriptions ("

    const-string/jumbo v5, ")"

    invoke-interface {v3, v4, v0, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_27

    :cond_47
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->isSubscribing(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "subscribeList - Category is already attempting a subscribe ("

    const-string/jumbo v5, ")"

    invoke-interface {v3, v4, v0, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_27

    :cond_5f
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "subscribeList - already active transaction("

    const-string/jumbo v5, ")"

    invoke-interface {v3, v4, v0, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_27

    :cond_71
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManagerForCategory(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v3

    if-eqz v3, :cond_27

    invoke-interface {v3, v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->createSubscribeTransaction(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    goto :goto_27

    :cond_7f
    return-void
.end method

.method unsubscribeAll()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribeAll(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribeAll(I)V

    return-void
.end method

.method unsubscribeAll(I)V
    .registers 8

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allCategoryIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v3, "SUBSCRIBED"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "unsubscribeAll type-"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "; id-"

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto :goto_10

    :cond_3a
    return-void
.end method
