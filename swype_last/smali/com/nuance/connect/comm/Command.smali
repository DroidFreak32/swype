.class public Lcom/nuance/connect/comm/Command;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/comm/Command$1;,
        Lcom/nuance/connect/comm/Command$DATA_SOURCE;,
        Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    }
.end annotation


# static fields
.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"


# instance fields
.field public allowDuplicateOfCommand:Z

.field public bufferData:[B

.field public volatile canceled:Z

.field public command:Ljava/lang/String;

.field public commandFamily:Ljava/lang/String;

.field public dataResponse:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

.field public dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

.field public extraHeaders:Ljava/util/Map;
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

.field public handleIOExceptionInConnector:Z

.field public hasBody:Z

.field public identifier:Ljava/lang/String;

.field public method:Ljava/lang/String;

.field public needDevice:Z

.field public notifyDownloadStatus:Z

.field public parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

.field public requireDevice:Z

.field public requireSession:Z

.field public responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

.field public retryCount:I

.field public sendFileLocation:Ljava/lang/String;

.field public sent:Z

.field public thirdPartyURL:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;

.field public version:I

.field public wifiOnly:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    iput-object v0, p0, Lcom/nuance/connect/comm/Command;->requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    sget-object v0, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->JSON:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    iput-object v0, p0, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v0, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->JSON:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    iput-object v0, p0, Lcom/nuance/connect/comm/Command;->dataResponse:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    iput-boolean v2, p0, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    iput-boolean v1, p0, Lcom/nuance/connect/comm/Command;->needDevice:Z

    iput-boolean v1, p0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    const-string/jumbo v0, "POST"

    iput-object v0, p0, Lcom/nuance/connect/comm/Command;->method:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nuance/connect/comm/Command;->hasBody:Z

    iput-boolean v1, p0, Lcom/nuance/connect/comm/Command;->handleIOExceptionInConnector:Z

    iput-boolean v1, p0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    iput-boolean v2, p0, Lcom/nuance/connect/comm/Command;->notifyDownloadStatus:Z

    iput-boolean v2, p0, Lcom/nuance/connect/comm/Command;->sent:Z

    iput-boolean v2, p0, Lcom/nuance/connect/comm/Command;->wifiOnly:Z

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/nuance/connect/comm/Command$1;->$SwitchMap$com$nuance$connect$comm$Command$DATA_SOURCE:[I

    iget-object v1, p0, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v1}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    const-string/jumbo v0, "text/json"

    :goto_10
    return-object v0

    :pswitch_11
    const-string/jumbo v0, "application/octet-stream"

    goto :goto_10

    :pswitch_15
    const-string/jumbo v0, "application/x-protobuf"

    goto :goto_10

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method public setOutgoingFileLocation(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    const-string/jumbo v0, "PUT"

    iput-object v0, p0, Lcom/nuance/connect/comm/Command;->method:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->FILE:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    iput-object v0, p0, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    return-void
.end method

.method public shortString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/comm/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Command\ncommandFamily = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nversion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/comm/Command;->version:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\ncommand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\ndeviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nsessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nthirdPartyURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nretryCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/comm/Command;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nidentifier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/comm/Command;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\nsent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/comm/Command;->sent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\ncanceled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/comm/Command;->canceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nwifiOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/comm/Command;->wifiOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nsendFileLocation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
