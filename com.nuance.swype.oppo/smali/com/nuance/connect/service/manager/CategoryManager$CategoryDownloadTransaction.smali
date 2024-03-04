.class Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CategoryDownloadTransaction"
.end annotation


# instance fields
.field private volatile canceled:Z

.field private final catDb:Ljava/lang/String;

.field private final categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

.field private downloadFilePath:Ljava/lang/String;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private final properties:Ljava/util/HashMap;
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

.field private final sentChecksum:Ljava/lang/String;

.field private final type:I

.field private final unsubscribeOnCancel:Z

.field private final url:Ljava/lang/String;

.field private userInitiated:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 3

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->unsubscribeOnCancel:Z

    invoke-static {p3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "CHECKSUM"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->sentChecksum:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "USER_INITIATED"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->userInitiated:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "starting "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->type:I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "STEP"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "SUBSCRIBED"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->sentChecksum:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Not Subscribed or missing data"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->download()V

    goto :goto_0
.end method

.method static synthetic access$1200(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->downloadResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->sendFailMessage()V

    return-void
.end method

.method private downloadResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadResponse "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->canceled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadResponse canceled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->rollback()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadResponse "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": checksum verification: ["

    const-string v5, "] to ["

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->sentChecksum:Ljava/lang/String;

    const-string v7, "]"

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadResponse "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": file "

    iget-object v5, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->sentChecksum:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "downloadResponse "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": checksum passed"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "STEP"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "FILE_LOCATION"

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "LAST_UPDATE_FETCHED"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v3, "LAST_UPDATE_AVAILABLE"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iput-object v9, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1800(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->install(Ljava/lang/String;)Z

    goto :goto_1

    :pswitch_1
    :try_start_0
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/nuance/connect/util/FileUtils;->getNumberOfLines(Ljava/io/File;)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "CATEGORY_COUNT"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v8

    :goto_2
    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v3, "CATEGORY_COUNT_OLD"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "CATEGORY_COUNT"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1800(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->install(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Error attempting to install a Living Language Database"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Error attempting to install a Living Language Database"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_RESOURCES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1800(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;)Lcom/nuance/connect/service/manager/interfaces/SubManager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->install(Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1900(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PROP_CATEGORY_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "STEP"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    iput-object v9, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "retrying download for: "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDownloadTransactionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendFailMessage()V
    .locals 3

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->userInitiated:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PROP_CATEGORY_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->canceled:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "STEP"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->unsubscribeOnCancel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "UNSUBSCRIBE_PENDING"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "temp"

    const-string v1, ".download"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->downloadFilePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method protected download()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v3, "STEP"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v3, "download"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->url:Ljava/lang/String;

    iput-object v3, v2, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    const-string v3, "GET"

    iput-object v3, v2, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    iput-boolean v0, v2, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    iget-boolean v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->userInitiated:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, v2, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    iput-boolean v1, v2, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    iput-boolean v1, v2, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;)V

    iput-object v0, v2, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void
.end method

.method public getDownloadFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getDownloadTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

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

    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->type:I

    return v0
.end method

.method public onEndProcessing()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->finishTransaction(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->canceled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public rollback()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->catDb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$2000(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Error removing temporary file: "

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    const-string v4, " exists: "

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iput-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    :cond_2
    iput-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->canceled:Z

    return-void
.end method
