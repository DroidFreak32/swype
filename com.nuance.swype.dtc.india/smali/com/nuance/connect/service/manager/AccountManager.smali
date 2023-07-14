.class public Lcom/nuance/connect/service/manager/AccountManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/AccountManager$2;,
        Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;,
        Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FIRST_START:Ljava/lang/String;

.field public static final ACCOUNT_PREF:Ljava/lang/String;

.field public static final COMMAND_ACCOUNT:Ljava/lang/String; = "account"

.field public static final COMMAND_ACCOUNT_CHECK:Ljava/lang/String; = "accountCheck"

.field public static final COMMAND_DELETE_ACCOUNT:Ljava/lang/String; = "deleteAccount"

.field public static final COMMAND_DEVICE_LIST:Ljava/lang/String; = "deviceList"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_NAME_DEVICE:Ljava/lang/String; = "nameDevice"

.field public static final COMMAND_REGISTER:Ljava/lang/String; = "register"

.field public static final COMMAND_REVERIFY:Ljava/lang/String; = "reverify"

.field public static final COMMAND_UNLINK_DEVICE:Ljava/lang/String; = "unlinkDevice"

.field public static final COMMAND_VERIFY:Ljava/lang/String; = "verify"

.field public static final COMMAND_VERSION:I = 0x7

.field public static final DEVICE_TYPE_STRING_TRANSLATED:Ljava/lang/String;

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private accountListener:Lcom/nuance/connect/service/manager/interfaces/AccountListener;

.field private volatile activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

