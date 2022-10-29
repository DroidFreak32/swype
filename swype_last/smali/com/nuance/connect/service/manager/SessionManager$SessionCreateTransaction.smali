.class Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCreateTransaction"
.end annotation


# static fields
.field private static final TRANSACTION_NAME:Ljava/lang/String; = "session/create"


# instance fields
.field private sessionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/SessionManager;


# direct methods
.method private constructor <init>(Lcom/nuance/connect/service/manager/SessionManager;)V
    .registers 5

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-direct {p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    # getter for: Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/SessionManager;->access$100(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "SessionCreateTransaction()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v0, "create"

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/connect/service/manager/SessionManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v2, v0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v2, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    new-instance v1, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction$1;-><init>(Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;Lcom/nuance/connect/service/manager/SessionManager;)V

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/service/manager/SessionManager;Lcom/nuance/connect/service/manager/SessionManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;-><init>(Lcom/nuance/connect/service/manager/SessionManager;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;Lcom/nuance/connect/comm/Response;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->processCreateSessionResponse(Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method private processCreateSessionResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 3

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    packed-switch v0, :pswitch_data_e

    :goto_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void

    :pswitch_9
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->sessionId:Ljava/lang/String;

    goto :goto_5

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "session/create"

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .registers 2

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public onEndProcessing()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # getter for: Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$100(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "session created. sessionId: "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/SessionManager;->resetSession(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # invokes: Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V
    invoke-static {v0, v3, v3}, Lcom/nuance/connect/service/manager/SessionManager;->access$600(Lcom/nuance/connect/service/manager/SessionManager;ZZ)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/SessionManager;->managerStartComplete()V

    :cond_30
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/SessionManager;->finishTransaction(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/nuance/connect/comm/AbstractTransaction;->onEndProcessing()V

    return-void
.end method

.method public requiresDeviceId()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public requiresSessionId()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public rollback()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->sessionId:Ljava/lang/String;

    return-void
.end method
