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

.field private categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

.field private downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

.field private volatile enabled:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;

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
    .locals 3

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
    .locals 3

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

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->typesSupported:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->PLATFORM_UPDATE_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p2, v0}, Lcom/nuance/connect/service/ConnectClient;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->PLATFORM_UPDATE_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p2, v0}, Lcom/nuance/connect/service/ConnectClient;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    :cond_0
    iput-boolean p3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->enabled:Z

    return-void
.end method

.method static synthetic access$002(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;)Lcom/nuance/connect/service/manager/CategoryManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    return-object v0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getMessageIDs()[I
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->MESSAGES_HANDLED:[I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_UPDATES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypesSupported()Ljava/util/List;
    .locals 1
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
    .locals 0

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->enabled:Z

    return v0
.end method

.method public languageUpdated([ILjava/util/Set;)V
    .locals 0
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
    .locals 0

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "MESSAGE_CLIENT_CATEGORY_PLATFORM_UPDATE_DOWNLOAD "

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    if-nez v2, :cond_0

    new-instance v2, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {v2, p0, v1, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;-><init>(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V

    iput-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "MESSAGE_CLIENT_CATEGORY_PLATFORM_UPDATE_CANCEL"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->cancel()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->enabled:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->enabled:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Updated "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " status to "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;Z)V
    .locals 8

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "setInstallMetadata()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->typesSupported:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, v2, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "LAST_UPDATE_FETCHED"

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "LAST_UPDATE_AVAILABLE"

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Platform Update available: "

    const-string v3, " lastFetched: "

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, " latestAvailable: "

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->categoriesManaged:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "unsubscribe("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method
