.class Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/LanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LanguageListTransaction"
.end annotation


# instance fields
.field private currentCommand:Lcom/nuance/connect/service/comm/Command;

.field private final taskAcknowledgement:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/LanguageManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    iput-object p2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->taskAcknowledgement:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->getList()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->listResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method private getList()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "12"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    const-string v2, "list"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {v1, v2, v3, v0}, Lcom/nuance/connect/service/manager/LanguageManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    new-instance v1, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction$1;-><init>(Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void
.end method

.method private listResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 9

    const/4 v8, 0x1

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v8, v0, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Processing languages available for download."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ge v2, v1, :cond_4

    :try_start_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "11"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v4}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    const-string v4, "20"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v5}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v5

    const-string v6, "PROP_VERSION"

    invoke-virtual {v5, v3, v6, v4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "51"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "10"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v6}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v6

    const-string v7, "CHECKSUM"

    invoke-virtual {v6, v3, v7, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v5}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v5

    const-string v6, "URL"

    invoke-virtual {v5, v3, v6, v4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "102"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v4}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    const-string v5, "PROP_CORE"

    const-string v6, "102"

    invoke-virtual {v4, v3, v5, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v4}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    const-string v5, "PROP_CORE_VERSION"

    const-string v6, "102"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v5, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const-string v4, "103"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v4}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    const-string v5, "PROP_CORE"

    const-string v6, "103"

    invoke-virtual {v4, v3, v5, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v4}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    const-string v5, "PROP_CORE_VERSION"

    const-string v6, "103"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v5, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v3}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failure processing JSON object: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " list: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0

    :cond_2
    :try_start_3
    const-string v4, "104"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v4}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    const-string v5, "PROP_CORE"

    const-string v6, "104"

    invoke-virtual {v4, v3, v5, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v4}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    const-string v5, "PROP_CORE_VERSION"

    const-string v6, "104"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v5, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v4, "105"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v4}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    const-string v5, "PROP_CORE"

    const-string v6, "105"

    invoke-virtual {v4, v3, v5, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v4}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    const-string v5, "PROP_CORE_VERSION"

    const-string v6, "105"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v5, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0, v8}, Lcom/nuance/connect/service/manager/LanguageManager;->access$402(Lcom/nuance/connect/service/manager/LanguageManager;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/LanguageManager;->DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/LanguageManager;->access$400(Lcom/nuance/connect/service/manager/LanguageManager;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0, v8}, Lcom/nuance/connect/service/manager/LanguageManager;->access$500(Lcom/nuance/connect/service/manager/LanguageManager;Z)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->managerStartComplete()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/LanguageManager;->finishTransaction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->taskAcknowledgement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->taskCompletedAcknowledgement(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$402(Lcom/nuance/connect/service/manager/LanguageManager;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/LanguageManager;->DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/LanguageManager;->access$400(Lcom/nuance/connect/service/manager/LanguageManager;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    goto :goto_2
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

    const-string v0, "LanguageListTransaction"

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

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

.method public rollback()V
    .locals 0

    return-void
.end method
