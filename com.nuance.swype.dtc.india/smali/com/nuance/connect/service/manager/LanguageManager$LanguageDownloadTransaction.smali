.class Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/LanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageDownloadTransaction"
.end annotation


# static fields
.field private static final FREESPACE_MIN_SIZE:I = 0x19000


# instance fields
.field private volatile canceled:Z

.field private downloadFilePath:Ljava/lang/String;

.field private volatile failed:Z

.field private volatile failureType:I

.field private final lang:Ljava/lang/String;

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

.field final synthetic this$0:Lcom/nuance/connect/service/manager/LanguageManager;

.field private transactionId:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-direct {p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    iput v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->failureType:I

    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "LanguageDownloadTransaction language: "

    invoke-interface {v0, v1, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Language is not available for download! ("

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string/jumbo v1, "URL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->url:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "unable to download language pack, no URL found for pack "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string/jumbo v1, "FILE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadLanguagePack()V

    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    const-string/jumbo v2, "PROP_DOWNLOAD_PERCENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string/jumbo v1, "STEP"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string/jumbo v2, "FILE_LOCATION"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string/jumbo v1, "STEP"

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadLanguagePack()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$1002(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->failureType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object p1
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->canceled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->failed:Z

    return p1
.end method

.method private downloadLanguagePack()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->canceled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ackLanguagePack canceled: "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "LanguageDownloadTransaction "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " download now"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProps(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    const-string/jumbo v1, "downloadLangPack"

    sget-object v2, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    new-instance v3, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;

    invoke-direct {v3, p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;-><init>(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/manager/LanguageManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Lcom/nuance/connect/comm/ResponseCallback;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    const-string/jumbo v1, "GET"

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->method:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->hasBody:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->handleIOExceptionInConnector:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v5, v0, Lcom/nuance/connect/comm/Command;->notifyDownloadStatus:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v5, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "13"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "4"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private verifyWithHost()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string/jumbo v1, "STEP"

    const-string/jumbo v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "filePath"

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string/jumbo v3, "FILE_LOCATION"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string/jumbo v2, "FILE_LOCATION"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string/jumbo v3, "FILE_LOCATION"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Something went wrong, file does not exist for "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    const-string/jumbo v3, " file: "

    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string/jumbo v5, "FILE_LOCATION"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    iget v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->failureType:I

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/service/manager/LanguageManager;->access$1600(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "LanguageDownloadTransaction "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ": cancel called"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->canceled:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    goto :goto_0
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "temp"

    const-string/jumbo v1, ".download"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/LanguageManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string/jumbo v1, "FILE_LOCATION"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "temp file for lang: "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDownloadFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$1700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public onEndProcessing()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/LanguageManager;->finishTransaction(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->canceled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->failed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    iget v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->failureType:I

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/service/manager/LanguageManager;->access$1600(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->verifyWithHost()V

    goto :goto_0
.end method

.method public onTransactionOfflineQueued()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTransactionRejected(I)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onTransactionRejected("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ") "

    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->failed:Z

    iput p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->failureType:I

    return-void
.end method

.method public rollback()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    const-string/jumbo v2, "FILE_LOCATION"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    const-string/jumbo v2, "FILE_LOCATION"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method
