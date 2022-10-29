.class Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;
.super Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V
    .registers 4

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    invoke-direct {p0, p2, p3}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;-><init>(Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V

    return-void
.end method


# virtual methods
.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .registers 2

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method onCancelAck()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$002(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    return-void
.end method

.method onDownloadStatus(I)V
    .registers 2

    return-void
.end method

.method onFailedTransaction(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$002(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .registers 11

    const/4 v2, 0x0

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "CustomConfigs onSuccess() "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    # setter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->downloadTransaction:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;
    invoke-static {v0, v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$002(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-static {v0}, Lcom/nuance/connect/util/StringUtils;->getFileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_20
    if-eqz v1, :cond_c8

    const-string/jumbo v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    :try_start_2b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_30} :catch_b7

    move-object v1, v0

    :goto_31
    if-eqz v1, :cond_136

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v5, "EXT_CONF_ALL_KEYS"

    invoke-interface {v0, v5, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-static {v0, v2}, Lcom/nuance/connect/util/StringUtils;->stringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "ALL_KEYS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    :try_start_6e
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_59

    const-string/jumbo v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_59

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v6}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "EXT_CONF_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_9d} :catch_9e

    goto :goto_59

    :catch_9e
    move-exception v5

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v5

    const-string/jumbo v6, "Unable to read external config: "

    invoke-interface {v5, v6, v0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_59

    :cond_aa
    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "CustomConfigs downloaded file cannout be found"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_20

    :catch_b7
    move-exception v0

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v3, "Unable to read cloud config for "

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->catDb:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c8
    move-object v1, v2

    goto/16 :goto_31

    :cond_cb
    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "EXT_CONF_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto :goto_d2

    :cond_fc
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_137

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "EXT_CONF_ALL_KEYS"

    const-string/jumbo v2, ","

    invoke-static {v3, v2}, Lcom/nuance/connect/util/StringUtils;->listToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_119
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_12b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_136

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_136

    :cond_12b
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONFIG_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_136
    return-void

    :cond_137
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "EXT_CONF_ALL_KEYS"

    invoke-interface {v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto :goto_119
.end method

.method onTransactionStarted()V
    .registers 1

    return-void
.end method
