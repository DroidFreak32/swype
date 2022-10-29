.class public Lcom/nuance/connect/service/manager/DlmSyncManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/DlmSyncManager$4;,
        Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;,
        Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;,
        Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
    }
.end annotation


# static fields
.field private static final CATEGORY_STATE:Ljava/lang/String; = "CATEGORY_STATE"

.field public static final COMMAND_BACKUP:Ljava/lang/String; = "backup"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field private static final COMMAND_PULL:Ljava/lang/String; = "pull"

.field private static final COMMAND_PULL_ACK:Ljava/lang/String; = "pullAck"

.field private static final COMMAND_PUSH:Ljava/lang/String; = "push"

.field private static final COMMAND_RESTORE_GET:Ljava/lang/String; = "restoreGet"

.field private static final COMMAND_RESTORE_REQUEST:Ljava/lang/String; = "restoreRequest"

.field public static final COMMAND_VERSION:I = 0x5

.field private static final DLM_EVENTS_LAST_SENT:Ljava/lang/String; = "DLM_EVENTS_LAST_SENT"

.field public static final DLM_EVENTS_SEND:Ljava/lang/String; = "DLM_EVENTS_SEND"

.field private static final DLM_SYNC_ENABLED:Ljava/lang/String; = "DLM_SYNC_ENABLED"

.field private static final DLM_SYNC_USER_ENABLED:Ljava/lang/String; = "DLM_SYNC_USER_ENABLED"

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final supportedCategories:[Ljava/lang/Integer;


# instance fields
.field private final accountListener:Lcom/nuance/connect/service/manager/interfaces/AccountListener;

.field private final categoriesInUse:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final categoryState:Ljava/util/HashMap;
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
            "Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;",
            ">;"
        }
    .end annotation
.end field

.field private dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

.field private volatile dlmEnabled:Z

.field private final intListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private final oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private sendDlmEventsInterval:I

