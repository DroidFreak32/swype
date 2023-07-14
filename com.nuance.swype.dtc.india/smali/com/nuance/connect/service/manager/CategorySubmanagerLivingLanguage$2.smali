.class Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;
.super Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

.field typeId:I


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-direct {p0, p2, p3}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;-><init>(Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V

    return-void
.end method


# virtual methods
.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method onCancelAck()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$500(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$300(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$300(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    const-string/jumbo v2, "LAST_UPDATE_FETCHED"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$600(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method onDownloadStatus(I)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    iget v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->typeId:I

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$000(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Not a living language type: "

    iget v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->typeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "; for category: "

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$300(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$000(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Did not find category: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "download"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "total"

    const/16 v3, 0x64

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dictionary"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "CATEGORY_TYPE"

    iget v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->typeId:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    const-string/jumbo v3, "CATEGORY_ID"

    const-string/jumbo v0, "78"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "CATEGORY_LANGUAGE_ID"

    const-string/jumbo v0, "13"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v0, "CATEGORY_TYPE"

    iget v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->typeId:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "CATEGORY_LOCALE"

    const-string/jumbo v0, "98"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "CATEGORY_COUNTRY"

    const-string/jumbo v0, "100"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$600(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method onFailedTransaction(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/connect/util/FileUtils;->getNumberOfLines(Ljava/io/File;)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$300(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    const-string/jumbo v3, "CATEGORY_COUNT"

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$300(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    const-string/jumbo v4, "CATEGORY_COUNT_OLD"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$300(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/sqlite/CategoryDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    const-string/jumbo v3, "CATEGORY_COUNT"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$400(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;Ljava/lang/String;)Z

    :goto_1
    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$000(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "Error attempting to install a Living Language Database: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$000(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "Error attempting to install a Living Language Database: "

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method onTransactionStarted()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->typeId:I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    iget v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->typeId:I

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->access$000(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Not a living language type: "

    iget v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->typeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "; for category: "

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->catDb:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
