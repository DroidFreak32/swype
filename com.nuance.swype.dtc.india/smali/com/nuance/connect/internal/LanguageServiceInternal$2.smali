.class Lcom/nuance/connect/internal/LanguageServiceInternal$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/LanguageServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "LanguageDLHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    invoke-static {}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$1100()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$1100()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$1100()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 8

    const/4 v1, 0x0

    const/high16 v7, -0x80000000

    sget-object v0, Lcom/nuance/connect/internal/LanguageServiceInternal$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$300(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE_HOST_SET_LANGUAGES_STATUS"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v1, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$400(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$300(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "MESSAGE_HOST_LANGUAGE_INSTALL_READY"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "DEFAULT_KEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "filePath"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0, v3}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$500(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$600(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    iget-object v5, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v5}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->getVersion()I

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$800(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v4}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v4

    sget-object v5, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_INSTALLED:Lcom/nuance/connect/internal/common/InternalMessages;

    const/high16 v6, -0x80000000

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->getVersion()I

    move-result v0

    invoke-interface {v4, v5, v3, v6, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->notifyCallbacksOfStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v4}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$300(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v4

    const-string/jumbo v5, "Exception Installing: lang="

    const-string/jumbo v6, " message="

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v3, v6, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_INSTALLED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v4, v3, v1, v7}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadFailed(I)V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v4, "(Internal) Not successful"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "PROP_LANGUAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v3, v2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$500(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "PROP_DOWNLOAD_PERCENT"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$600(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadPercentage(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v1, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$900(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "PROP_LANGUAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v2, v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$500(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v3}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$300(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string/jumbo v4, "MESSAGE_HOST_LANGUAGE_DOWNLOAD_FAILED: "

    invoke-interface {v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    iget-object v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v3}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadFailed(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$500(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$600(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$300(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v3, "MESSAGE_HOST_LANGUAGE_DOWNLOAD_CANCEL_ACK: "

    invoke-interface {v0, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    iget-object v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v3}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadStopped(I)V

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$1000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$300(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v3, "redownload was requested for canceled language, redownloading: "

    invoke-interface {v0, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_2
    iget-object v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$1000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    invoke-virtual {v3, v2, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadLanguage(ILcom/nuance/connect/api/LanguageService$DownloadCallback;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$1000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$300(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "Error Attempting to Redownload with message: "

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    return-void
.end method
