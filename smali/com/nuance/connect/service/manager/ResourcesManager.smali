.class public Lcom/nuance/connect/service/manager/ResourcesManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/ResourcesManager$1;
    }
.end annotation


# static fields
.field public static final ALARM_UNIQUE_ID:I = 0x34940a1

.field public static final COMMAND_DOWNLOAD_IMAGE:Ljava/lang/String; = "downloadImage"

.field public static final COMMAND_DOWNLOAD_TEXT:Ljava/lang/String; = "downloadText"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_VERSION:I = 0x1

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ResourcesManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/ResourcesManager;->MANAGER_NAME:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_GET_IMAGE_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_GET_TEXT_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/ResourcesManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    sget-object v0, Lcom/nuance/connect/service/manager/ResourcesManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ResourcesManager;->commandFamily:Ljava/lang/String;

    iput v3, p0, Lcom/nuance/connect/service/manager/ResourcesManager;->version:I

    sget-object v0, Lcom/nuance/connect/service/manager/ResourcesManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/ResourcesManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ResourcesManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "downloadText"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ResourcesManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "downloadImage"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    return-void
.end method

.method private getImageResource(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "downloadImage"

    sget-object v1, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/ResourcesManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-object p1, v0, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/ResourcesManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method

.method private getTextResource(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "downloadText"

    sget-object v1, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/ResourcesManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-object p1, v0, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/ResourcesManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

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

.method public init()V
    .locals 0

    return-void
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "KEY"

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v2, v2, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_STORE_IMAGE_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ResourcesManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "downloadText"

    invoke-virtual {v2, v3, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_STORE_TEXT_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/nuance/connect/util/StringUtils;->getFileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VALUE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ResourcesManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "VALUE"

    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->fileLocation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/nuance/connect/service/manager/ResourcesManager$1;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

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

    if-eqz v1, :cond_0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/ResourcesManager;->getImageResource(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/ResourcesManager;->getTextResource(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ResourcesManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CONNECT_RESOURCES:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ResourcesManager;->managerStartComplete()V

    return-void
.end method
