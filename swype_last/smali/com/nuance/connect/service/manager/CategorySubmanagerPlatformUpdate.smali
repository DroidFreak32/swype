.class public Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;
.implements Lcom/nuance/connect/service/manager/interfaces/SubManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$2;
    }
.end annotation


# static fields
.field private static final MESSAGES_HANDLED:[I

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final categoriesManaged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

.field private downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

.field private volatile enabled:Z

.field private final parent:Lcom/nuance/connect/service/manager/CategoryManager;

.field private final typesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_PLATFORM_UPDATE_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_PLATFORM_UPDATE_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->MESSAGES_HANDLED:[I

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->enabled:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->typesSupported:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, p1, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->PLATFORM_UPDATE_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p2, v0}, Lcom/nuance/connect/service/ConnectClient;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->PLATFORM_UPDATE_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p2, v0}, Lcom/nuance/connect/service/ConnectClient;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    :cond_39
    iput-boolean p3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->enabled:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->typesSupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allCategoryIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_41

    :cond_63
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;)Lcom/nuance/connect/service/manager/CategoryManager;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    return-object v0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public categoriesManagedCount()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public createSubscribeTransaction(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {v0, p0, p1, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;-><init>(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    goto :goto_6
.end method

.method public getManagerPollInterval()I
    .registers 3

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->enabled:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_PLATFORM_UPDATE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_13
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_POLLING_INTERVAL_NO_FEATURES:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e
.end method

.method public getMessageIDs()[I
    .registers 2

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->MESSAGES_HANDLED:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_UPDATES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypesSupported()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->typesSupported:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->enabled:Z

    return v0
.end method

.method public languageUpdated([ILjava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public localeUpdated(Ljava/util/Locale;)V
    .registers 2

    return-void
.end method

.method public onDataUpdated()V
    .registers 9

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onDataUpdated()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->typesSupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allCategoryIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_35
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "LAST_UPDATE_FETCHED"

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "LAST_UPDATE_AVAILABLE"

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Platform Update available: "

    const-string/jumbo v3, " lastFetched: "

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, " latestAvailable: "

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    :cond_8b
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_a2
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v0, 0x1

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_42

    const/4 v0, 0x0

    :cond_13
    :goto_13
    return v0

    :pswitch_14
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "MESSAGE_CLIENT_CATEGORY_PLATFORM_UPDATE_DOWNLOAD "

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_13

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v2, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribe(Ljava/lang/String;)V

    goto :goto_13

    :pswitch_2f
    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "MESSAGE_CLIENT_CATEGORY_PLATFORM_UPDATE_CANCEL"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->cancel()V

    goto :goto_13

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_14
        :pswitch_2f
    .end packed-switch
.end method

.method public onUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)V
    .registers 3

    return-void
.end method

.method public parseJsonListResponse(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processListResponse() -- TYPE_UPDATES"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public setEnabled(Z)V
    .registers 7

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->enabled:Z

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->enabled:Z

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Updated "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " status to "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public start()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_26
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "unsubscribe("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method
