.class public Lcom/nuance/connect/service/manager/CategoryManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/CategoryManager$3;,
        Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;,
        Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;,
        Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;,
        Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;,
        Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;,
        Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;,
        Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;
    }
.end annotation


# static fields
.field static final CATEGORY_COUNT_OLD:Ljava/lang/String; = "CATEGORY_COUNT_OLD"

.field private static final CATEGORY_ENABLED_PREF:Ljava/lang/String; = "categoryEnabled"

.field private static final CATEGORY_INSTALLER_PREF:Ljava/lang/String; = "CATEGORY_INSTALLER_DATA"

.field private static final CATEGORY_LAST_CORES_PREF:Ljava/lang/String;

.field private static final CATEGORY_LAST_LANGUAGES_PREF:Ljava/lang/String;

.field private static final CATEGORY_LAST_LOCALE_PREF:Ljava/lang/String;

.field private static final CATEGORY_LIST_LAST_FETCHED:Ljava/lang/String; = "CategoryRecieved"

.field static final CATEGORY_LIST_TYPE_ALL:I = 0x0

.field static final CHECKSUM:Ljava/lang/String; = "CHECKSUM"

.field public static final COMMAND_ACK:Ljava/lang/String; = "ack"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_GET:Ljava/lang/String; = "get"

.field public static final COMMAND_LIST:Ljava/lang/String; = "list"

.field public static final COMMAND_STATUS:Ljava/lang/String; = "status"

.field public static final COMMAND_SUBSCRIBE:Ljava/lang/String; = "subscribe"

.field public static final COMMAND_UNSUBSCRIBE:Ljava/lang/String; = "unsubscribe"

.field public static final COMMAND_VERSION:I = 0x8

.field static final DELETE_CATEGORY:Ljava/lang/String; = "DELETE_CATEGORY"

.field public static final DOWNLOAD_LIST_STATE:Ljava/lang/String;

.field public static final KOREAN_KEYBOARD_ID:I = 0x12

.field static final LAST_UPDATE_AVAILABLE:Ljava/lang/String; = "LAST_UPDATE_AVAILABLE"

.field static final LAST_UPDATE_FETCHED:Ljava/lang/String; = "LAST_UPDATE_FETCHED"

.field static final LAST_USED_AT:Ljava/lang/String; = "LAST_USED_AT"

