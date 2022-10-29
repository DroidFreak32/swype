.class Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/LanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LanguageListTransaction"
.end annotation


# instance fields
.field private final taskAcknowledgement:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/LanguageManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-direct {p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    iput-object p2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->taskAcknowledgement:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->getList()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;Lcom/nuance/connect/comm/Response;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->listResponse(Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method private getList()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "12"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    const-string/jumbo v2, "list"

    sget-object v3, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {v1, v2, v3, v0}, Lcom/nuance/connect/service/manager/LanguageManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    new-instance v1, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction$1;-><init>(Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method

.method private listResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 13

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    if-ne v2, v0, :cond_208

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "43"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Processing languages available for download."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "43"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1fa

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_209

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    move v5, v4

    :goto_3d
    :try_start_3d
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_1ce

    move-result v1

    if-ge v5, v1, :cond_1d9

    :try_start_43
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v1, "11"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "20"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "PROP_VERSION"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "51"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "10"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "CHECKSUM"

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "URL"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "102"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d4

    const-string/jumbo v1, "PROP_CORE"

    const-string/jumbo v8, "102"

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "PROP_CORE_VERSION"

    const-string/jumbo v8, "102"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    :goto_9a
    const-string/jumbo v8, "122"

    const-string/jumbo v9, "122"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "124"

    const-string/jumbo v9, "124"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "146"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v9, v3, [I

    array-length v3, v9

    if-lez v3, :cond_189

    move v3, v4

    :goto_c5
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_154

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    aput v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c5

    :cond_d4
    const-string/jumbo v1, "103"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f5

    const-string/jumbo v1, "PROP_CORE"

    const-string/jumbo v8, "103"

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "PROP_CORE_VERSION"

    const-string/jumbo v8, "103"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto :goto_9a

    :cond_f5
    const-string/jumbo v1, "104"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_116

    const-string/jumbo v1, "PROP_CORE"

    const-string/jumbo v8, "104"

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "PROP_CORE_VERSION"

    const-string/jumbo v8, "104"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto :goto_9a

    :cond_116
    const-string/jumbo v1, "105"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_138

    const-string/jumbo v1, "PROP_CORE"

    const-string/jumbo v8, "105"

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "PROP_CORE_VERSION"

    const-string/jumbo v8, "105"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto/16 :goto_9a

    :cond_138
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Core version not supplied for language: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move v1, v2

    goto/16 :goto_9a

    :cond_154
    invoke-static {v9}, Ljava/util/Arrays;->sort([I)V

    :goto_157
    if-nez v1, :cond_184

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v3}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    const-string/jumbo v3, "146"

    invoke-virtual {v1, v6, v3, v9}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;[I)V

    :cond_184
    :goto_184
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_3d

    :cond_189
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Could not process language Ids for "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_1a2
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_1a2} :catch_1a4
    .catchall {:try_start_43 .. :try_end_1a2} :catchall_1ce

    move v1, v2

    goto :goto_157

    :catch_1a4
    move-exception v1

    :try_start_1a5
    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v3}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Failure processing JSON object: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " list: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_1cd
    .catchall {:try_start_1a5 .. :try_end_1cd} :catchall_1ce

    goto :goto_184

    :catchall_1ce
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0

    :cond_1d9
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # setter for: Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I
    invoke-static {v0, v2}, Lcom/nuance/connect/service/manager/LanguageManager;->access$402(Lcom/nuance/connect/service/manager/LanguageManager;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/LanguageManager;->DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I
    invoke-static {v3}, Lcom/nuance/connect/service/manager/LanguageManager;->access$400(Lcom/nuance/connect/service/manager/LanguageManager;)I

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    :cond_1fa
    :goto_1fa
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V
    invoke-static {v0, v2}, Lcom/nuance/connect/service/manager/LanguageManager;->access$500(Lcom/nuance/connect/service/manager/LanguageManager;Z)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->taskAcknowledgement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->taskCompletedAcknowledgement(Ljava/lang/String;)V

    :cond_208
    return-void

    :cond_209
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    const/4 v1, 0x2

    # setter for: Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$402(Lcom/nuance/connect/service/manager/LanguageManager;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/LanguageManager;->DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I
    invoke-static {v3}, Lcom/nuance/connect/service/manager/LanguageManager;->access$400(Lcom/nuance/connect/service/manager/LanguageManager;)I

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    goto :goto_1fa
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

    const-string/jumbo v0, "LanguageListTransaction"

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

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

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/LanguageManager;->finishTransaction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->managerStartComplete()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->notifyLanguageListeners()V

    return-void
.end method

.method public rollback()V
    .registers 1

    return-void
.end method
