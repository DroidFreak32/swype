.class public Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;
.implements Lcom/nuance/connect/service/manager/interfaces/SubManager;


# static fields
.field private static final CHINESE_DICTIONARIES_ENABLED_PREF:Ljava/lang/String;

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

.field private final client:Lcom/nuance/connect/service/ConnectClient;

.field private enabled:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private final parent:Lcom/nuance/connect/service/manager/CategoryManager;

.field private sendConfigRequest:Z

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
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->MESSAGES_HANDLED:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ChineseDictionariesEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->CHINESE_DICTIONARIES_ENABLED_PREF:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->typesSupported:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/List;

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p2}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->CHINESE_DICTIONARIES_ENABLED_PREF:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendConfigRequest:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method private chineseCatDbReset()V
    .locals 10

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chineseCatDbReset() enabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-array v0, v8, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, v0}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "FILE_LOCATION"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "SUBSCRIBED"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-ge v3, v8, :cond_3

    if-nez v5, :cond_4

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, v0, v9}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v3, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribe(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "DEFAULT_KEY"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v4, v3}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, v0, v7}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getMessageIDs()[I
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->MESSAGES_HANDLED:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

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

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->typesSupported:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "init()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    return-void
.end method

.method install(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "25"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Chinese Addon Dictionary - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "filePath"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

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
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized processNextCategory(I)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method sendChineseAddonDictionaries()V
    .locals 13

    const/4 v12, 0x7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendChineseAddonDictionaries() enabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "PROP_NAME"

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "16"

    invoke-virtual {v6, v0, v7}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PROP_DESCRIPTION"

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "18"

    invoke-virtual {v6, v0, v7}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PROP_LANGUAGE"

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "13"

    invoke-virtual {v6, v0, v7}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PROP_ID"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PROP_CATEGORY_ID"

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "78"

    invoke-virtual {v6, v0, v7}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PROP_RANK"

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "116"

    invoke-virtual {v6, v0, v7}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v6

    const-string v1, "STATUS_AVAILABLE"

    if-ge v6, v12, :cond_3

    if-lez v6, :cond_3

    const-string v1, "STATUS_DOWNLOADING"

    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v6, v0, v7}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v1, "STATUS_UNINSTALL_PENDING"

    :cond_2
    const-string v6, "PROP_INSTALLEDSTATUS"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_1

    :cond_3
    if-ne v6, v12, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "LAST_UPDATE_FETCHED"

    invoke-virtual {v1, v0, v6}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v8, "LAST_UPDATE_AVAILABLE"

    invoke-virtual {v1, v0, v8}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Chinese dictionary has update -- key: ["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] lastFetched: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] lastAvailable: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string v1, "STATUS_INSTALLED_WITH_UPDATE"

    goto :goto_2

    :cond_4
    const-string v1, "STATUS_INSTALLED"

    goto :goto_2

    :cond_5
    const-string v0, "DictionaryList"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DICTIONARIES_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method sendIfChineseAddonDictionary(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->CHINESE_DICTIONARIES_ENABLED_PREF:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Updated "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " status to "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->chineseCatDbReset()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    goto :goto_0
.end method

.method public setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;Z)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "setInstallMetadata()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

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

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->typesSupported:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->chineseCatDbReset()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendConfigRequest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->chineseCatDbReset()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    :cond_1
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "unsubscribe("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "25"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->typesSupported:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    new-instance v0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon$1;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon$1;-><init>(Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
