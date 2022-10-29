.class public Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceRegistrationTransaction"
.end annotation


# static fields
.field private static final DEVICE_TYPE:Ljava/lang/String; = "Android"


# instance fields
.field private final buildProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private sessionId:Ljava/lang/String;

.field private success:Z

.field private swyperId:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/DeviceManager;

.field private transactionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DeviceManager;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    invoke-direct {p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nuance/connect/util/UUIDFactory;->generateUUID(J)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->deviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->buildProperties:Ljava/util/Map;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->registerDevice()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;Lcom/nuance/connect/comm/Response;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->processRegisterDeviceResponse(Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;Lcom/nuance/connect/comm/Response;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->processRegisterDeviceAckResponse(Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method private processRegisterDeviceAckResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processRegisterDeviceAckResponse("

    iget v2, p1, Lcom/nuance/connect/comm/Response;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    packed-switch v0, :pswitch_data_3c

    :pswitch_16
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->reset()V

    new-instance v0, Lcom/nuance/connect/comm/TransactionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Register was unsuccessful. Server response status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/nuance/connect/comm/Response;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/connect/comm/TransactionException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_31
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->sessionId:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->success:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    :pswitch_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_31
        :pswitch_16
        :pswitch_3b
    .end packed-switch
.end method

.method private processRegisterDeviceResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 9

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    packed-switch v0, :pswitch_data_4e

    :pswitch_5
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->reset()V

    new-instance v0, Lcom/nuance/connect/comm/TransactionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Register was unsuccessful. Server response status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/nuance/connect/comm/Response;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/connect/comm/TransactionException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_20
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->deviceId:Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->transactionId:Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "32"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->swyperId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processRegisterDeviceResponse success. deviceId: "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->deviceId:Ljava/lang/String;

    const-string/jumbo v3, " transactionId: "

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->transactionId:Ljava/lang/String;

    const-string/jumbo v5, " swyperId: "

    iget-object v6, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->swyperId:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->registerDeviceAck()V

    :pswitch_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_20
        :pswitch_5
        :pswitch_4c
    .end packed-switch
.end method

.method private registerDevice()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Begin device registration for deviceId "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "5"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "30"

    const-string/jumbo v2, "Android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "31"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->buildProperties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    const-string/jumbo v2, "register"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->needDevice:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    new-instance v1, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$1;-><init>(Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    return-void
.end method

.method private reset()V
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nuance/connect/util/UUIDFactory;->generateUUID(J)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->deviceId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->transactionId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->swyperId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->sessionId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->success:Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->registerDevice()V

    return-void
.end method


# virtual methods
.method public allowDuplicates()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

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
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/register"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

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

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->success:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->deviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->swyperId:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->sessionId:Ljava/lang/String;

    # invokes: Lcom/nuance/connect/service/manager/DeviceManager;->deviceRegistrationComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/connect/service/manager/DeviceManager;->access$300(Lcom/nuance/connect/service/manager/DeviceManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->finishTransaction(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/nuance/connect/comm/AbstractTransaction;->onEndProcessing()V

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Device registration failed! Retrying in "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, " milliseconds."

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto :goto_f
.end method

.method public registerDeviceAck()V
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "5"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    const-string/jumbo v2, "ack"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/nuance/connect/service/manager/DeviceManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->transactionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->needDevice:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    new-instance v1, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$2;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$2;-><init>(Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    return-void
.end method

.method public requiresDeviceId()Z
    .registers 2

    const/4 v0, 0x0

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

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->success:Z

    return-void
.end method
