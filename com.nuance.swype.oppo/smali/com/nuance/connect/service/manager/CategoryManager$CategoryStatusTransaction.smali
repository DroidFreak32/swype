.class Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryStatusTransaction"
.end annotation


# instance fields
.field private currentCommand:Lcom/nuance/connect/service/comm/Command;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->getStatus()V

    return-void
.end method

.method static synthetic access$2100(Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->statusResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method private getStatus()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v2, "status"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {v1, v2, v3, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void
.end method

.method private statusResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 10

    const/4 v1, 0x1

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    :try_start_0
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "status available for category."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ge v1, v3, :cond_1

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "15"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "51"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "10"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v6}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string v5, "Category is not available for status update ("

    const-string v6, ")"

    invoke-interface {v3, v5, v4, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v6}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v6

    const-string v7, "LAST_UPDATE_AVAILABLE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v4, v7, v8, v9}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v6}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v6

    const-string v7, "URL"

    invoke-virtual {v6, v4, v7, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v5}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v5

    const-string v6, "CHECKSUM"

    invoke-virtual {v5, v4, v6, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$2200(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v5}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v5

    const-string v6, "25"

    invoke-virtual {v5, v4, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1800(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-string v1, "CDB_AVAILABLE"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->taskCompletedAcknowledgement(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1100(Lcom/nuance/connect/service/manager/CategoryManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
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

    const-string v0, "CategoryListCommand"

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

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

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->finishTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public rollback()V
    .locals 0

    return-void
.end method