.field private volatile isPrefsLoaded:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->ACCOUNT:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_ACTIVE_ACCOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_PREF:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_FIRST_START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_FIRST_START:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_DEVICE_TYPE_STRING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->DEVICE_TYPE_STRING_TRANSLATED:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REVERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_DELETE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_UNLINK_DEVICE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REFRESH_DEVICES:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/AccountManager;->isPrefsLoaded:Z

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/service/manager/AccountManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/AccountManager$1;-><init>(Lcom/nuance/connect/service/manager/AccountManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountListener:Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "AccountManager()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->version:I

    sget-object v0, Lcom/nuance/connect/service/manager/AccountManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->commandFamily:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/AccountManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AccountManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "account"

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "register"

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "accountCheck"

    new-array v2, v4, [I

    aput v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "verify"

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "reverify"

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "unlinkDevice"

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "nameDevice"

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "deviceList"

    new-array v2, v4, [I

    aput v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "deleteAccount"

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x1
        0xf
    .end array-data

    :array_3
    .array-data 4
        0x1
        0xf
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/AccountManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->cleanHouse()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/AccountManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/internal/common/ConnectAccount;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nuance/connect/service/manager/AccountManager;Lcom/nuance/connect/internal/common/ConnectAccount;)Lcom/nuance/connect/internal/common/ConnectAccount;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    return-object p1
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/manager/AccountManager;Lorg/json/JSONArray;Lcom/nuance/connect/internal/common/ConnectAccount;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/AccountManager;->setDevices(Lorg/json/JSONArray;Lcom/nuance/connect/internal/common/ConnectAccount;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/manager/AccountManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->requestRecalculatePollInterval()V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/manager/AccountManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendPoll()V

    return-void
.end method

.method private cleanHouse()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->requestRecalculatePollInterval()V

    return-void
.end method

.method private deleteActiveAccount(ZZ)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->cleanHouse()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_DELETED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->setAccountState(Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;)V

    goto :goto_0
.end method

.method private deleteDevice(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p2}, Lcom/nuance/connect/service/manager/AccountManager;->deleteActiveAccount(ZZ)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDeviceCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Attempting to Delete a device on an inactive account, ignoring."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendDeviceUpdate()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->markAsDeleted()V

    goto :goto_0
.end method

.method private findActiveAccount()Lcom/nuance/connect/internal/common/ConnectAccount;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    return-object v0
.end method

.method private getRegisteringAccount()Lcom/nuance/connect/internal/common/ConnectAccount;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    return-object v0
.end method

.method private loadPreferences()V
    .locals 7

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->isPrefsLoaded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_PREF:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_PREF:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-direct {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Active Account loaded from JSON successfully"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ID: "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ", state: "

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v4

    const-string/jumbo v5, ", deviceCt: "

    iget-object v6, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDeviceCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->isPrefsLoaded:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Failed to load stored account"

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onResponseAccount(Lcom/nuance/connect/comm/Response;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onResponseAccount()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "72"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/util/StringUtils;->normalizeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v2, "73"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->setDeviceCount(I)V

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "75"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/manager/AccountManager;->setDevices(Lorg/json/JSONArray;Lcom/nuance/connect/internal/common/ConnectAccount;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->requestRecalculatePollInterval()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendStatusUpdate()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    return-void

    :cond_1
    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->cleanHouse()V

    goto :goto_0
.end method

.method private onResponseAccountCheck(Lcom/nuance/connect/comm/Response;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onResponseAccountCheck()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "74"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "72"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "72"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "JSONException "

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->setExistsOnServer(Z)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendStatusUpdate()V

    return-void
.end method

.method private onResponseDeleteAccount(Lcom/nuance/connect/comm/Response;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onResponseDeleteAccount()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v2, v2}, Lcom/nuance/connect/service/manager/AccountManager;->deleteActiveAccount(ZZ)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendPoll()V

    :cond_0
    return-void
.end method

.method private onResponseDeviceList(Lcom/nuance/connect/comm/Response;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onResponseDeviceList() "

    iget v2, p1, Lcom/nuance/connect/comm/Response;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "75"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/manager/AccountManager;->setDevices(Lorg/json/JSONArray;Lcom/nuance/connect/internal/common/ConnectAccount;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->requestRecalculatePollInterval()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendDeviceUpdate()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    :cond_0
    return-void
.end method

.method private onResponseReverify(Lcom/nuance/connect/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onResponseReverify()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Verification code resent."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onResponseUnlinkDevice(Lcom/nuance/connect/comm/Response;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onResponseUnlinkDevice()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/nuance/connect/service/manager/AccountManager;->deleteDevice(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Unlinking current device.  The account is no longer valid."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->invalidAccount()V

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->requestRecalculatePollInterval()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendPoll()V

    :cond_1
    return-void
.end method

.method private requestRecalculatePollInterval()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_RECALCULATE_POLLING:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    return-void
.end method

.method private savePreferences()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_PREF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_PREF:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private sendAccount()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendAccount()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    const-string/jumbo v0, "account"

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/AccountManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AccountManager;->sendCommand(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method

.method private sendAccountCheck()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendAccountCheck()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "72"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "25"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "74"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "accountCheck"

    sget-object v2, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v2, v1}, Lcom/nuance/connect/service/manager/AccountManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/comm/Command;)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private sendDeleteAccount(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendDeleteAccount("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v0, "deleteAccount"

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/AccountManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    const-string/jumbo v2, "94"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/comm/Command;)V

    invoke-direct {p0, v4, v4}, Lcom/nuance/connect/service/manager/AccountManager;->deleteActiveAccount(ZZ)V

    return-void
.end method

.method private sendDeviceList()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendDeviceList(): "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "deviceList"

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/AccountManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/comm/Command;)V

    :cond_0
    return-void
.end method

.method private sendDeviceUpdate()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_DEVICES_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    return-void
.end method

.method private sendPoll()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_POLL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    return-void
.end method

.method private sendReverify(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendReverify()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "72"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "25"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "11"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "reverify"

    sget-object v2, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2, v0}, Lcom/nuance/connect/service/manager/AccountManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method

.method private sendStatusUpdate()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_LIST_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    return-void
.end method

.method private sendUnlinkDevice(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendUnlinkDevice(): "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "unlinkDevice"

    sget-object v2, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2, v0}, Lcom/nuance/connect/service/manager/AccountManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/comm/Command;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/service/manager/AccountManager;->deleteDevice(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private setDevices(Lorg/json/JSONArray;Lcom/nuance/connect/internal/common/ConnectAccount;)V
    .locals 12

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "no devices for account!"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "count "

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_1
    move v8, v1

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v8, v1, :cond_5

    :try_start_0
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v1, "16"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "5"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "112"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "112"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_3
    invoke-static {v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->from(I)Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    new-instance v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v6, "76"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-direct/range {v1 .. v7}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_4
    :try_start_1
    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->PHONE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->getServerType()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_3

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error processing JSON response"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error processing response"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p2, v9}, Lcom/nuance/connect/internal/common/ConnectAccount;->addDevices(Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public deregister()V
    .locals 1

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->deregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->loadPreferences()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->ACCOUNT:Lcom/nuance/connect/internal/common/ManagerService;

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

.method public getManagerPollInterval()I
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDeviceCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_SYNC:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_POLLING_INTERVAL_NO_FEATURES:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public init()V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->loadPreferences()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountListener:Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/manager/interfaces/AccountListener;)V

    return-void
.end method

.method public isAccountLinked()Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->loadPreferences()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onHandleMessage(MESSAGE_CLIENT_ACCOUNT_REGISTER)"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;-><init>(Lcom/nuance/connect/service/manager/AccountManager;Lcom/nuance/connect/internal/common/ConnectAccount;Lcom/nuance/connect/service/manager/AccountManager$1;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendTransaction(Lcom/nuance/connect/comm/Transaction;)V

    :cond_0
    move v0, v8

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onHandleMessage(MESSAGE_CLIENT_ACCOUNT_VERIFY)"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->getRegisteringAccount()Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendVerify("

    invoke-virtual {v9}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v9}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ", "

    const-string/jumbo v7, ")"

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;

    invoke-direct {v0, p0, v9, v6}, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;-><init>(Lcom/nuance/connect/service/manager/AccountManager;Lcom/nuance/connect/internal/common/ConnectAccount;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeTransactions:Ljava/util/Map;

    invoke-interface {v0}, Lcom/nuance/connect/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->sendTransaction(Lcom/nuance/connect/comm/Transaction;)V

    :cond_1
    :goto_1
    move v0, v8

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Another verification request is being processed; ignoring."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    const-string/jumbo v2, "STATUS_CANCELED"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "No account found to verify."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    const-string/jumbo v2, "FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onHandleMessage(MESSAGE_CLIENT_ACCOUNT_REVERIFY)"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/manager/AccountManager;->sendReverify(Ljava/lang/String;I)V

    :cond_4
    move v0, v8

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onHandleMessage(MESSAGE_CLIENT_ACCOUNT_DELETE)"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/AccountManager;->sendDeleteAccount(Z)V

    move v0, v8

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onHandleMessage(MESSAGE_CLIENT_ACCOUNT_UNLINK_DEVICE)"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/AccountManager;->sendUnlinkDevice(Ljava/lang/String;)V

    :cond_5
    move v0, v8

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onHandleMessage(MESSAGE_CLIENT_ACCOUNT_REFRESH_DEVICES)"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendDeviceList()V

    move v0, v8

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseAccount(Lcom/nuance/connect/comm/Response;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "accountCheck"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseAccountCheck(Lcom/nuance/connect/comm/Response;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "reverify"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseReverify(Lcom/nuance/connect/comm/Response;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "unlinkDevice"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseUnlinkDevice(Lcom/nuance/connect/comm/Response;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "deviceList"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseDeviceList(Lcom/nuance/connect/comm/Response;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "deleteAccount"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseDeleteAccount(Lcom/nuance/connect/comm/Response;)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SWYPE_BUILD_TYPE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/BuildProps;->get(Lcom/nuance/connect/util/BuildProps$BuildProperty;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->ACCOUNT_ACCOUNT_EMAIL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AccountManager: Auto-registering an account for TESTING PURPOSES: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AccountManager;->managerStartComplete()V

    return-void
.end method
