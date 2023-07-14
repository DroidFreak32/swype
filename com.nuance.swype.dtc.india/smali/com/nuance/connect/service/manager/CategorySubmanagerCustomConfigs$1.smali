.class Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;
.super Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    invoke-direct {p0, p2, p3}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;-><init>(Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V

    return-void
.end method


# virtual methods
.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method onCancelAck()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$002(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    return-void
.end method

.method onDownloadStatus(I)V
    .locals 0

    return-void
.end method

.method onFailedTransaction(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$002(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "CustomConfigs onSuccess() "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    invoke-static {v0, v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$002(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/nuance/connect/util/StringUtils;->getFileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

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

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "ALL_KEYS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

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
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    invoke-static {}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v5

    const-string/jumbo v6, "Unable to read external config: "

    invoke-interface {v5, v6, v0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "CustomConfigs downloaded file cannout be found"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v3, "Unable to read cloud config for "

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->catDb:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    move-object v1, v2

    goto/16 :goto_1

    :cond_3
    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

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

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "EXT_CONF_ALL_KEYS"

    const-string/jumbo v2, ","

    invoke-static {v3, v2}, Lcom/nuance/connect/util/StringUtils;->listToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_4
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONFIG_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;->access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerCustomConfigs;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "EXT_CONF_ALL_KEYS"

    invoke-interface {v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto :goto_4
.end method

.method onTransactionStarted()V
    .locals 0

    return-void
.end method
