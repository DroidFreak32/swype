.class Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategorySubscribeTransaction"
.end annotation


# instance fields
.field private final canceledSubscriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final catDbs:[Ljava/lang/String;

.field private final downloadAfterSubscribe:Z

.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager;

.field private userInitiated:Z


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;[Ljava/lang/String;Z)V
    .locals 5

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->canceledSubscriptions:Ljava/util/Set;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->catDbs:[Ljava/lang/String;

    iput-boolean p3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->downloadAfterSubscribe:Z

    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->catDbs:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "USER_INITIATED"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->userInitiated:Z

    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "SubscribeDatabaseTransaction "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " download: "

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->subscribe()V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->subscribeResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->sendFailMessage()V

    return-void
.end method

.method private removeUnsubscribe()V
    .locals 6

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->catDbs:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v4}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    const-string v5, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v4, v3, v5}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendFailMessage()V
    .locals 4

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->userInitiated:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PROP_CATEGORY_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->catDbs:[Ljava/lang/String;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->implode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private subscribe()V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->removeUnsubscribe()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "starting "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->catDbs:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v3, "subscribe"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v1

    iget-object v3, v1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "77"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->userInitiated:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, v1, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;)V

    iput-object v0, v1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void
.end method

.method private subscribeResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "processSubscribeResponse(): "

    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v3, v0, :cond_4

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "completed subscribe for: "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ". Now downloading all required"

    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ge v2, v1, :cond_2

    :try_start_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "15"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "51"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "10"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v5}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v5

    const-string v6, "URL"

    invoke-virtual {v5, v3, v6, v4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v4}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    const-string v5, "CHECKSUM"

    invoke-virtual {v4, v3, v5, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->canceledSubscriptions:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v4, "subscribeResponse() - subscription canceled: "

    invoke-interface {v1, v4, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    const-string v4, "SUBSCRIBED"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->downloadAfterSubscribe:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    iget-boolean v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->downloadAfterSubscribe:Z

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {v1, v3, v4, v5}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;-><init>(Ljava/lang/String;ZLcom/nuance/connect/service/manager/CategoryManager;)V

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v3, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string v4, "JSON parse Attempting to get category: "

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0

    :catch_1
    move-exception v1

    :try_start_3
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string v4, "Exception attempting to get a category: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    :cond_3
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->rollback()V

    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cancelCategory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->canceledSubscriptions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubscribeTransaction-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->catDbs:[Ljava/lang/String;

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/nuance/connect/util/StringUtils;->implode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

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

.method public onEndProcessing()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->finishTransaction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->canceledSubscriptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v2, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1000(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2, v3, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->canceledSubscriptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1100(Lcom/nuance/connect/service/manager/CategoryManager;)V

    return-void
.end method

.method public rollback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->canceledSubscriptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