.field static final LL_DELETE_CLEAR:Ljava/lang/String; = "LL_DELETE_CLEAR"

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[I

.field public static final SUBMANAGER_DOWNLOAD_LIST_STATE:Ljava/lang/String;

.field static final SUBSCRIBED:Ljava/lang/String; = "SUBSCRIBED"

.field private static final SUBSCRIBE_PRIORITY:I = 0xa

.field public static final TYPE_CHINESE_ADDON_DICTIONARY:I = 0x2

.field public static final TYPE_KEYBOARD_LANGUAGE_ONLY:I = 0x1

.field public static final TYPE_KEYBOARD_PLUS_LANGUAGE_VARIANT:I = 0x3

.field public static final TYPE_RESOURCES:I = 0x4

.field public static final TYPE_UPDATES:I = 0x5

.field static final UNSUBSCRIBE_PENDING:Ljava/lang/String; = "UNSUBSCRIBE_PENDING"

.field static final URL:Ljava/lang/String; = "URL"

.field static final USER_INITIATED:Ljava/lang/String; = "USER_INITIATED"


# instance fields
.field private booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

.field private categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

.field private final categoryListState:Ljava/util/HashMap;
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
            "Landroid/util/Pair",
            "<",
            "Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;",
            "Ljava/lang/Boolean;",
            ">;>;"
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

.field currentLanguageCodes:[I

.field currentLocale:Ljava/util/Locale;

.field private enabled:Z

.field private languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

.field private lastRecieved:J

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private sendConfigRequest:Z

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
    .locals 3

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

    const-string v1, "_LAST_LOCALE"

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

    const-string v1, "_LAST_LANGUAGES"

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

    const-string v1, "_LAST_CORES"

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

    const-string v1, "_DOWNLOAD_LIST_STATE"

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

    const-string v1, "_SUBMANAGER_DOWNLOAD_LIST_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->SUBMANAGER_DOWNLOAD_LIST_STATE:Ljava/lang/String;

    const/16 v0, 0xe

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

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CATEGORY_HOTWORD_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_CATEGORY_EVENTS_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_CATEGORY_DELETE_CATEGORY_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_UNSUBSCRIBE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_NO_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD_LIST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->MESSAGES_HANDLED:[I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/CategoryManager$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;)V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->enabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->sendConfigRequest:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$2;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/CategoryManager$2;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;)V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    const/16 v1, 0x8

    iput v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->version:I

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->commandFamily:Ljava/lang/String;

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MESSAGES_HANDLED:[I

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->messages:[I

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "list"

    sget-object v3, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "subscribe"

    sget-object v3, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "unsubscribe"

    sget-object v3, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "status"

    sget-object v3, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "get"

    sget-object v3, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "ack"

    sget-object v3, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    sget-object v3, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    invoke-static {}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->values()[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/CategoryManager;->updateSubManagerStatus(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    return-void
.end method

.method static synthetic access$1600(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/CategoryManager;->sendDictionaryDownloadProgress(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->resetCategoryDownloadState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->markListDirty()V

    return-void
.end method

.method static synthetic access$2000(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->clearCategoryDownload(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->savePreferences()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->processListResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    return-object v0
.end method

.method private cancelDownload(Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Category is not available for cancelDownload ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "SUBSCRIBED"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancelDownload("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") subscribed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, ", preinstalled="

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->isTransactionActiveForId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelDownload transaction active: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getActiveTransactionForId(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/service/comm/Transaction;->cancel()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->isSubscribing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "canceling subscription: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v0, p1, v1, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getActiveSubscribeTransactionForId(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->cancelCategory(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "USER_INITIATED"

    invoke-virtual {v0, p1, v1, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "cancel unsubscribing..."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "cancel resetting state"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private clearCategoryDownload(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "SUBSCRIBED"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "LAST_UPDATE_FETCHED"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "USER_INITIATED"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
.end method

.method private static concat([I[I)[I
    .locals 4

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

.method private getActiveSubscribeTransactionForId(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->activeTransactions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    instance-of v1, v1, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/comm/Transaction;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActiveTransactionForId(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;
    .locals 1

    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getDownloadTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->getActiveTransaction(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v0

    return-object v0
.end method

.method private getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$3;->$SwitchMap$com$nuance$connect$service$manager$CategoryManager$SubManagerDefinition:[I

    invoke-virtual {p1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :goto_1
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_0
    :try_start_1
    new-instance v1, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->getEnabledByDefault()Z

    move-result v3

    invoke-direct {v1, p0, v0, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->getEnabledByDefault()Z

    move-result v3

    invoke-direct {v1, p0, v0, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->getEnabledByDefault()Z

    move-result v3

    invoke-direct {v1, p0, v0, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V

    goto :goto_1

    :pswitch_3
    new-instance v1, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->getEnabledByDefault()Z

    move-result v3

    invoke-direct {v1, p0, v0, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V

    goto :goto_1

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSubManagerForCategory(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/SubManager;
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "25"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private installComplete(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "installComplete("

    const-string v3, ") status("

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "installComplete() - category list is not available ("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->removeDownloadFile(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Removed downloaded file = "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    :goto_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "install failed.  Unwinding... "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isClientInstallableCategory(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "25"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubscribing(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->activeTransactions:Ljava/util/Map;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTransactionActiveForId(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getDownloadTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadCategoryState(Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->SUBMANAGER_DOWNLOAD_LIST_STATE:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "loadCategoryState()"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/HashMap;

    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Error converting value "

    invoke-interface {v4, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->migrate()V

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    sget-object v5, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-void
.end method

.method private loadPreferences()V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Lcom/nuance/connect/util/InstallMetadata;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v2

    const-string v3, "CATEGORY_INSTALLER_DATA"

    invoke-direct {v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;-><init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-interface {v0, v3, v1}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v2

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->DOWNLOAD_LIST_STATE:Ljava/lang/String;

    sget-object v3, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->loadCategoryState(Lcom/nuance/connect/store/PersistentDataStore;)V

    const-string v0, "CategoryRecieved"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->lastRecieved:J

    const-string v0, "categoryEnabled"

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->enabled:Z

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_CORES_PREF:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "cores in use: "

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_LANGUAGES_PREF:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_3
    array-length v5, v3

    if-ge v0, v5, :cond_2

    :try_start_1
    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_LOCALE_PREF:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    :cond_4
    return-void

    :catch_0
    move-exception v5

    goto :goto_4

    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private markListDirty()V
    .locals 3

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->DOWNLOAD_LIST_STATE:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private migrate()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "migrate()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Landroid/util/Pair;

    sget-object v4, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->saveCategoryState()V

    return-void
.end method

.method private processListResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 14

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v1, v1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "123"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    :try_start_0
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_13

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v2

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ge v4, v2, :cond_a

    :try_start_2
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v2, "15"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const-string v3, "78"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v2, "78"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    :goto_3
    const-string v2, "25"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v10, v8}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v8}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    const/4 v2, 0x1

    :goto_4
    iget-object v10, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v10, v8}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "15"

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "78"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "25"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    const-string v2, "LAST_UPDATE_FETCHED"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SUBSCRIBED"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "STEP"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "LAST_UPDATE_AVAILABLE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "13"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "13"

    const-string v3, "13"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v2, "16"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "16"

    const-string v3, "16"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "18"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "18"

    const-string v3, "18"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v2, "98"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "98"

    const-string v3, "98"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v2, "100"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "100"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "100"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v2, v12, :cond_7

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object v10, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v11, "Known package id: "

    invoke-interface {v10, v11, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Failure processing JSON object: "

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    :goto_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_2

    :cond_7
    :try_start_4
    const-string v2, "100"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v2, "116"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "116"

    const-string v3, "116"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v8, v10}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    sget-object v5, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    if-eqz v1, :cond_c

    :try_start_5
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v0, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_c

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "25"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "remove category: "

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_c
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/HashMap;

    new-instance v3, Landroid/util/Pair;

    sget-object v4, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_d
    throw v1

    :cond_e
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    move v1, v0

    :goto_a
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->savePreferences()V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;Z)V

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    move v1, v0

    goto :goto_a

    :cond_10
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    :goto_c
    if-eqz v1, :cond_11

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    :cond_11
    return-void

    :catch_1
    move-exception v4

    goto/16 :goto_1

    :cond_12
    move v3, v2

    goto/16 :goto_3

    :cond_13
    move v1, v3

    goto :goto_c
.end method

.method private processNextCategory()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processNextCategory() - state: ["

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    const-string v3, "] - enabled: ["

    iget-boolean v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "]"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackages()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processNextCategory() - none exist. done."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    new-array v3, v6, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "USER_INITIATED"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "SUBSCRIBED"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, v0}, Lcom/nuance/connect/util/InstallMetadata;->isDownloading(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, v0}, Lcom/nuance/connect/util/InstallMetadata;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->getList(Ljava/util/ArrayList;)V

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeList(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processNextCategory() -- completed "

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeDownloadFile(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private requestCategoryList(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private requestCategoryList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    return-void
.end method

.method private resetCategoryDownloadState(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "resetCategoryDownloadState("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->removeDownloadFile(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "resetCategoryDownloadState("

    const-string v3, ") -- "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveCategoryState()V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "saveCategoryState() "

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
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->DOWNLOAD_LIST_STATE:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "CategoryRecieved"

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->lastRecieved:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    const-string v1, "categoryEnabled"

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->enabled:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_CORES_PREF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->genericListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_LANGUAGES_PREF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->implode([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->CATEGORY_LAST_LOCALE_PREF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->saveCategoryState()V

    return-void
.end method

.method private sendDictionaryDownloadProgress(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "25"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "download"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "total"

    const/16 v3, 0x64

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "dictionary"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CATEGORY_TYPE"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "78"

    invoke-virtual {v0, p1, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "13"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "98"

    invoke-virtual {v4, p1, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "100"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CATEGORY_ID"

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CATEGORY_TYPE"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CATEGORY_LOCALE"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CATEGORY_COUNTRY"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method private subscribeNoDownload(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Category is not available for subscribeNoDownload ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "USER_INITIATED"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "LAST_UPDATE_FETCHED"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "LAST_UPDATE_AVAILABLE"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    new-array v1, v5, [Ljava/lang/String;

    aput-object p1, v1, v4

    invoke-direct {v0, p0, v1, v4}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;[Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
.end method

.method private unsubscribe(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "unsubscribe("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Category is not available for unsubscribe ("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "SUBSCRIBED"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "SUBSCRIBED"

    invoke-virtual {v1, p1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "LAST_UPDATE_FETCHED"

    invoke-virtual {v1, p1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p1, v3}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->isTransactionActiveForId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getActiveTransactionForId(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/service/comm/Transaction;->cancel()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->isSubscribing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "    marking to unsubscribe after subscribe is finished: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "UNSUBSCRIBE_PENDING"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getActiveSubscribeTransactionForId(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->cancelCategory(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManagerForCategory(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->unsubscribe(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Already unsubscribed to: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateCategoryDeleteAck(ZILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "updateCategoryDeleteAck() - status: ["

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "] dlmCategory: ["

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "] category: ["

    const-string v7, "]"

    move-object v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "updateCategoryDeleteAck() - category list is not available ("

    const-string v2, ")"

    invoke-interface {v0, v1, p3, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "LL_DELETE_CLEAR"

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "updateCategoryDeleteAck() - LL Clear occuring for: "

    invoke-interface {v0, v1, p3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "LL_DELETE_CLEAR"

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendUninstallInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateCategoryEventAck(ZILjava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "updateCategoryEventAck() - status: ["

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "] core: ["

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "] category: ["

    const-string v7, "]"

    move-object v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "updateCategoryEventAck() - category list is not available ("

    const-string v2, ")"

    invoke-interface {v0, v1, p3, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "updateCategoryEventAck() - category list is not ready for install ("

    const-string v2, ")"

    invoke-interface {v0, v1, p3, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p3}, Lcom/nuance/connect/service/manager/CategoryManager;->resetCategoryDownloadState(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendInstallInfo(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x5

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->calcDefaultMilliDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateLastProcessed(Ljava/lang/String;JI)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1, p4}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "LAST_UPDATE_FETCHED"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
.end method

.method private updateSubManagerStatus(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;Z)V
    .locals 7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    if-eqz p2, :cond_4

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_0

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v6, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-eq v5, v6, :cond_1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Requesting updated list for the following categories."

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze()V

    :cond_4
    invoke-interface {v0, p2}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method cancelActiveTransactions(IZ)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->activeTransactions:Ljava/util/Map;

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

    move-result-object v1

    instance-of v1, v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->cancel()V

    if-eqz p2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->updateLastProcessed(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->savePreferences()V

    return-void
.end method

.method getAllEntriesWithCategoryId(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "78"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    return-object v1
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->CATEGORY:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getDependencies()[Lcom/nuance/connect/internal/common/ManagerService;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    return-object v0
.end method

.method getList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "getList: "

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "SUBSCRIBED"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->isTransactionActiveForId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    invoke-direct {v2, v0, v5, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;-><init>(Ljava/lang/String;ZLcom/nuance/connect/service/manager/CategoryManager;)V

    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "SUBSCRIBED"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->isSubscribing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Category is not available for subscriptions ("

    const-string v4, ")"

    invoke-interface {v2, v3, v0, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    invoke-direct {v1, p0, v0, v5}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;[Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    :cond_5
    return-void
.end method

.method public getMessageIDs()[I
    .locals 3

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->MESSAGES_HANDLED:[I

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;->getMessageIDs()[I

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->concat([I[I)[I

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method getUniqueCategoryIds()Landroid/util/SparseIntArray;
    .locals 6

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "78"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "25"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    return-object v1
.end method

.method public init()V
    .locals 3

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->loadPreferences()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addLanguageListener(Lcom/nuance/connect/service/manager/interfaces/LanguageListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->init()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->PLATFORM_UPDATE_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POSSIBLE_UPGRADE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method installCategory(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "installCategory("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "installCategory() - category list is not available ("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "installCategory() - category list is not ready for install ("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "13"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "4"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v3, 0x7

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "installCategory() - sending dlm events now: "

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "DLM_EVENT_FILE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DLM_EVENT_CORE"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "IDENTIFIER"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DLM_EVENT_ACK"

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_CATEGORY_EVENTS_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->isClientInstallableCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "installCategory() - category type is not installable client-side ("

    const-string v3, ") type ("

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v2, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;->onHandleMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v1, v2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "USER_INITIATED"

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribe(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_9

    :try_start_1
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v0

    :goto_1
    if-ge v2, v5, :cond_7

    aget-object v6, v0, v2

    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v7, v6}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v8, "USER_INITIATED"

    const/4 v9, 0x1

    invoke-virtual {v7, v6, v8, v9}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v8, "SUBSCRIBED"

    invoke-virtual {v7, v6, v8}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Error splitting list of categories to subscribe to."

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    goto/16 :goto_0

    :cond_7
    :try_start_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p0, v4}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeList(Ljava/util/ArrayList;)V

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p0, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeList(Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0

    :cond_9
    :try_start_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Error subscribing to empty or null list"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeNoDownload(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_a

    move v0, v1

    :goto_4
    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelDownload(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_4

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "MESSAGE_CLIENT_SET_CATEGORY_HOTWORD_STATUS status: "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-direct {p0, v2, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->updateSubManagerStatus(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DLM_EVENT_CORE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DLM_EVENT_COUNT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "IDENTIFIER"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v2, v4, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->updateCategoryEventAck(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "IDENTIFIER"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->updateCategoryDeleteAck(ZILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->installCategory(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->installComplete(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "ACKNOWLEDGEMENT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "CATEGORY_TYPE"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v3, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    sget-object v4, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v2, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v2, :cond_c

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->updateSubManagerStatus(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    return-void
.end method

.method public postStart()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "postStart()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->enabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->sendConfigRequest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "sendConfigRequest"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LIVING_LANGUAGE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LIVING_LANGUAGE_MAX_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "start() "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->managerStartComplete()V

    return-void
.end method

.method subscribe(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeList(Ljava/util/ArrayList;)V

    return-void
.end method

.method subscribeList(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "subscribeList: "

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    new-array v2, v7, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v4, v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "subscribeList - Category is not available for subscriptions ("

    const-string v6, ")"

    invoke-interface {v4, v5, v0, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->isSubscribing(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "subscribeList - Category is already attempting a subscribe ("

    const-string v6, ")"

    invoke-interface {v4, v5, v0, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "subscribeList - already active transaction("

    const-string v6, ")"

    invoke-interface {v4, v5, v0, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    invoke-direct {v1, p0, v0, v7}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;[Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    :cond_4
    return-void
.end method

.method unsubscribeAll()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribeAll(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribeAll(I)V

    return-void
.end method

.method unsubscribeAll(I)V
    .locals 9

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "SUBSCRIBED"

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "25"

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "unsubscribeAll() -- category: ["

    const-string v3, "] subscribed: ["

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "]"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v7, :cond_0

    if-ne v8, p1, :cond_0

    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    return-void
.end method
