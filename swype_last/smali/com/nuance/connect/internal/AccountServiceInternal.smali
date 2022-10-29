.class Lcom/nuance/connect/internal/AccountServiceInternal;
.super Lcom/nuance/connect/internal/AbstractService;

# interfaces
.implements Lcom/nuance/connect/api/AccountService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/AccountServiceInternal$2;,
        Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PREF:Ljava/lang/String; = "account_ACTIVE_ACCOUNT"

.field private static final CALLBACK_CREATED:I = 0x0

.field private static final CALLBACK_ERROR:I = 0x3

.field private static final CALLBACK_LINKED:I = 0x1

.field private static final CALLBACK_STATUS:I = 0x4

.field private static final CALLBACK_UPDATED:I = 0x2

.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

.field private final callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/connect/api/AccountService$AccountCallback;",
            ">;"
        }
    .end annotation
.end field

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private devLog:Lcom/nuance/connect/util/Logger$Log;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private final messageHandler:Landroid/os/Handler;

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private final throttleProtection:Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_LIST_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_CREATED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_INVALIDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_DEVICES_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_DELETED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/AccountServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 5

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstractService;-><init>()V

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v0, Lcom/nuance/connect/internal/AccountServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/AccountServiceInternal$1;-><init>(Lcom/nuance/connect/internal/AccountServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->messageHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    new-instance v0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->messageHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;-><init>(Landroid/os/Handler;Lcom/nuance/connect/internal/ClientBinder;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->throttleProtection:Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    if-eqz v0, :cond_87

    const-string/jumbo v1, "account_ACTIVE_ACCOUNT"

    invoke-interface {v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    :try_start_5e
    const-string/jumbo v1, "account_ACTIVE_ACCOUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-direct {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/AccountServiceInternal;->isAccountRegisteredAndVerified()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/UserSettings;->setDlmSyncAccountEnabled(Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Active Account loaded from JSON successfully"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_87} :catch_88

    :cond_87
    :goto_87
    return-void

    :catch_88
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Failed to load active account"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_87
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/AccountServiceInternal;Landroid/os/Handler;Landroid/os/Message;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/AccountServiceInternal;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100()[Lcom/nuance/connect/internal/common/InternalMessages;
    .registers 1

    sget-object v0, Lcom/nuance/connect/internal/AccountServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private doCallback(IILjava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-array v2, v1, [Lcom/nuance/connect/api/AccountService$AccountCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/AccountService$AccountCallback;

    packed-switch p1, :pswitch_data_50

    array-length v2, v0

    :goto_f
    if-ge v1, v2, :cond_33

    aget-object v3, v0, v1

    invoke-interface {v3, p2, p3}, Lcom/nuance/connect/api/AccountService$AccountCallback;->status(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :pswitch_19
    array-length v2, v0

    :goto_1a
    if-ge v1, v2, :cond_33

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/nuance/connect/api/AccountService$AccountCallback;->created()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :pswitch_24
    array-length v2, v0

    :goto_25
    if-ge v1, v2, :cond_33

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/nuance/connect/api/AccountService$AccountCallback;->linked()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :pswitch_2f
    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-nez v2, :cond_34

    :cond_33
    return-void

    :cond_34
    array-length v2, v0

    :goto_35
    if-ge v1, v2, :cond_33

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevicesArray()[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/api/AccountService$AccountCallback;->devicesUpdated([Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :pswitch_45
    array-length v2, v0

    :goto_46
    if-ge v1, v2, :cond_33

    aget-object v3, v0, v1

    invoke-interface {v3, p2, p3}, Lcom/nuance/connect/api/AccountService$AccountCallback;->onError(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_19
        :pswitch_24
        :pswitch_2f
        :pswitch_45
    .end packed-switch
.end method

.method private findActiveAccount(Ljava/util/HashMap;)Lcom/nuance/connect/internal/common/ConnectAccount;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/common/ConnectAccount;",
            ">;)",
            "Lcom/nuance/connect/internal/common/ConnectAccount;"
        }
    .end annotation

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_34
    :goto_34
    return-object v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 11

    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/nuance/connect/internal/AccountServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c6

    :goto_16
    return-void

    :pswitch_17
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "MESSAGE_HOST_ACCOUNT_LIST_AVAILABLE"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_47

    :cond_34
    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Account has been deleted."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/16 v1, 0x200

    const-string/jumbo v2, "Account has been deleted"

    invoke-direct {p0, v3, v1, v2}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    :goto_44
    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    goto :goto_16

    :cond_47
    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Account updated; device count: "

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevicesArray()[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v6, v4, v5}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    goto :goto_44

    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "MESSAGE_HOST_ACCOUNT_VERIFY status:"

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account successfully linked."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/UserSettings;->setDlmSyncAccountEnabled(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v4, v5}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    invoke-direct {p0, v6, v4, v5}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    goto/16 :goto_16

    :cond_a2
    const-string/jumbo v1, "FAILURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account linking failed. Invalid verification code."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    const/16 v0, 0x300

    const-string/jumbo v1, "The verification code supplied is invalid."

    invoke-direct {p0, v7, v0, v1}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    goto/16 :goto_16

    :cond_bd
    const-string/jumbo v1, "STATUS_CANCELED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account linking canceled."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    const/16 v0, 0x500

    const-string/jumbo v1, "Verification request cancelled, a duplicate verification request is already being processed."

    invoke-direct {p0, v7, v0, v1}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    goto/16 :goto_16

    :cond_d8
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account linking failed.  Server indicates the account is invalid."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    const/16 v0, 0x200

    const-string/jumbo v1, "Account has been invalidated"

    invoke-direct {p0, v3, v0, v1}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    goto/16 :goto_16

    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "MESSAGE_HOST_ACCOUNT_CREATED status:"

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account created successfully"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-direct {p0, v4, v4, v5}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    goto/16 :goto_16

    :cond_122
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Failed to create account"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14b

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v6, v0}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    goto/16 :goto_16

    :cond_14b
    const/16 v0, 0x200

    const-string/jumbo v1, "Invalid argument supplied during account creation"

    invoke-direct {p0, v3, v0, v1}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    goto/16 :goto_16

    :pswitch_155
    iput-object v5, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account linking failed.  Server indicates the account is invalid."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nuance/connect/internal/UserSettings;->setDlmSyncAccountEnabled(Z)V

    const/16 v0, 0x200

    const-string/jumbo v1, "Account has been invalidated."

    invoke-direct {p0, v3, v0, v1}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    goto/16 :goto_16

    :pswitch_172
    iput-object v5, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account has been deleted."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nuance/connect/internal/UserSettings;->setDlmSyncAccountEnabled(Z)V

    const/16 v0, 0x100

    const-string/jumbo v1, "Account has been deleted."

    invoke-direct {p0, v7, v0, v1}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    goto/16 :goto_16

    :pswitch_18f
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "MESSAGE_HOST_ACCOUNT_DEVICES_UPDATED"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Account device updated; device count: "

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-nez v0, :cond_1ba

    const-string/jumbo v0, "null account"

    :goto_1b2
    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v6, v4, v5}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    goto/16 :goto_16

    :cond_1ba
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevicesArray()[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b2

    :pswitch_data_1c6
    .packed-switch 0x1
        :pswitch_17
        :pswitch_5c
        :pswitch_ea
        :pswitch_155
        :pswitch_172
        :pswitch_18f
    .end packed-switch
.end method

.method private setActiveAccount(Lcom/nuance/connect/internal/common/ConnectAccount;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    return-void
.end method


# virtual methods
.method public deleteAccount(Z)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->setAccountState(Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;)V

    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_DELETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/UserSettings;->setDlmSyncAccountEnabled(Z)V

    return-void
.end method

.method public getAccount()Lcom/nuance/connect/internal/common/ConnectAccount;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/nuance/connect/internal/AccountServiceInternal;->isAccountActive()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceNameFromId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v1, ""

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0

    :cond_22
    move-object v0, v1

    goto :goto_21
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAccountActive()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method public isAccountKnownAccount(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public isAccountRegistered()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public isAccountRegisteredAndVerified()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public isValidEmail(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    if-eqz p1, :cond_10

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public refreshDevices()V
    .registers 7

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->throttleProtection:Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REFRESH_DEVICES:Lcom/nuance/connect/internal/common/InternalMessages;

    # invokes: Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->send(Lcom/nuance/connect/internal/common/InternalMessages;)Z
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->access$200(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;Lcom/nuance/connect/internal/common/InternalMessages;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->throttleProtection:Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REFRESH_DEVICES:Lcom/nuance/connect/internal/common/InternalMessages;

    # invokes: Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->getSendTime(Lcom/nuance/connect/internal/common/InternalMessages;)J
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->access$300(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;Lcom/nuance/connect/internal/common/InternalMessages;)J

    move-result-wide v0

    const/4 v2, 0x4

    const/16 v3, 0xc

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getDevices delayed until: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    :cond_28
    return-void
.end method

.method public registerAccount(ILjava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;Ljava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "registerAccount()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v8, Lcom/nuance/connect/internal/common/ConnectAccount;

    const/4 v1, 0x0

    sget-object v3, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->USER_CREATED:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    invoke-direct {v8, v1, p2, p1, v3}, Lcom/nuance/connect/internal/common/ConnectAccount;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;)V

    new-instance v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v3, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;)V

    invoke-virtual {v8, v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->addDevice(Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;)V

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    invoke-direct {p0, v8}, Lcom/nuance/connect/internal/AccountServiceInternal;->setActiveAccount(Lcom/nuance/connect/internal/common/ConnectAccount;)V

    return-void
.end method

.method public registerCallback(Lcom/nuance/connect/api/AccountService$AccountCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendReverify()V
    .registers 7

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->throttleProtection:Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REVERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    # invokes: Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->send(Lcom/nuance/connect/internal/common/InternalMessages;)Z
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->access$200(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;Lcom/nuance/connect/internal/common/InternalMessages;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->throttleProtection:Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REVERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    # invokes: Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->getSendTime(Lcom/nuance/connect/internal/common/InternalMessages;)J
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->access$300(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;Lcom/nuance/connect/internal/common/InternalMessages;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "reverify delayed until: "

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    const/16 v3, 0xc

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reverify delayed until: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    :cond_34
    return-void
.end method

.method public unlinkDevice(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_UNLINK_DEVICE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->markAsDeleted()V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getIsThisDevice()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->setAccountState(Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;)V

    const/4 v0, 0x3

    const/16 v1, 0x200

    const-string/jumbo v2, "The current account has be invalidated because the device has been unlinked."

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/connect/internal/AccountServiceInternal;->doCallback(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/UserSettings;->setDlmSyncAccountEnabled(Z)V

    :cond_53
    return-void
.end method

.method public unregisterCallback(Lcom/nuance/connect/api/AccountService$AccountCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method

.method public validateAccount(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method
