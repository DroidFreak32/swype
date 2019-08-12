.class public abstract Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CategorySubscribeDownloadTransaction"
.end annotation


# static fields
.field public static final DOWNLOAD_FAILED_HTTP:I = 0x0

.field public static final FAILURE_DISK_FULL:I = 0x6

.field public static final FAILURE_UNKNOWN:I = 0x7


# instance fields
.field private volatile canceled:Z

.field private final catDb:Ljava/lang/String;

.field private final categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

.field private downloadFilePath:Ljava/lang/String;

.field private volatile failureMessage:Ljava/lang/String;

.field private volatile failureType:I

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private final originalProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final props:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile rolledBack:Z

.field private sentChecksum:Ljava/lang/String;

.field private final type:I

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 3

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->originalProperties:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->catDb:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->originalProperties:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->type:I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "CategorySubscribeDownloadTransaction "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->subscribe()V

    return-void
.end method

.method static synthetic access$2300(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->subscribeResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I

    return p1
.end method

.method static synthetic access$2802(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureMessage:Ljava/lang/String;

    return-object p1
.end method

.method private downloadResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 8

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadResponse "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->canceled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadResponse canceled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rollback()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadResponse "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": checksum verification: ["

    const-string v5, "] to ["

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->sentChecksum:Ljava/lang/String;

    const-string v7, "]"

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadResponse "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": file "

    iget-object v5, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->sentChecksum:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadResponse "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": checksum passed"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "STEP"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "FILE_LOCATION"

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "LAST_UPDATE_FETCHED"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v3, "LAST_UPDATE_AVAILABLE"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I

    const-string v0, "Checksum does not match expected checksum"

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rollback()V

    goto :goto_0
.end method

.method private subscribe()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "starting "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->onTransactionStarted()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v2, "subscribe"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v1

    iget-object v2, v1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "77"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)V

    iput-object v0, v1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void
.end method

.method private subscribeResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processSubscribeResponse(): "

    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v3, v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->canceled:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "completed subscribe for: "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ". Now downloading all required"

    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Category ID does not match!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "JSON parse exception attempting to get category: "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rollback()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v1, "51"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->url:Ljava/lang/String;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->sentChecksum:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "URL"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "CHECKSUM"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->sentChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "SUBSCRIBED"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->download()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Exception attempting to get a category: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x7

    iput v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rollback()V

    goto :goto_0

    :cond_2
    iput v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I

    const-string v0, "Server returned an unexpected response."

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rollback()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->canceled:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    :cond_0
    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "temp"

    const-string v1, ".download"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "FILE_LOCATION"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->catDb:Ljava/lang/String;

    const-string v2, "FILE_LOCATION"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "FILE_LOCATION"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method protected download()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->canceled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rollback()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "STEP"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "SUBSCRIBED"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->sentChecksum:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I

    const-string v0, "Unable to complete download due to disk full error."

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Not Subscribed or missing data"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rollback()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    const-string v1, "STEP"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v1, "download"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto :goto_0
.end method

.method public getDownloadFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CategorySubscribeDownloadTransaction-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->type:I

    return v0
.end method

.method abstract onCancelAck()V
.end method

.method abstract onDownloadStatus(I)V
.end method

.method public onEndProcessing()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->finishTransaction(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->canceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rolledBack:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->catDb:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->props:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->onSuccess(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->canceled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->onCancelAck()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rolledBack:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureMessage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->onFailedTransaction(ILjava/lang/String;)V

    goto :goto_0
.end method

.method abstract onFailedTransaction(ILjava/lang/String;)V
.end method

.method abstract onSuccess(Ljava/lang/String;)V
.end method

.method abstract onTransactionStarted()V
.end method

.method public rollback()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->canceled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Error removing temporary file: "

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    const-string v4, " exists: "

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iput-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    :cond_2
    iput-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rolledBack:Z

    return-void
.end method
