.class Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterAccountTransaction"
.end annotation


# instance fields
.field private account:Lcom/nuance/connect/internal/common/ConnectAccount;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/AccountManager;


# direct methods
.method private constructor <init>(Lcom/nuance/connect/service/manager/AccountManager;Lcom/nuance/connect/internal/common/ConnectAccount;)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-direct {p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    iput-object p2, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {p2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v4

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->PHONE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->getServerType()I

    move-result v2

    const-string/jumbo v1, "Android device"

    invoke-virtual {p2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v5, v6, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-interface {v0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    array-length v5, v0

    if-lez v5, :cond_0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getType()Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->getServerType()I

    move-result v1

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v4, v3, v1, v0}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->sendRegister(ILjava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    move-object v0, v1

    move v1, v2

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/service/manager/AccountManager;Lcom/nuance/connect/internal/common/ConnectAccount;Lcom/nuance/connect/service/manager/AccountManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;-><init>(Lcom/nuance/connect/service/manager/AccountManager;Lcom/nuance/connect/internal/common/ConnectAccount;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;Lcom/nuance/connect/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->onResponseRegister(Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method private onResponseRegister(Lcom/nuance/connect/comm/Response;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onResponseRegister()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/AccountManager;->access$502(Lcom/nuance/connect/service/manager/AccountManager;Lcom/nuance/connect/internal/common/ConnectAccount;)Lcom/nuance/connect/internal/common/ConnectAccount;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$500(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->setAccountState(Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$200(Lcom/nuance/connect/service/manager/AccountManager;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    const-string/jumbo v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/AccountManager;->access$500(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_CREATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AccountManager;->finishTransaction(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->rollback()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_CREATED:Lcom/nuance/connect/internal/common/InternalMessages;

    const-string/jumbo v2, "FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendRegister(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "sendRegister()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "72"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "25"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "11"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "112"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "16"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    const-string/jumbo v2, "register"

    sget-object v3, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    new-instance v4, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;

    invoke-direct {v4, p0}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;-><init>(Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/nuance/connect/service/manager/AccountManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;Lcom/nuance/connect/comm/ResponseCallback;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

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
    .locals 1

    const-class v0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "getNextCommand="

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v3, " name="

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public rollback()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AccountManager;->finishTransaction(Ljava/lang/String;)V

    return-void
.end method
