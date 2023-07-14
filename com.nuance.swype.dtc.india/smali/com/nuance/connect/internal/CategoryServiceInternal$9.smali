.class Lcom/nuance/connect/internal/CategoryServiceInternal$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "CategoryHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 1

    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3700()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 12

    const/4 v5, 0x3

    const/high16 v7, -0x80000000

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->revert()V

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0, v5}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadStopped(I)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2000(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    invoke-interface {v0, v5}, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;->downloadStopped(I)V

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v3, v1, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->downloadCatalogItem(Ljava/lang/String;Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :pswitch_2
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE_HOST_CATEGORY_DOWNLOAD_FAILED"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "PROP_CATEGORY_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    array-length v3, v1

    :goto_2
    if-ge v8, v3, :cond_0

    aget-object v0, v1, v8

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    :try_start_8
    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadFailed(I)V

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    new-array v0, v8, [Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :cond_7
    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v4, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2000(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    :try_start_a
    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v0, :cond_5

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;->downloadFailed(I)V

    goto :goto_3

    :catchall_5
    move-exception v0

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    :pswitch_3
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "MESSAGE_HOST_ON_DICTIONARIES_UPDATED"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_DICTIONARIES_UPDATED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->process(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "MESSAGE_HOST_DICTIONARY_INSTALL_READY"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :try_start_c
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    move-result-object v2

    :try_start_d
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "filePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v1

    const-string/jumbo v5, "com.nuance.connect.DATA_AVAILABLE"

    const-string/jumbo v6, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v1, v5, v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :try_start_e
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    :try_start_f
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    invoke-interface {v1, v3, v2, v5, v6}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    const-string/jumbo v1, "STATUS_INSTALLED"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyDictionariesofStatus()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :goto_4
    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, v2, v4, v7}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_5
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "Exception Installing: dict="

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v8, v4

    move-object v2, v1

    goto :goto_4

    :cond_8
    :try_start_12
    const-string/jumbo v1, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    move v8, v4

    goto :goto_4

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "download"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v1, "dictionary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "CATEGORY_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2500(Lcom/nuance/connect/internal/CategoryServiceInternal;I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "CATEGORY_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "CATEGORY_LOCALE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CATEGORY_COUNTRY"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v7, v8, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-virtual {v0, v7}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    array-length v10, v7

    :goto_6
    if-ge v8, v10, :cond_9

    aget-object v0, v7, v8

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->downloadProgress(IIILjava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_13
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-eqz v0, :cond_0

    invoke-interface {v0, v6}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadPercentage(I)V

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    throw v0

    :pswitch_6
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

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

    :pswitch_7
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "CATEGORY_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "CATEGORY_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "CATEGORY_COUNT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v3, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "CATEGORY_LOCALE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CATEGORY_COUNTRY"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v7, v8, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-virtual {v0, v7}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    array-length v9, v7

    :goto_7
    if-ge v8, v9, :cond_0

    aget-object v0, v7, v8

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionAdded(IIILjava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "CATEGORY_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "CATEGORY_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "CATEGORY_COUNT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v3, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "CATEGORY_LOCALE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CATEGORY_COUNTRY"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v7, v8, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-virtual {v0, v7}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    array-length v9, v7

    :goto_8
    if-ge v8, v9, :cond_0

    aget-object v0, v7, v8

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionUpdated(IIILjava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "CATEGORY_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "CATEGORY_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "CATEGORY_LOCALE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CATEGORY_COUNTRY"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v6, v8, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-virtual {v0, v6}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    array-length v7, v6

    :goto_9
    if-ge v8, v7, :cond_0

    aget-object v0, v6, v8

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionRemoved(IIILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v8, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    array-length v2, v0

    :goto_a
    if-ge v8, v2, :cond_0

    aget-object v3, v0, v8

    invoke-interface {v3, v1}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->updatesAvailable(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :pswitch_d
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "MESSAGE_HOST_ON_CATALOGS_CHANGED"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_15
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "catalogCategoryList"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v3

    const-string/jumbo v4, "CATEGORY_SERVICE_CATALOG_LABELS"

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :try_start_16
    invoke-static {v0}, Lcom/nuance/connect/util/MapMarshal;->toStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :goto_b
    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "catalogList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, ""

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "catalogList"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "catalogList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-static {v0, v2}, Lcom/nuance/connect/util/StringUtils;->stringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_c
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string/jumbo v3, "affected categories: "

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    if-eqz v1, :cond_b

    sget-object v2, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, v1

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getBundledBaseCatalogItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/CatalogService$CatalogItem;

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :catch_1
    move-exception v3

    :try_start_18
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string/jumbo v4, "Could not process the catalog labels list: "

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    throw v0

    :cond_a
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v1, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1600(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    goto/16 :goto_d

    :cond_c
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3100(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3200(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->process(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE_HOST_CATALOG_DOWNLOAD_PROGRESS"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "download"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "sku"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_19
    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;->downloadPercentage(I)V

    :cond_e
    monitor-exit v2

    goto/16 :goto_0

    :catchall_9
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    throw v0

    :pswitch_f
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CATALOG_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->isCatalogEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_10
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE_HOST_CATALOG_LOCATION_CHANGED"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "LOCATION_COUNTRY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LOCATION_TIME_EPOC"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v5

    const-string/jumbo v6, "MESSAGE_HOST_CATALOG_LOCATION_CHANGED old: "

    iget-object v7, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v7}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, " new: "

    const-string/jumbo v9, "LOCATION_COUNTRY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v7, v8, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    move-result-object v0

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0xa

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->processDelayed(Ljava/lang/Runnable;JZ)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    move-result-object v0

    sget-object v4, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->removeMessages(I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    move-result-object v0

    sget-object v4, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v4, v6, v7}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->processDelayed(IJ)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3400(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_11
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "MESSAGE_HOST_CATALOG_INSTALL_READY"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v2, ""

    :try_start_1a
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    move-result-object v3

    :try_start_1b
    const-string/jumbo v1, "sku"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4

    move-result-object v1

    :try_start_1c
    const-string/jumbo v2, "filePath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5

    move-result-object v0

    move-object v2, v3

    move-object v3, v0

    :goto_f
    :try_start_1d
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    const-string/jumbo v5, "com.nuance.connect.DATA_AVAILABLE"

    const-string/jumbo v6, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v0, v5, v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_2

    :try_start_1e
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;

    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    if-eqz v3, :cond_f

    if-eqz v0, :cond_f

    :try_start_1f
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    invoke-interface {v0, v3, v2, v5, v6}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v3, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3500(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "STEP"

    const/4 v6, 0x7

    invoke-virtual {v0, v3, v5, v6}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3100(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_2

    move v0, v8

    :goto_10
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, v2, v4, v7}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    goto/16 :goto_0

    :catchall_a
    move-exception v0

    :try_start_20
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    :try_start_21
    throw v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2

    :catch_2
    move-exception v0

    :goto_11
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string/jumbo v5, "Exception Installing: sku="

    invoke-interface {v3, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v3, "Exception: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v4

    goto :goto_10

    :cond_f
    :try_start_22
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v3, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3500(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "STEP"

    const/16 v6, 0x8

    invoke-virtual {v0, v3, v5, v6}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_2

    move v0, v4

    goto :goto_10

    :catch_3
    move-exception v0

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_11

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_11

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_11

    :catch_6
    move-exception v0

    goto/16 :goto_5

    :cond_10
    move-object v3, v1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_f

    :cond_11
    move-object v0, v1

    goto/16 :goto_c

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    return-void
.end method
