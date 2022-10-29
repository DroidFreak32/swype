.class public Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerifyAccountTransaction"
.end annotation


# instance fields
.field account:Lcom/nuance/connect/internal/common/ConnectAccount;

.field private volatile canceled:Z

.field private code:Ljava/lang/String;

.field private volatile success:Z

.field final synthetic this$0:Lcom/nuance/connect/service/manager/AccountManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/AccountManager;Lcom/nuance/connect/internal/common/ConnectAccount;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-direct {p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    iput-object p3, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->code:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->sendVerify()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;Lcom/nuance/connect/comm/Response;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->onResponseVerify(Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method private fail(Z)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "fail("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->rollback()V

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # invokes: Lcom/nuance/connect/service/manager/AccountManager;->cleanHouse()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$100(Lcom/nuance/connect/service/manager/AccountManager;)V

    :cond_1d
    return-void
.end method

.method private finishAccountActivation()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "finishAccountActivation()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    # setter for: Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/AccountManager;->access$502(Lcom/nuance/connect/service/manager/AccountManager;Lcom/nuance/connect/internal/common/ConnectAccount;)Lcom/nuance/connect/internal/common/ConnectAccount;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # invokes: Lcom/nuance/connect/service/manager/AccountManager;->requestRecalculatePollInterval()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$800(Lcom/nuance/connect/service/manager/AccountManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # invokes: Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$200(Lcom/nuance/connect/service/manager/AccountManager;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    const-string/jumbo v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-static {v2}, Lcom/nuance/connect/service/manager/AccountManager;->access$500(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->linkedAccount()V

    return-void
.end method

.method private onResponseVerify(Lcom/nuance/connect/comm/Response;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onResponseVerify()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    if-ne v0, v2, :cond_79

    :try_start_12
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "97"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "71"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "73"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "113"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v3, v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->setAccountId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v3, v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->setDeviceCount(I)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->setCreationTimeSeconds(I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->ACCOUNT_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->verify()V

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "75"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    # invokes: Lcom/nuance/connect/service/manager/AccountManager;->setDevices(Lorg/json/JSONArray;Lcom/nuance/connect/internal/common/ConnectAccount;)V
    invoke-static {v1, v0, v2}, Lcom/nuance/connect/service/manager/AccountManager;->access$700(Lcom/nuance/connect/service/manager/AccountManager;Lorg/json/JSONArray;Lcom/nuance/connect/internal/common/ConnectAccount;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->success:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_67} :catch_68

    :goto_67
    return-void

    :catch_68
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "Error processing JSON response"

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v4}, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->fail(Z)V

    goto :goto_67

    :cond_79
    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_8f

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Account link failed due to INVALID_ACCOUNT status from server"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->fail(Z)V

    goto :goto_67

    :cond_8f
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Account link failed due to unknown status: "

    iget v2, p1, Lcom/nuance/connect/comm/Response;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->fail(Z)V

    goto :goto_67
.end method

.method private sendVerify()V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "sendVerify()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "72"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "25"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "57"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    const-string/jumbo v2, "verify"

    sget-object v3, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    new-instance v4, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction$1;

    invoke-direct {v4, p0}, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction$1;-><init>(Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/nuance/connect/service/manager/AccountManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;Lcom/nuance/connect/comm/ResponseCallback;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->canceled:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    :cond_b
    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "getNextCommand="

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v3, " name="

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getPriority()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .registers 2

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public onEndProcessing()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AccountManager;->finishTransaction(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->success:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # invokes: Lcom/nuance/connect/service/manager/AccountManager;->sendPoll()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$900(Lcom/nuance/connect/service/manager/AccountManager;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->finishAccountActivation()V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    const-string/jumbo v2, "FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public rollback()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method
