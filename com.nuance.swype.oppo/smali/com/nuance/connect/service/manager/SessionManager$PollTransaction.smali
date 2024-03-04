.class Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PollTransaction"
.end annotation


# instance fields
.field private failure:Z

.field final synthetic this$0:Lcom/nuance/connect/service/manager/SessionManager;

.field private userInitiated:Z


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/SessionManager;ZZ)V
    .locals 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    iput-boolean p2, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->userInitiated:Z

    const-string v1, "poll"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/nuance/connect/service/manager/SessionManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iput-boolean v0, v1, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    new-instance v1, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction$1;-><init>(Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;Lcom/nuance/connect/service/manager/SessionManager;)V

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/nuance/connect/service/manager/SessionManager;->access$600(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->getLatLong(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "118"

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "119"

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "90"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/nuance/connect/service/manager/SessionManager;->access$600(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$502(Lcom/nuance/connect/service/manager/SessionManager;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/nuance/connect/service/manager/SessionManager;->access$000(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "saving last sent location "

    invoke-static {p1}, Lcom/nuance/connect/service/manager/SessionManager;->access$500(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_LAST_SENT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {p1}, Lcom/nuance/connect/service/manager/SessionManager;->access$500(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic access$1002(Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->failure:Z

    return p1
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->processPollResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method private processPollResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SYSTEM_POLL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/service/manager/SessionManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "29"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "29"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "29"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->performTasks(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->failure:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->isLicensed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$000(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Poll succeeded, build is still unlicensed."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LAST_CHECKIN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Long;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$000(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Exception processing poll responses"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private sendFailMessage()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "POLL_"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->userInitiated:Z

    if-eqz v0, :cond_0

    const-string v0, "USER"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "SYSTEM"

    goto :goto_0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->userInitiated:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->userInitiated:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    goto :goto_0
.end method

.method public onEndProcessing()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$000(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onEndProcessing()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;->onEndProcessing()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/SessionManager;->finishTransaction(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->failure:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->sendFailMessage()V

    :cond_0
    return-void
.end method

.method public rollback()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$000(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "rollback()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method
