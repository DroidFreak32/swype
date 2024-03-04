.class Lcom/nuance/connect/internal/CategoryServiceInternal$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    const-string v0, "CategoryHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 1

    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1200()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 12

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$5;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->revert()V

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadStopped(I)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    invoke-virtual {v2, v1, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "MESSAGE_HOST_DICTIONARY_DOWNLOAD_FAILED"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PROP_CATEGORY_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    array-length v4, v1

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v5, v1, v2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    iget-object v6, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadFailed(I)V

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "MESSAGE_HOST_SET_DICTIONARIES_STATUS"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v0, "DictionaryList"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_3
    if-ge v8, v11, :cond_8

    aget-object v1, v10, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_status"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_0
    const-string v0, "PROP_RANK"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_5
    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    const-string v2, "PROP_CATEGORY_ID"

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "PROP_NAME"

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "PROP_DESCRIPTION"

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "PROP_LANGUAGE"

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    const-string v2, "PROP_INSTALLEDSTATUS"

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v2, "STATUS_CANCELED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v3, 0x1

    move v2, v3

    :goto_4
    const-string v3, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "STATUS_AVAILABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v2, 0x1

    :cond_6
    :goto_5
    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error Processing Chinese Dictionaries: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$602(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyDictionariesofStatus()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    const-string v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string v2, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "MESSAGE_HOST_DICTIONARY_INSTALL_READY"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "filePath"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v4, v1

    move-object v2, v0

    :goto_7
    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v1

    const-string v5, "com.nuance.connect.DATA_AVAILABLE"

    const-string v6, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v1, v5, v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    invoke-interface {v1, v4, v2, v5, v6}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    const-string v1, "STATUS_INSTALLED"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyDictionariesofStatus()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v3

    :goto_8
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x1

    :try_start_3
    const-string v3, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {v0, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    goto :goto_8

    :catch_1
    move-exception v1

    :goto_9
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "Exception Installing: dict="

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, v0

    move v0, v1

    goto :goto_8

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "dictionary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "CATEGORY_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->isCategoryLivingLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "CATEGORY_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "CATEGORY_LOCALE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CATEGORY_COUNTRY"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->downloadProgress(IIILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    invoke-interface {v0, v6}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadPercentage(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v3, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->isChineseCategoryEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CATEGORY_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "CATEGORY_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CATEGORY_COUNT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v3, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "CATEGORY_LOCALE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CATEGORY_COUNTRY"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionAdded(IIILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_b

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CATEGORY_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "CATEGORY_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CATEGORY_COUNT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v3, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "CATEGORY_LOCALE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CATEGORY_COUNTRY"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionUpdated(IIILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_c

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CATEGORY_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "CATEGORY_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "CATEGORY_LOCALE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CATEGORY_COUNTRY"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionRemoved(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1102(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->updatesAvailable(Z)V

    goto :goto_e

    :catch_2
    move-exception v0

    move-object v0, v2

    goto/16 :goto_9

    :cond_c
    move-object v4, v1

    move-object v2, v0

    goto/16 :goto_7

    :cond_d
    move v2, v3

    goto/16 :goto_4

    :cond_e
    move v2, v3

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    return-void
.end method
