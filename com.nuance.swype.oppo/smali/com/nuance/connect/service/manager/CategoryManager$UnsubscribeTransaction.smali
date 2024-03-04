.class Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnsubscribeTransaction"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->unsubscribe()V

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

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnsubscribeTransaction-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public onEndProcessing()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->finishTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public rollback()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->id:Ljava/lang/String;

    const-string v2, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->finishTransaction(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
.end method

.method protected unsubscribe()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->id:Ljava/lang/String;

    const-string v2, "UNSUBSCRIBE_PENDING"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v1, "unsubscribe"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iget-object v1, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "15"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "77"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void
.end method

.method protected unsubscribeResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "unsubscribeResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    const-string v2, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    const-string v2, "SUBSCRIBED"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    const-string v2, "LAST_UPDATE_FETCHED"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    const-string v2, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
.end method