.field private userDlmEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SYNC:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->MANAGER_NAME:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PULL_DLM_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DLM_BACKUP_REQUIRED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_RESTORE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_BACKUP_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_DLM_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_SYNC_NOW:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_DLM_SYNC_FREQUECY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CHECK_SYNC:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendDlmEventsInterval:I

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;

    new-instance v0, Lcom/nuance/connect/service/manager/DlmSyncManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$1;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/service/manager/DlmSyncManager$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$2;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->accountListener:Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    new-instance v0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$3;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->version:I

    sget-object v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->commandFamily:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    new-array v0, v3, [I

    aput v3, v0, v2

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v2, "backup"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v2, "restoreRequest"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v2, "restoreGet"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v2, "push"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v2, "pullAck"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "pull"

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_94

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    return-void

    :array_94
    .array-data 4
        0x19
        0x1a
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/connect/service/manager/DlmSyncManager;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendDlmEventsInterval:I

    return p1
.end method

.method static synthetic access$1100(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/sqlite/DlmEventsDataSource;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/connect/service/manager/DlmSyncManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/nuance/connect/service/manager/DlmSyncManager;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendRestoreEvents(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->setDlmEventsTimer()V

    return-void
.end method

.method static synthetic access$2200(Lcom/nuance/connect/service/manager/DlmSyncManager;ILjava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendReceivedEvents(ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->savePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->disableDlmSync()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->enableDlmSync()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V

    return-void
.end method

.method private backup(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DLMManager.backup()  category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "    Backup already for unsupported category!  (Initialization failure?)"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/nuance/connect/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupHappening()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "    Backup already in progress. Ignoring request."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/nuance/connect/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_2c

    :cond_57
    new-instance v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    invoke-direct {v0, p0, p2, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    goto :goto_2c
.end method

.method private checkBackupRequired()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "checkBackupRequired(): backup is required"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired()V

    goto :goto_1a

    :cond_30
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->savePreferences()V

    :cond_33
    return-void
.end method

.method private checkDlmSync()V
    .registers 6

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "checkDlmSync(): dlmEnabled not enabled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DLMManager.checkDlmSync() currentCategory="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-eqz v2, :cond_c

    sget-object v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "category not supported: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_c

    :cond_60
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupRequired()Z

    move-result v3

    if-eqz v3, :cond_85

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "DLM_EVENT_CORE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_BACKUP_REQUEST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2, v3, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    goto :goto_13

    :cond_85
    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isRestoreRequested()Z

    move-result v3

    if-nez v3, :cond_97

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isPullRequested()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isPullHappening()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_97
    new-instance v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    goto/16 :goto_13
.end method

.method private disableDlmSync()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested()V

    goto :goto_e

    :cond_2d
    return-void
.end method

.method private enableDlmSync()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested()V

    goto :goto_a

    :cond_29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V

    return-void
.end method

.method private loadPreferences()V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;

    array-length v5, v4

    move v2, v1

    :goto_d
    if-ge v2, v5, :cond_3a

    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "CATEGORY_STATE"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v9}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-direct {v8, v7}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_3a
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->isAccountLinked()Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "DLM_SYNC_ENABLED"

    invoke-interface {v3, v2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_57

    :goto_4b
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    const-string/jumbo v0, "DLM_SYNC_USER_ENABLED"

    invoke-interface {v3, v0, v9}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;

    return-void

    :cond_57
    move v0, v1

    goto :goto_4b
.end method

.method private openDlmDB()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    if-nez v0, :cond_d

    new-instance v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v0, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    :cond_d
    return-void
.end method

.method private push()V
    .registers 13

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLMManager.push()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->resetDlmEventsTimer()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getEventCategories()[I

    move-result-object v9

    if-eqz v9, :cond_17

    array-length v0, v9

    if-nez v0, :cond_20

    :cond_17
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLMManager.push() found no categories; exiting push"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLastRowId()J

    move-result-wide v6

    array-length v10, v9

    move v0, v8

    :goto_28
    if-ge v0, v10, :cond_1f

    aget v4, v9, v0

    sget-object v1, Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "category not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v1, v4, v6, v7}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearEvents(IJ)V

    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_59
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v1, v4, v6, v7}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getEvents(IJ)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "23"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "78"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "88"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "   DLMManager.push() category="

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " time="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " events count="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, ", events="

    invoke-interface {v3, v5, v11, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "push"

    sget-object v5, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v3, v5, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/comm/Command;

    move-result-object v3

    iput-boolean v8, v3, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    new-instance v1, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager;Lcom/nuance/connect/comm/Command;IIJ)V

    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendTransaction(Lcom/nuance/connect/comm/Transaction;)V

    goto :goto_56
.end method

.method private resetDlmEventsTimer()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "DLM_EVENTS_LAST_SENT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->setDlmEventsTimer()V

    return-void
.end method

.method private savePreferences()V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CATEGORY_STATE"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_10

    :cond_3e
    const-string/jumbo v0, "DLM_SYNC_ENABLED"

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_56

    const-string/jumbo v0, "DLM_SYNC_USER_ENABLED"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    :cond_56
    return-void
.end method

.method private sendReceivedEvents(ILjava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "DLM_EVENT_COUNT"

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "DLM_EVENT_ACK"

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_DLM_EVENTS_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "temp"

    const-string/jumbo v2, ".download"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/nuance/connect/util/FileUtils;->persistListToFile(Ljava/util/List;Ljava/lang/String;)V

    const-string/jumbo v2, "DLM_EVENT_FILE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_45} :catch_46

    :goto_45
    return-void

    :catch_46
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not send the received events to the host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_45
.end method

.method private sendRestoreEvents(ILjava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DLM_EVENT_FILE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_RESTORE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    return-void
.end method

.method private sendTransaction(Lcom/nuance/connect/comm/Transaction;)V
    .registers 5

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendTransaction(): dropping transaction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/nuance/connect/comm/Transaction;->getNextCommand()Lcom/nuance/connect/comm/Command;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method private setDlmEventsTimer()V
    .registers 6

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "    DLM Sync Disabled. Ignoring request to set timer."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendDlmEventsInterval:I

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "DLM_EVENTS_LAST_SENT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendDlmEventsInterval:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_5d

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v3, Lcom/nuance/connect/service/manager/DlmSyncManager;

    const-string/jumbo v4, "DLM_EVENTS_SEND"

    invoke-virtual {v2, v3, v4}, Lcom/nuance/connect/service/ConnectClient;->getAlarmBuilder(Ljava/lang/Class;Ljava/lang/String;)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/nuance/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->set()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setDlmEventsTimer() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto :goto_c

    :cond_5d
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->timerDlmEvents()V

    goto :goto_c
.end method

.method private timerDlmEvents()V
    .registers 5

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "timerDlmEvents() isFull="

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_13
    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-nez v0, :cond_29

    :cond_1e
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "    DLM Sync Disabled. Ignoring request."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_26
    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_13

    :cond_29
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v3}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v3

    if-nez v3, :cond_61

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupRequired()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupHappening()Z

    move-result v3

    if-nez v3, :cond_79

    :cond_61
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->reset()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "DLM_EVENT_CORE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_BACKUP_REQUEST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2, v3, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    goto :goto_2f

    :cond_79
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupRequired()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->push()V

    goto :goto_2f

    :cond_85
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->resetDlmEventsTimer()V

    goto :goto_26
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_e

    const-string/jumbo v0, "DLM_EVENTS_SEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->timerDlmEvents()V

    :cond_e
    return-void
.end method

.method public deregister()V
    .registers 1

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->deregister()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->disableDlmSync()V

    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SYNC:Lcom/nuance/connect/internal/common/ManagerService;

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

.method public init()V
    .registers 3

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->loadPreferences()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->openDlmDB()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->accountListener:Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/manager/interfaces/AccountListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addLanguageListener(Lcom/nuance/connect/service/manager/interfaces/LanguageListener;)V

    return-void
.end method

.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DlmManager.onFailure "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    const-string/jumbo v1, "backup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    const-string/jumbo v1, "pull"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    const-string/jumbo v1, "pullAck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    const-string/jumbo v1, "restoreRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    const-string/jumbo v1, "restoreGet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    :cond_4c
    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "78"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pause()V

    :cond_76
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1ca

    move v1, v0

    :cond_14
    :goto_14
    return v1

    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DLM_EVENT_CORE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "MESSAGE_COMMAND_PULL_DLM_EVENTS category="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested()V

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "    pullRequested = "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isPullRequested()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    :cond_75
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V

    goto :goto_14

    :pswitch_79
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DLM_EVENT_CORE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "MESSAGE_COMMAND_DLM_BACKUP_REQUIRED category="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired()V

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "    backupRequired = "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupRequired()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    :cond_d9
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V

    goto/16 :goto_14

    :pswitch_de
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "MESSAGE_CLIENT_DLM_RESTORE"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DLM_EVENT_CORE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested()V

    :cond_10c
    new-instance v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    goto/16 :goto_14

    :pswitch_117
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "MESSAGE_CLIENT_DLM_BACKUP_EVENTS"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DLM_EVENT_CORE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/nuance/connect/service/manager/DlmSyncManager;->backup(Ljava/lang/String;I)V

    goto/16 :goto_14

    :pswitch_136
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "MESSAGE_CLIENT_DLM_SYNC_NOW"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->push()V

    goto/16 :goto_14

    :pswitch_143
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;

    if-eqz v3, :cond_15a

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string/jumbo v4, "DEFAULT_KEY"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eq v3, v4, :cond_19c

    :cond_15a
    const-string/jumbo v0, "DEFAULT_KEY"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;

    move v0, v1

    :cond_168
    :goto_168
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "MESSAGE_CLIENT_SET_DLM_STATUS changed="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a8

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->enableDlmSync()V

    :goto_197
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->savePreferences()V

    goto/16 :goto_14

    :cond_19c
    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_168

    move v0, v1

    goto :goto_168

    :cond_1a8
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->disableDlmSync()V

    goto :goto_197

    :pswitch_1ac
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DLM_SYNC_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    const-string/jumbo v4, "DEFAULT_KEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    goto/16 :goto_14

    :pswitch_1c4
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V

    goto/16 :goto_14

    nop

    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_15
        :pswitch_79
        :pswitch_de
        :pswitch_117
        :pswitch_136
        :pswitch_143
        :pswitch_1ac
        :pswitch_1c4
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Unexpected response.  Command="

    iget-object v2, p1, Lcom/nuance/connect/comm/Response;->command:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->savePreferences()V

    return-void
.end method

.method protected sendCommand(Lcom/nuance/connect/comm/Command;)V
    .registers 5

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/comm/Command;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendCommand(): dropping command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->onFailure(Lcom/nuance/connect/comm/Command;)V

    goto :goto_7
.end method

.method public setEnabled(Z)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DLMManager.setEnabled(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-ne p1, v0, :cond_1a

    :goto_19
    return-void

    :cond_1a
    if-eqz p1, :cond_2f

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->isAccountLinked()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_25
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-eqz v0, :cond_31

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->resetDlmEventsTimer()V

    goto :goto_19

    :cond_2f
    const/4 v0, 0x0

    goto :goto_25

    :cond_31
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->reset()V

    goto :goto_19
.end method

.method public start()V
    .registers 4

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_DLM_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DLM_ADD_WORD_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DLM_SYNC_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->managerStartComplete()V

    return-void
.end method
