.class Lcom/nuance/connect/internal/CategoryServiceInternal$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "CategoryHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .registers 2

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->MESSAGE_IDS:[I
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3700()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 15

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

    packed-switch v0, :pswitch_data_6c6

    :cond_17
    :goto_17
    :pswitch_17
    return-void

    :pswitch_18
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
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

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->revert()V

    :cond_48
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_4f
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_b8

    if-eqz v0, :cond_61

    invoke-interface {v0, v5}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadStopped(I)V

    :cond_61
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->getSKUFromCategoryId(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2000(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    :try_start_6e
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;

    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_bb

    if-eqz v0, :cond_80

    invoke-interface {v0, v5}, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;->downloadStopped(I)V

    :cond_80
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    :try_start_87
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    monitor-exit v3
    :try_end_94
    .catchall {:try_start_87 .. :try_end_94} :catchall_be

    if-eqz v0, :cond_9b

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v3, v1, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V

    :cond_9b
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_a2
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogRedownloadCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;

    monitor-exit v1
    :try_end_af
    .catchall {:try_start_a2 .. :try_end_af} :catchall_c1

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->downloadCatalogItem(Ljava/lang/String;Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;)V

    goto/16 :goto_17

    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0

    :catchall_bb
    move-exception v0

    :try_start_bc
    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v0

    :catchall_be
    move-exception v0

    :try_start_bf
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v0

    :catchall_c1
    move-exception v0

    :try_start_c2
    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    throw v0

    :pswitch_c4
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
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

    if-eqz v0, :cond_119

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_ee
    array-length v3, v1

    :goto_ef
    if-ge v8, v3, :cond_17

    aget-object v0, v1, v8

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_120

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    :try_start_106
    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadFailed(I)V

    monitor-exit v4
    :try_end_116
    .catchall {:try_start_106 .. :try_end_116} :catchall_11d

    :cond_116
    :goto_116
    add-int/lit8 v8, v8, 0x1

    goto :goto_ef

    :cond_119
    new-array v0, v8, [Ljava/lang/String;

    move-object v1, v0

    goto :goto_ee

    :catchall_11d
    move-exception v0

    :try_start_11e
    monitor-exit v4
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    throw v0

    :cond_120
    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->getSKUFromCategoryId(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2000(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_116

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;
    invoke-static {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_116

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;
    invoke-static {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    :try_start_13b
    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;
    invoke-static {v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;

    monitor-exit v4
    :try_end_148
    .catchall {:try_start_13b .. :try_end_148} :catchall_14e

    if-eqz v0, :cond_116

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;->downloadFailed(I)V

    goto :goto_116

    :catchall_14e
    move-exception v0

    :try_start_14f
    monitor-exit v4
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    throw v0

    :pswitch_151
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "MESSAGE_HOST_ON_DICTIONARIES_UPDATED"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_DICTIONARIES_UPDATED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->process(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_16c
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "MESSAGE_HOST_DICTIONARY_INSTALL_READY"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :try_start_176
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_180} :catch_6ba

    move-result-object v2

    :try_start_181
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "filePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v1

    const-string/jumbo v5, "com.nuance.connect.DATA_AVAILABLE"

    const-string/jumbo v6, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v1, v5, v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_1ae} :catch_1fd

    :try_start_1ae
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    monitor-exit v5
    :try_end_1bb
    .catchall {:try_start_1ae .. :try_end_1bb} :catchall_1fa

    if-eqz v3, :cond_20c

    if-eqz v1, :cond_20c

    :try_start_1bf
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_20c

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
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
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1e7} :catch_1fd

    :goto_1e7
    if-eqz v8, :cond_17

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, v2, v4, v7}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    goto/16 :goto_17

    :catchall_1fa
    move-exception v0

    :try_start_1fb
    monitor-exit v5
    :try_end_1fc
    .catchall {:try_start_1fb .. :try_end_1fc} :catchall_1fa

    :try_start_1fc
    throw v0
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_1fd} :catch_1fd

    :catch_1fd
    move-exception v0

    move-object v1, v2

    :goto_1ff
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "Exception Installing: dict="

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v8, v4

    move-object v2, v1

    goto :goto_1e7

    :cond_20c
    :try_start_20c
    const-string/jumbo v1, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_212} :catch_1fd

    move v8, v4

    goto :goto_1e7

    :pswitch_214
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

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->isCategoryLivingLanguage(I)Z
    invoke-static {v1, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2500(Lcom/nuance/connect/internal/CategoryServiceInternal;I)Z

    move-result v1

    if-eqz v1, :cond_26b

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

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v7, v8, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-virtual {v0, v7}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    array-length v10, v7

    :goto_261
    if-ge v8, v10, :cond_26b

    aget-object v0, v7, v8

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->downloadProgress(IIILjava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_261

    :cond_26b
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_272
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    monitor-exit v1
    :try_end_27f
    .catchall {:try_start_272 .. :try_end_27f} :catchall_286

    if-eqz v0, :cond_17

    invoke-interface {v0, v6}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadPercentage(I)V

    goto/16 :goto_17

    :catchall_286
    move-exception v0

    :try_start_287
    monitor-exit v1
    :try_end_288
    .catchall {:try_start_287 .. :try_end_288} :catchall_286

    throw v0

    :pswitch_289
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
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

    goto/16 :goto_17

    :pswitch_2b0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_17

    :pswitch_2d0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->sendMaxLimit:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->sendMaxLimit:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_17

    :pswitch_2f0
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

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v7, v8, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-virtual {v0, v7}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    array-length v9, v7

    :goto_32e
    if-ge v8, v9, :cond_17

    aget-object v0, v7, v8

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionAdded(IIILjava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_32e

    :pswitch_338
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

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v7, v8, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-virtual {v0, v7}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    array-length v9, v7

    :goto_376
    if-ge v8, v9, :cond_17

    aget-object v0, v7, v8

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionUpdated(IIILjava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_376

    :pswitch_380
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

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v6, v8, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-virtual {v0, v6}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    array-length v7, v6

    :goto_3b7
    if-ge v8, v7, :cond_17

    aget-object v0, v6, v8

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionRemoved(IIILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3b7

    :pswitch_3c1
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v8, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/LivingLanguageService$Callback;

    array-length v2, v0

    :goto_3db
    if-ge v8, v2, :cond_17

    aget-object v3, v0, v8

    invoke-interface {v3, v1}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->updatesAvailable(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3db

    :pswitch_3e5
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "MESSAGE_HOST_ON_CATALOGS_CHANGED"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_3f6
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "catalogCategoryList"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v3

    const-string/jumbo v4, "CATEGORY_SERVICE_CATALOG_LABELS"

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_41a
    .catchall {:try_start_3f6 .. :try_end_41a} :catchall_4d2

    :try_start_41a
    invoke-static {v0}, Lcom/nuance/connect/util/MapMarshal;->toStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogLabelList:Ljava/util/Map;
    invoke-static {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_427
    .catch Ljava/lang/Exception; {:try_start_41a .. :try_end_427} :catch_4c5
    .catchall {:try_start_41a .. :try_end_427} :catchall_4d2

    :goto_427
    :try_start_427
    monitor-exit v2
    :try_end_428
    .catchall {:try_start_427 .. :try_end_428} :catchall_4d2

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "catalogList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c3

    const-string/jumbo v0, ""

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "catalogList"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c3

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "catalogList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-static {v0, v2}, Lcom/nuance/connect/util/StringUtils;->stringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_45b
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string/jumbo v3, "affected categories: "

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_502

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_46b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    if-eqz v1, :cond_4ef

    sget-object v2, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d5

    move-object v2, v1

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getBundledBaseCatalogItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_49c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/CatalogService$CatalogItem;

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49c

    :catch_4c5
    move-exception v3

    :try_start_4c6
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string/jumbo v4, "Could not process the catalog labels list: "

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_427

    :catchall_4d2
    move-exception v0

    monitor-exit v2
    :try_end_4d4
    .catchall {:try_start_4c6 .. :try_end_4d4} :catchall_4d2

    throw v0

    :cond_4d5
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->lazyLoadCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4ef
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->getCatalogItem(Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
    invoke-static {v1, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1600(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    goto/16 :goto_46b

    :cond_4f6
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3100(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackOfSkusChanged()V
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3200(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    goto/16 :goto_17

    :cond_502
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->process(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_513
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
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

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;
    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_536
    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;
    invoke-static {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_551

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;
    invoke-static {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;->downloadPercentage(I)V

    :cond_551
    monitor-exit v2

    goto/16 :goto_17

    :catchall_554
    move-exception v0

    monitor-exit v2
    :try_end_556
    .catchall {:try_start_536 .. :try_end_556} :catchall_554

    throw v0

    :pswitch_557
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
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

    goto/16 :goto_17

    :pswitch_572
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
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

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v5

    const-string/jumbo v6, "MESSAGE_HOST_CATALOG_LOCATION_CHANGED old: "

    iget-object v7, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->getCurrentDeviceCountry()Ljava/lang/String;
    invoke-static {v7}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, " new: "

    const-string/jumbo v9, "LOCATION_COUNTRY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v7, v8, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    move-result-object v0

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->processCatalogSKUListAvailable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0xa

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->processDelayed(Ljava/lang/Runnable;JZ)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    move-result-object v0

    sget-object v4, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->removeMessages(I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->handlerThread:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;

    move-result-object v0

    sget-object v4, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v4, v6, v7}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->processDelayed(IJ)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->saveDeviceCountry(Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3400(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;J)V

    goto/16 :goto_17

    :pswitch_5e0
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "MESSAGE_HOST_CATALOG_INSTALL_READY"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v2, ""

    :try_start_5ed
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6bd

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5f9
    .catch Ljava/lang/Exception; {:try_start_5ed .. :try_end_5f9} :catch_6ae

    move-result-object v3

    :try_start_5fa
    const-string/jumbo v1, "sku"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_600
    .catch Ljava/lang/Exception; {:try_start_5fa .. :try_end_600} :catch_6b3

    move-result-object v1

    :try_start_601
    const-string/jumbo v2, "filePath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_607
    .catch Ljava/lang/Exception; {:try_start_601 .. :try_end_607} :catch_6b7

    move-result-object v0

    move-object v2, v3

    move-object v3, v0

    :goto_60a
    :try_start_60a
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    const-string/jumbo v5, "com.nuance.connect.DATA_AVAILABLE"

    const-string/jumbo v6, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v0, v5, v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5
    :try_end_620
    .catch Ljava/lang/Exception; {:try_start_60a .. :try_end_620} :catch_67d

    :try_start_620
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogDownloadCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$2100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;

    monitor-exit v5
    :try_end_62d
    .catchall {:try_start_620 .. :try_end_62d} :catchall_67a

    if-eqz v3, :cond_698

    if-eqz v0, :cond_698

    :try_start_631
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_698

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    invoke-interface {v0, v3, v2, v5, v6}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3500(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "STEP"

    const/4 v6, 0x7

    invoke-virtual {v0, v3, v5, v6}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyCatalogCallbackofItemsChanged()V
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3100(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    :try_end_666
    .catch Ljava/lang/Exception; {:try_start_631 .. :try_end_666} :catch_67d

    move v0, v8

    :goto_667
    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, v2, v4, v7}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    goto/16 :goto_17

    :catchall_67a
    move-exception v0

    :try_start_67b
    monitor-exit v5
    :try_end_67c
    .catchall {:try_start_67b .. :try_end_67c} :catchall_67a

    :try_start_67c
    throw v0
    :try_end_67d
    .catch Ljava/lang/Exception; {:try_start_67c .. :try_end_67d} :catch_67d

    :catch_67d
    move-exception v0

    :goto_67e
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string/jumbo v5, "Exception Installing: sku="

    invoke-interface {v3, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v3, "Exception: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v4

    goto :goto_667

    :cond_698
    :try_start_698
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->database:Lcom/nuance/connect/sqlite/CategoryDatabase;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$9;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdFromSKU(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$3500(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "STEP"

    const/16 v6, 0x8

    invoke-virtual {v0, v3, v5, v6}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_6ac
    .catch Ljava/lang/Exception; {:try_start_698 .. :try_end_6ac} :catch_67d

    move v0, v4

    goto :goto_667

    :catch_6ae
    move-exception v0

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_67e

    :catch_6b3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_67e

    :catch_6b7
    move-exception v0

    move-object v2, v3

    goto :goto_67e

    :catch_6ba
    move-exception v0

    goto/16 :goto_1ff

    :cond_6bd
    move-object v3, v1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_60a

    :cond_6c3
    move-object v0, v1

    goto/16 :goto_45b

    :pswitch_data_6c6
    .packed-switch 0x1
        :pswitch_18
        :pswitch_c4
        :pswitch_151
        :pswitch_16c
        :pswitch_214
        :pswitch_289
        :pswitch_17
        :pswitch_2b0
        :pswitch_2d0
        :pswitch_2f0
        :pswitch_338
        :pswitch_380
        :pswitch_3c1
        :pswitch_3e5
        :pswitch_513
        :pswitch_557
        :pswitch_572
        :pswitch_5e0
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .registers 1

    return-void
.end method
