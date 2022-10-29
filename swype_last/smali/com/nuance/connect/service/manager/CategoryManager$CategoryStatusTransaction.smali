.class Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryStatusTransaction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->getStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;Lcom/nuance/connect/comm/Response;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->statusResponse(Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method private getStatus()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string/jumbo v2, "status"

    sget-object v3, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {v1, v2, v3, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method

.method private statusResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 12

    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/connect/comm/Response;->status:I

    if-ne v0, v1, :cond_e9

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "77"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "status available for category."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "77"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_d2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_bc

    const/4 v1, 0x0

    :goto_35
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_bc

    :try_start_3b
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "15"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "51"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "10"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v6, v6, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v6, v4}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_70

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v2}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string/jumbo v5, "Category is not available for status update ("

    const-string/jumbo v6, ")"

    invoke-interface {v2, v5, v4, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_70
    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v6, v6, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v7, "LAST_UPDATE_AVAILABLE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v4, v7, v8, v9}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v6, v6, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v7, "URL"

    invoke-virtual {v6, v4, v7, v5}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v5, v5, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v6, "CHECKSUM"

    invoke-virtual {v5, v4, v6, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->subManagerTypeLookup:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/nuance/connect/service/manager/CategoryManager;->access$900(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v5, v4}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a9
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_a9} :catch_aa

    goto :goto_6d

    :catch_aa
    move-exception v2

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v4}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v4

    const-string/jumbo v5, "Could not parse JSON response: "

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6d

    :cond_bc
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c0
    :goto_c0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    if-eqz v0, :cond_c0

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->onDataUpdated()V

    goto :goto_c0

    :cond_d2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager;->getSubManager(Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1000(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-string/jumbo v1, "CDB_AVAILABLE"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->taskCompletedAcknowledgement(Ljava/lang/String;)V

    :cond_e9
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1100(Lcom/nuance/connect/service/manager/CategoryManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
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

    const-string/jumbo v0, "CategoryStatusTransaction"

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

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
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->finishTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public rollback()V
    .registers 1

    return-void
.end method
